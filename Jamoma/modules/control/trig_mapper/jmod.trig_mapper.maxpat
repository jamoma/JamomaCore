{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 339.0, 26.0, 600.0, 70.0 ],
		"bglocked" : 0,
		"defrect" : [ 137.0, 80.0, 1238.0, 641.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "ramp_com",
					"text" : "ramp (s) :",
					"patching_rect" : [ 488.0, 47.0, 62.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 495.0, 48.0, 62.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_ramp",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 839.0, 184.0, 35.0, 19.0 ],
					"presentation" : 1,
					"triscale" : 0.9,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 559.0, 48.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 306.0, 435.0, 103.0, 19.0 ],
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 33.0, 46.0, 129.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "/control", ",", "/mouse", ",", "/limiter~", ",", "/tmapper" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "in_com",
					"text" : "data :",
					"patching_rect" : [ 369.0, 22.0, 39.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 410.0, 23.0, 39.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "in_value",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 850.0, 705.0, 35.0, 19.0 ],
					"presentation" : 1,
					"triscale" : 0.9,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 451.0, 23.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "out_com",
					"text" : "data :",
					"patching_rect" : [ 370.0, 45.0, 39.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 410.0, 47.0, 39.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_value",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 847.0, 439.0, 35.0, 19.0 ],
					"presentation" : 1,
					"triscale" : 0.9,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 451.0, 48.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 331.0, 375.0, 103.0, 19.0 ],
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-80",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 33.0, 21.0, 129.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "/control", ",", "/mouse", ",", "/limiter~", ",", "/tmapper" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "in_slash",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 104.0, 21.0, 15.0, 19.0 ],
					"menumode" : 1,
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 125.0, 21.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : "."
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "module_out#",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 171.0, 518.0, 20.0, 19.0 ],
					"presentation" : 1,
					"triscale" : 0.9,
					"maximum" : 2,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 141.0, 46.0, 20.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"mouseup" : 1,
					"minimum" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "out_slash",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 104.0, 41.0, 15.0, 19.0 ],
					"menumode" : 1,
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 126.0, 46.0, 15.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : "."
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "wait_time",
					"text" : "jcom.parameter time/wait @repetitions/allow 1 @type msg_float @description \"Wait time before sending the output data\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 435.0, 215.0, 350.0, 30.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "repeat_time",
					"text" : "jcom.parameter time/repeat @repetitions/allow 1 @type msg_float @description \"minimum time between two repetitions\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 435.0, 140.0, 350.0, 30.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 92.0, 211.0, 16.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "wait",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 435.0, 195.0, 35.0, 19.0 ],
					"presentation" : 1,
					"triscale" : 0.9,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 354.0, 0.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "tgate",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 435.0, 119.0, 35.0, 19.0 ],
					"presentation" : 1,
					"triscale" : 0.9,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 478.0, 0.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Repeat time (s) :",
					"patching_rect" : [ 387.0, 3.0, 95.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 387.0, 0.0, 95.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 105.0, 245.0, 45.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Wait time (s) :",
					"patching_rect" : [ 277.0, 3.0, 83.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 277.0, 0.0, 83.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p show_hide",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 993.0, 583.0, 71.0, 18.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 78.0, 139.0, 993.0, 332.0 ],
						"bglocked" : 0,
						"defrect" : [ 78.0, 139.0, 993.0, 332.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 38.0, 43.0, 35.0, 18.0 ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show in_message, script hide in_value, script bringtofront in_message, script show in_com, script bringtofront in_com",
									"linecount" : 5,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 202.0, 143.0, 64.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 3 4 2",
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 10.0, 70.0, 255.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 347.0, 45.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 43.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scheduler",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"patching_rect" : [ 765.0, 55.0, 50.0, 29.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel queue scheduler none",
									"linecount" : 2,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"patching_rect" : [ 770.0, 110.0, 100.0, 31.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show out_ramp, script bringtofront out_ramp, script show ramp_com, script bringtofront ramp_com",
									"linecount" : 3,
									"outlettype" : [ "" ],
									"patching_rect" : [ 770.0, 165.0, 230.0, 40.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_ramp",
									"outlettype" : [ "" ],
									"patching_rect" : [ 770.0, 85.0, 73.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 345.0, 298.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide out_ramp, script hide ramp_com",
									"outlettype" : [ "" ],
									"patching_rect" : [ 795.0, 220.0, 229.0, 16.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 565.0, 255.0, 24.0, 19.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 595.0, 255.0, 24.0, 19.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"patching_rect" : [ 665.0, 280.0, 100.0, 19.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide out_message, script hide out_value, script hide out_com",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.0, 250.0, 187.0, 28.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide out_message, script show out_value, script bringtofront out_value, script show out_com, script bringtofront out_com, script show out_ramp, script bringtofront out_ramp, script show ramp_com, script bringtofront ramp_com",
									"linecount" : 4,
									"outlettype" : [ "" ],
									"patching_rect" : [ 384.0, 101.0, 352.0, 52.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show out_message, script hide out_value, script bringtofront out_message, script show out_com, script bringtofront in_com, script hide out_ramp, script hide ramp_com",
									"linecount" : 3,
									"outlettype" : [ "" ],
									"patching_rect" : [ 410.0, 175.0, 334.0, 40.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 3 4 2",
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 345.0, 65.0, 195.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 12.0, 286.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide in_message, script hide in_value, script hide in_com",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 226.0, 173.0, 28.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide in_message, script show in_value, script bringtofront in_value, script show in_com, script bringtofront in_com",
									"linecount" : 3,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 105.0, 230.0, 40.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 211.0, 21.0, 211.0 ]
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
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 3 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 4 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 3 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 4 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 419.5, 238.0, 354.0, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 393.5, 231.0, 354.0, 231.0 ]
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
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 3 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-11", 4 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 205.5, 282.0, 21.0, 282.0 ]
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
					"maxclass" : "comment",
					"text" : "action :",
					"patching_rect" : [ 236.0, 44.0, 47.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 277.0, 47.0, 47.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "action :",
					"patching_rect" : [ 236.0, 22.0, 47.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 277.0, 23.0, 47.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_value[3]",
					"text" : "jcom.parameter out/ramp @repetitions/allow 1 @type msg_float @description \"ramp time (sec.) for the value sent to output\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 840.0, 205.0, 438.0, 30.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r mappers_edit",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1005.0, 15.0, 85.0, 19.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 930.0, 15.0, 72.0, 19.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "edit",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 855.0, 30.0, 42.0, 19.0 ],
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"arrowlink" : 1,
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 555.0, 0.0, 41.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "edit", ",", "active", ",", "bypass" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_action[1]",
					"text" : "jcom.parameter in/action @repetitions/allow 1 @type msg_int @description \"Destination module of the mapping\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 847.0, 542.0, 330.0, 30.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 847.0, 627.0, 58.0, 18.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ignoreclik",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1020.0, 95.0, 100.0, 19.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 354.0, 116.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 354.0, 116.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 12.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 330.0, 70.0, 36.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel active",
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 110.0, 44.0, 225.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "module_in, module_out, module_in_fct, module_out_fct, module_in#, module_out#, module_in_action, module_out_action, in_message, out_message, in_value, out_value, out_ramp, wait, tgate",
									"linecount" : 4,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.0, 94.0, 347.0, 60.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "module_in, module_out, module_in_fct, module_out_fct, module_in#, module_out#, module_in_action, module_out_action, in_message, out_message, in_value, out_value, out_ramp, wait, tgate",
									"linecount" : 6,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 70.0, 224.0, 87.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script ignoreclick",
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 158.0, 149.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 110.0, 182.0, 25.0, 25.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script respondtoclick",
									"outlettype" : [ "" ],
									"patching_rect" : [ 338.0, 158.0, 172.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "module_in, module_out, module_in_fct, module_out_fct, module_in#, module_out#, module_in_action, module_out_action, in_message, out_message, in_value, out_value, out_ramp, wait, tgate",
									"linecount" : 4,
									"outlettype" : [ "" ],
									"patching_rect" : [ 332.0, 96.0, 313.0, 60.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 347.5, 179.5, 119.5, 179.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "in_value[1]",
					"text" : "jcom.parameter in/value @repetitions/allow 1 @type msg_float @description \"Message sent to output\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 850.0, 725.0, 312.0, 30.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1020.0, 120.0, 100.0, 20.0 ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "in_message[1]",
					"text" : "jcom.parameter in/message @repetitions/allow 1 @type msg_generic @description \"Message sent to output\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 847.0, 652.0, 312.0, 30.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_action[1]",
					"text" : "jcom.parameter out/action @repetitions/allow 1 @type msg_int @description \"Destination module of the mapping\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 844.0, 279.0, 337.0, 30.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 847.0, 357.0, 58.0, 18.0 ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_value[1]",
					"text" : "jcom.parameter out/value @repetitions/allow 1 @type msg_float @description \"value sent to output\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 848.0, 460.0, 312.0, 30.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "out_message",
					"text" : "0",
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 847.0, 327.0, 114.0, 17.0 ],
					"presentation" : 1,
					"hidden" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"lines" : 1,
					"numinlets" : 1,
					"keymode" : 1,
					"presentation_rect" : [ 455.0, 47.0, 114.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_message[1]",
					"text" : "jcom.parameter out/message @repetitions/allow 1 @type msg_generic @description \"Message sent to output\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 847.0, 382.0, 312.0, 30.0 ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out_action",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 844.0, 257.0, 83.0, 19.0 ],
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 322.0, 46.0, 83.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "impulsion", ",", "value", ",", "message", ",", "counter", ",", "random" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in_action",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 845.0, 521.0, 83.0, 19.0 ],
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 322.0, 21.0, 83.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "impulsion", ",", "select", "value", ",", "select", "message", ",", "threshold", "up", ",", "threshold", "down" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 172.0, 324.0, 64.0, 18.0 ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "__________________________________________________________________________________________",
					"patching_rect" : [ 1.0, 30.0, 580.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 5.0, 29.0, 577.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_function",
					"text" : "jcom.parameter in/module/function @repetitions/allow 1 @type msg_symbol @description \"Source module function of the mapping\" @priority 5",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 240.0, 495.0, 400.0, 30.0 ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[10]",
					"text" : "jcom.parameter edit @repetitions/allow 1 @type msg_symbol @description \"Choose operation mode (active, edit, bypass)\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 865.0, 60.0, 327.0, 31.0 ],
					"id" : "obj-52",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_function",
					"text" : "jcom.parameter out/module/function @repetitions/allow 1 @type msg_symbol @description \"Destination function of the mapping\" @priority 6",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 170.0, 602.0, 394.0, 30.0 ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in_fct",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 207.0, 475.0, 90.0, 19.0 ],
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-54",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 164.0, 21.0, 109.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "button", ",", "delta/angle", ",", "delta/magnitude", ",", "delta/x", ",", "delta/y", ",", "position/x", ",", "position/y", ",", "<separator>", ",", "mouse_on", ",", "reference", ",", "ui/freeze", ",", "view/color/border", ",", "view/color/contentBackground", ",", "view/color/toolbarBackground", ",", "view/color/toolbarText" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out_fct",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 134.0, 581.0, 90.0, 19.0 ],
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-55",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 164.0, 46.0, 109.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"items" : [ "audio/bypass", ",", "audio/gain", ",", "audio/mix", ",", "audio/mute", ",", "lookahead", ",", "mode", ",", "postamp", ",", "preamp", ",", "release", ",", "threshold", ",", "ui/freeze", ",", "view/color/border", ",", "view/color/contentBackground", ",", "view/color/toolbarBackground", ",", "view/color/toolbarText", ",", "<separator>", ",", "documentation/generate", ",", "init", ",", "module/view_internals", ",", "panel/open", ",", "preset/clear", ",", "preset/copy", ",", "preset/default", ",", "preset/dump", ",", "preset/interpolate", ",", "preset/post", ",", "preset/read", ",", "preset/recall", ",", "preset/store", ",", "preset/storecurrent", ",", "preset/storenext", ",", "preset/write", ",", "preset/writeagain", ",", "ui/refresh" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_nr",
					"text" : "jcom.parameter in/module/nr @repetitions/allow 1 @type msg_int @description \"Source module instance of the mapping\" @priority 2",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 362.0, 332.0, 348.0, 30.0 ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in[1]",
					"text" : "jcom.parameter in/module/name @repetitions/allow 1 @type msg_symbol @description \"Source module name of the mapping\" @priority 1",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 375.0, 395.0, 390.0, 30.0 ],
					"id" : "obj-60",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_nr",
					"text" : "jcom.parameter out/module/nr @repetitions/allow 1 @priority 4 @type msg_int @description \"Destination module instance of the mapping\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 171.0, 541.0, 394.0, 30.0 ],
					"id" : "obj-62",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Out",
					"patching_rect" : [ 8.0, 43.0, 27.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-65",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 8.0, 47.0, 27.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"patching_rect" : [ 39.0, 113.0, 135.0, 16.0 ],
					"id" : "obj-68",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mapper",
					"outlettype" : [ "", "", "", "clear", "int", "clear", "", "int", "" ],
					"patching_rect" : [ 108.0, 284.0, 274.0, 18.0 ],
					"id" : "obj-71",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 9,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 180.0, 469.0, 1139.0, 397.0 ],
						"bglocked" : 0,
						"defrect" : [ 180.0, 469.0, 1139.0, 397.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_dst_0[1]",
									"text" : "jcom.send jcom.remote.module.to",
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 325.0, 180.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /module",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 59.0, 125.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 205.0, 143.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "to module out function menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /name /nr /function",
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 30.0, 84.0, 247.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /name /nr /function",
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 306.0, 84.0, 247.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 30.0, 144.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "to module out function menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p adress_out",
									"outlettype" : [ "", "", "", "", "int" ],
									"patching_rect" : [ 30.0, 115.0, 245.0, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 4,
									"fontsize" : 9.873845,
									"numoutlets" : 5,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 36.0, 87.0, 504.0, 615.0 ],
										"bglocked" : 0,
										"defrect" : [ 36.0, 87.0, 504.0, 615.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 0 clear",
													"outlettype" : [ "", "int", "clear" ],
													"patching_rect" : [ 23.0, 414.0, 122.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 140.0, 38.0, 57.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 310.0, 490.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 348.0, 188.0, 32.0, 18.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 287.0, 262.0, 15.0, 15.0 ],
													"id" : "obj-17",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p script",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 287.0, 237.0, 45.0, 18.0 ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 294.0, 357.0, 496.0, 410.0 ],
														"bglocked" : 0,
														"defrect" : [ 294.0, 357.0, 496.0, 410.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 69.0, 45.0, 54.0, 18.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "92",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 190.0, 115.0, 50.0, 17.0 ],
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "presentation_rect 33 46 $1 19",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 150.0, 145.0, 177.0, 18.0 ],
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.970939,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront out_slash, script bringtofront module_out#",
																	"linecount" : 2,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 218.0, 63.0, 253.0, 28.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
																	"id" : "obj-4",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
																	"id" : "obj-5",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront module_out",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 28.0, 67.0, 166.0, 16.0 ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 150.0, 170.0, 15.0, 15.0 ],
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "129",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 120.0, 115.0, 50.0, 17.0 ],
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 227.5, 100.0, 37.0, 100.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 348.0, 323.0, 15.0, 15.0 ],
													"id" : "obj-19",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend max",
													"outlettype" : [ "" ],
													"patching_rect" : [ 377.0, 253.0, 74.0, 18.0 ],
													"id" : "obj-20",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 377.0, 232.0, 25.0, 18.0 ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 287.0, 210.0, 44.0, 18.0 ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 75.0, 260.0, 96.0, 18.0 ],
													"id" : "obj-23",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 1 s 0",
													"outlettype" : [ "", "int", "", "int" ],
													"patching_rect" : [ 140.0, 60.0, 191.0, 18.0 ],
													"id" : "obj-24",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"outlettype" : [ "" ],
													"patching_rect" : [ 236.0, 116.0, 88.0, 18.0 ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 236.0, 138.0, 160.0, 18.0 ],
													"id" : "obj-26",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 4,
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "switch 2 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 339.0, 96.0, 18.0 ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 236.0, 210.0, 27.0, 18.0 ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s",
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 295.0, 60.0, 18.0 ],
													"id" : "obj-29",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.getAllAttributes",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 200.0, 435.0, 133.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 180.0, 260.0, 42.0, 18.0 ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 236.0, 163.0, 27.0, 18.0 ],
													"id" : "obj-31",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s.%s",
													"outlettype" : [ "" ],
													"patching_rect" : [ 146.0, 294.0, 80.0, 18.0 ],
													"id" : "obj-32",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 180.0, 242.0, 13.0, 13.0 ],
													"id" : "obj-33",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 348.0, 211.0, 39.0, 18.0 ],
													"id" : "obj-34",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 230.0, 459.0, 15.0, 15.0 ],
													"id" : "obj-37",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.0, 485.0, 59.0, 18.0 ],
													"id" : "obj-38",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"outlettype" : [ "" ],
													"patching_rect" : [ 315.0, 460.0, 70.0, 19.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adresses",
													"outlettype" : [ "int", "" ],
													"patching_rect" : [ 15.0, 445.0, 62.0, 18.0 ],
													"id" : "obj-42",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 86.0, 177.0, 317.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 86.0, 177.0, 317.0, 199.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.getMessageNames",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 26.0, 77.0, 130.0, 18.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 s <separator> s",
																	"outlettype" : [ "int", "", "<separator>", "" ],
																	"patching_rect" : [ 26.0, 46.0, 130.0, 18.0 ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 4
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.getParameterNames",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 146.0, 77.0, 138.0, 18.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 86.0, 113.0, 15.0, 15.0 ],
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 26.0, 26.0, 15.0, 15.0 ],
																	"id" : "obj-5",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 20.0, 115.0, 15.0, 15.0 ],
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 155.5, 104.0, 95.0, 104.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 3 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 35.5, 104.0, 95.0, 104.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 200.0, 405.0, 15.0, 15.0 ],
													"id" : "obj-45",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 315.0, 260.0, 16.0, 16.0 ],
													"id" : "obj-46",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"outlettype" : [ "" ],
													"patching_rect" : [ 127.0, 497.0, 57.0, 18.0 ],
													"id" : "obj-48",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 60.0, 372.0, 273.0, 18.0 ],
													"id" : "obj-49",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 470.0, 89.0, 18.0 ],
													"id" : "obj-50",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 127.0, 519.0, 15.0, 15.0 ],
													"id" : "obj-52",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 140.0, 19.0, 15.0, 15.0 ],
													"id" : "obj-53",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this is to avoid the function menu to change when only the instance number changes",
													"linecount" : 10,
													"patching_rect" : [ 75.0, 110.0, 58.0, 126.0 ],
													"id" : "obj-54",
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /ramp/drive",
													"linecount" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 230.0, 520.0, 85.0, 30.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_ramp",
													"patching_rect" : [ 230.0, 555.0, 74.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 23.0, 393.0, 50.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [ 69.5, 492.0, 136.5, 492.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 1 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [ 24.5, 495.5, 136.5, 495.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [ 357.5, 283.0, 216.5, 283.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-27", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 245.5, 183.0, 357.5, 183.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-38", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-27", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [ 245.5, 328.0, 69.5, 328.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0,
													"midpoints" : [ 245.5, 159.0, 392.5, 159.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 206.833328, 86.0, 32.5, 86.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 3 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [ 321.5, 91.0, 69.5, 91.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 2 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-29", 0 ],
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
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 386.5, 313.0, 357.0, 313.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 2 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 301.0, 143.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "to module in function menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"outlettype" : [ "" ],
									"patching_rect" : [ 595.0, 275.0, 89.0, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 570.0, 304.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 205.0, 56.0, 19.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_prepend_0[1]",
									"text" : "prepend /module/parameter",
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 300.0, 150.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 3.0, 219.0, 15.0, 15.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 9.0, 15.0, 15.0 ],
									"id" : "obj-21",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.modules_dumper",
									"outlettype" : [ "", "", "clear" ],
									"patching_rect" : [ 595.0, 251.0, 122.0, 18.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /module",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 306.0, 59.0, 125.0, 18.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p edit",
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 815.0, 60.0, 37.0, 18.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 200.0, 208.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 200.0, 208.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 85.0, 119.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 17.0, 115.0, 15.0, 15.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 83.0, 85.0, 22.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0 1",
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 48.0, 85.0, 32.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 17.0, 84.0, 22.0, 18.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel edit active bypass",
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"patching_rect" : [ 17.0, 62.0, 115.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 17.0, 38.0, 15.0, 15.0 ],
													"id" : "obj-7",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p engine",
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 235.0, 477.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 4,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 584.0, 228.0, 887.0, 654.0 ],
										"bglocked" : 0,
										"defrect" : [ 584.0, 228.0, 887.0, 654.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "34. ramp 0",
													"linecount" : 2,
													"outlettype" : [ "" ],
													"patching_rect" : [ 185.0, 520.0, 50.0, 29.0 ],
													"id" : "obj-46",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bang",
													"outlettype" : [ "" ],
													"patching_rect" : [ 535.0, 350.0, 50.0, 17.0 ],
													"id" : "obj-44",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"presentation_rect" : [ 535.0, 352.0, 0.0, 0.0 ],
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"outlettype" : [ "" ],
													"patching_rect" : [ 555.0, 160.0, 50.0, 17.0 ],
													"id" : "obj-43",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setmin $1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 460.0, 535.0, 58.0, 16.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 20.0, 15.0, 15.0 ],
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 4",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 410.0, 440.0, 34.0, 19.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 4",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 455.0, 435.0, 43.5, 18.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 315.0, 490.0, 47.0, 18.0 ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 466.0, 164.0, 22.0, 18.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 466.0, 118.0, 70.0, 18.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change 0 -",
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 466.0, 140.0, 62.0, 18.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 370.0, 164.0, 22.0, 18.0 ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 370.0, 120.0, 65.0, 18.0 ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change 0 +",
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 370.0, 142.0, 65.0, 18.0 ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 460.0, 515.0, 89.0, 18.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 481.0, 99.0, 15.0, 15.0 ],
													"id" : "obj-20",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 480.0, 460.0, 47.0, 18.0 ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 48.0, 491.0, 22.0, 18.0 ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 50.0, 585.0, 15.0, 15.0 ],
													"id" : "obj-23",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 5",
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 48.0, 464.0, 423.0, 18.0 ],
													"id" : "obj-24",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 5",
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 122.0, 73.0, 417.0, 18.0 ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 80.0, 120.0, 22.0, 18.0 ],
													"id" : "obj-26",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 5",
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 80.0, 97.0, 396.0, 18.0 ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 178.0, 140.0, 32.0, 18.0 ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0.",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 178.0, 118.0, 55.0, 18.0 ],
													"id" : "obj-29",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter",
													"outlettype" : [ "int", "", "", "int" ],
													"patching_rect" : [ 440.0, 555.0, 109.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 5,
													"fontsize" : 9.873845,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 274.0, 141.0, 32.0, 18.0 ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl compare",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 274.0, 120.0, 65.0, 18.0 ],
													"id" : "obj-31",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 80.0, 20.0, 15.0, 15.0 ],
													"id" : "obj-32",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /action /value /ramp /message",
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 60.0, 300.0, 312.0, 18.0 ],
													"id" : "obj-33",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /action /message /value",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 80.0, 45.0, 459.0, 18.0 ],
													"id" : "obj-34",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 503.0, 214.0, 15.0, 15.0 ],
													"id" : "obj-35",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 2",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 480.0, 480.0, 84.0, 18.0 ],
													"id" : "obj-36",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 700.0, 505.0, 47.0, 18.0 ],
													"id" : "obj-37",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 5",
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 700.0, 475.0, 43.5, 18.0 ],
													"id" : "obj-38",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 5",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 665.0, 475.0, 34.0, 19.0 ],
													"id" : "obj-39",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1000.",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 596.0, 261.0, 50.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.random",
													"outlettype" : [ "float" ],
													"patching_rect" : [ 655.0, 560.0, 109.0, 18.0 ],
													"id" : "obj-40",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"outlettype" : [ "int", "int" ],
													"patching_rect" : [ 700.0, 530.0, 62.0, 18.0 ],
													"id" : "obj-41",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p value",
													"outlettype" : [ "" ],
													"patching_rect" : [ 145.0, 490.0, 100.0, 19.0 ],
													"id" : "obj-48",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"fontsize" : 10.0,
													"numoutlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 37.0, 352.0, 450.0, 445.0 ],
														"bglocked" : 0,
														"defrect" : [ 37.0, 352.0, 450.0, 445.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 130.0, 40.0, 25.0, 25.0 ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0.",
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 130.0, 90.0, 34.0, 18.0 ],
																	"id" : "obj-2",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 55.0, 90.0, 47.0, 18.0 ],
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 230.0, 175.0, 24.0, 19.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2 2",
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 295.0, 100.0, 19.0 ],
																	"id" : "obj-39",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "&&",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 230.0, 210.0, 39.0, 18.0 ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 2",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 305.0, 170.0, 24.0, 19.0 ],
																	"id" : "obj-40",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 350.0, 170.0, 24.0, 19.0 ],
																	"id" : "obj-41",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel queue scheduler none",
																	"linecount" : 2,
																	"outlettype" : [ "bang", "bang", "bang", "" ],
																	"patching_rect" : [ 300.0, 100.0, 100.0, 31.0 ],
																	"id" : "obj-42",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 4
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r #0_ramp",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 300.0, 75.0, 73.0, 18.0 ],
																	"id" : "obj-43",
																	"fontname" : "Verdana",
																	"numinlets" : 0,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
																	"id" : "obj-45",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 83.0, 40.0, 25.0, 25.0 ],
																	"id" : "obj-46",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 50.0, 395.0, 25.0, 25.0 ],
																	"id" : "obj-47",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 200.0, 175.0, 24.0, 19.0 ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. ramp 0",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 130.0, 325.0, 85.0, 18.0 ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 3,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 1000.",
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 195.0, 295.0, 42.0, 18.0 ],
																	"id" : "obj-7",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 230.0, 235.0, 25.0, 18.0 ],
																	"id" : "obj-8",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"numoutlets" : 1
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-6", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-47", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-46", 0 ],
																	"destination" : [ "obj-21", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-45", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-43", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 2 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-42", 1 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-41", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-39", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-39", 0 ],
																	"destination" : [ "obj-47", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-39", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 0",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 445.0, 290.0, 161.0, 18.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /repeat /wait",
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 503.0, 239.0, 204.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p tgate",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 445.0, 267.0, 68.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 10.0, 59.0, 240.0, 240.0 ],
														"bglocked" : 0,
														"defrect" : [ 10.0, 59.0, 240.0, 240.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 1000.",
																	"outlettype" : [ "float" ],
																	"patching_rect" : [ 146.0, 92.0, 50.0, 18.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 146.0, 63.0, 15.0, 15.0 ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 98.0, 105.0, 15.0, 15.0 ],
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 31.0, 145.0, 22.0, 18.0 ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b 0 b",
																	"outlettype" : [ "bang", "int", "bang" ],
																	"patching_rect" : [ 30.0, 83.0, 78.0, 18.0 ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "del 0",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 31.0, 123.0, 125.0, 18.0 ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 1 1",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 30.0, 60.0, 50.0, 18.0 ],
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 70.0, 38.0, 15.0, 15.0 ],
																	"id" : "obj-8",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-7", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 40.5, 169.0, 26.0, 169.0, 26.0, 53.0, 39.5, 53.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 60.0, 325.0, 27.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 80.0, 72.0, 27.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-46", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-44", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-43", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-40", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 1 ],
													"destination" : [ "obj-40", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 664.5, 588.0, 75.0, 588.0, 75.0, 582.0, 59.0, 582.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 4 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 1 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 2 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-48", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 2 ],
													"destination" : [ "obj-48", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 3 ],
													"destination" : [ "obj-38", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 3 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 3 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 283.5, 231.0, 454.5, 231.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 449.5, 573.0, 77.0, 573.0, 77.0, 579.0, 59.0, 579.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 187.5, 231.0, 454.5, 231.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 2 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 3 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 4 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 231.0, 454.5, 231.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 2 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-29", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 3 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 4 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 4 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 3 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-24", 2 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-27", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-3", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 379.5, 231.0, 454.5, 231.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 324.5, 582.0, 59.0, 582.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 3 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 525.0, 140.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "to in #"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 595.0, 225.0, 54.0, 19.0 ],
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p adress_in",
									"outlettype" : [ "clear", "", "", "", "int" ],
									"patching_rect" : [ 300.0, 115.0, 245.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 9.873845,
									"numoutlets" : 5,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 619.0, 61.0, 480.0, 658.0 ],
										"bglocked" : 0,
										"defrect" : [ 619.0, 61.0, 480.0, 658.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "mapping_object_src_0",
													"text" : "jcom.receive dumb",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 120.0, 545.0, 207.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 165.0, 598.0, 15.0, 15.0 ],
													"id" : "obj-10",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 350.0, 189.0, 32.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 288.0, 265.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : "to thispatcher"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p script",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 288.0, 240.0, 45.0, 18.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 629.0, 515.0, 496.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 629.0, 515.0, 496.0, 199.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 69.0, 45.0, 54.0, 18.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "presentation_rect 33 21 $1 19",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 135.0, 145.0, 177.0, 18.0 ],
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.970939,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront in_slash, script bringtofront module_in#",
																	"linecount" : 2,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 218.0, 63.0, 246.0, 28.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
																	"id" : "obj-4",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
																	"id" : "obj-5",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront module_in",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 28.0, 67.0, 159.0, 16.0 ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "129",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 80.0, 115.0, 45.0, 16.0 ],
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "92",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 155.0, 115.0, 45.0, 16.0 ],
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 135.0, 175.0, 15.0, 15.0 ],
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 227.5, 100.0, 37.0, 100.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 350.0, 330.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : "to nr"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend max",
													"outlettype" : [ "" ],
													"patching_rect" : [ 379.0, 254.0, 74.0, 18.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 379.0, 233.0, 25.0, 18.0 ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 288.0, 213.0, 44.0, 18.0 ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 75.0, 260.0, 96.0, 18.0 ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 325.0, 545.0, 100.0, 19.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 1 s 0",
													"outlettype" : [ "", "int", "", "int" ],
													"patching_rect" : [ 135.0, 70.0, 215.0, 18.0 ],
													"id" : "obj-20",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"outlettype" : [ "" ],
													"patching_rect" : [ 238.0, 117.0, 88.0, 18.0 ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 238.0, 139.0, 160.0, 18.0 ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 4,
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "switch 2 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 62.0, 341.0, 96.0, 18.0 ],
													"id" : "obj-23",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 238.0, 211.0, 27.0, 18.0 ],
													"id" : "obj-24",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s",
													"outlettype" : [ "" ],
													"patching_rect" : [ 75.0, 295.0, 60.0, 18.0 ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 182.0, 261.0, 42.0, 18.0 ],
													"id" : "obj-26",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 238.0, 164.0, 27.0, 18.0 ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s.%s",
													"outlettype" : [ "" ],
													"patching_rect" : [ 148.0, 295.0, 80.0, 18.0 ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 182.0, 243.0, 13.0, 13.0 ],
													"id" : "obj-29",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 350.0, 212.0, 39.0, 18.0 ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 195.0, 395.0, 15.0, 15.0 ],
													"id" : "obj-42",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adresses",
													"outlettype" : [ "int", "" ],
													"patching_rect" : [ 10.0, 445.0, 62.0, 18.0 ],
													"id" : "obj-43",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 736.0, 73.0, 317.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 736.0, 73.0, 317.0, 199.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.getParameterNames",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 35.0, 125.0, 138.0, 18.0 ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 s <separator> s",
																	"outlettype" : [ "int", "", "<separator>", "" ],
																	"patching_rect" : [ 26.0, 46.0, 139.0, 18.0 ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 4
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.getReturnNames",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 175.0, 125.0, 126.0, 18.0 ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 100.0, 163.0, 15.0, 15.0 ],
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 26.0, 26.0, 15.0, 15.0 ],
																	"id" : "obj-5",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 25.0, 165.0, 15.0, 15.0 ],
																	"id" : "obj-6",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 184.5, 154.0, 109.0, 154.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 3 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 44.5, 154.0, 109.0, 154.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
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
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"outlettype" : [ "clear" ],
													"patching_rect" : [ 125.0, 490.0, 57.0, 18.0 ],
													"id" : "obj-45",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 62.0, 368.0, 242.0, 18.0 ],
													"id" : "obj-46",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 465.0, 89.0, 18.0 ],
													"id" : "obj-47",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 125.0, 512.0, 15.0, 15.0 ],
													"id" : "obj-49",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : "to module in function menu"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend name",
													"outlettype" : [ "" ],
													"patching_rect" : [ 150.0, 520.0, 100.0, 19.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 29.0, 15.0, 15.0 ],
													"id" : "obj-50",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this is to avoid the function menu to change when only the instance number changes",
													"linecount" : 10,
													"patching_rect" : [ 32.0, 45.0, 58.0, 126.0 ],
													"id" : "obj-51",
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 315.0, 265.0, 15.0, 15.0 ],
													"id" : "obj-52",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : "to thispatcher"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 195.0, 459.0, 109.0, 18.0 ],
													"id" : "obj-53",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 195.0, 420.0, 93.0, 18.0 ],
													"id" : "obj-54",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s/%s",
													"outlettype" : [ "" ],
													"patching_rect" : [ 195.0, 485.0, 93.0, 18.0 ],
													"id" : "obj-55",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 25.0, 394.0, 50.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 0 clear",
													"outlettype" : [ "", "int", "clear" ],
													"patching_rect" : [ 25.0, 415.0, 119.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 135.0, 48.0, 57.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "mapping_object_src_0[1]",
													"text" : "jcom.receive jcom.remote.module.from",
													"linecount" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 325.0, 505.0, 139.0, 30.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 1 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [ 64.5, 485.0, 134.5, 485.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 1 ],
													"destination" : [ "obj-53", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 1 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [ 19.5, 490.0, 134.5, 490.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-28", 1 ],
													"hidden" : 0,
													"midpoints" : [ 359.5, 283.0, 218.5, 283.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-23", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 247.5, 183.0, 359.5, 183.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-28", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 247.5, 329.0, 71.5, 329.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [ 247.5, 160.0, 394.5, 160.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 209.833328, 92.5, 34.5, 92.5 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 3 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 340.5, 100.0, 71.5, 100.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 2 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 388.5, 315.0, 359.0, 315.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 416.0, 143.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 256.0, 143.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "to module out instance number"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 105.0, 145.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /out /in /time /edit",
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 30.0, 34.0, 1063.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 5
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-3", 3 ],
									"hidden" : 0,
									"midpoints" : [ 561.5, 204.0, 562.5, 204.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 3 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 4 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 3 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 842.5, 192.0, 409.5, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-15", 3 ],
									"hidden" : 0,
									"midpoints" : [ 824.5, 108.0, 265.5, 108.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 2 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 707.5, 298.0, 586.0, 298.0, 586.0, 298.0, 579.0, 298.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-3", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 604.5, 298.0, 581.0, 298.0, 581.0, 301.0, 579.0, 301.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 4 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 2 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-5", 2 ],
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
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-15", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
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
					"maxclass" : "comment",
					"text" : "In",
					"patching_rect" : [ 8.0, 23.0, 19.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-72",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 8.0, 23.0, 19.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"One-to-one Mapper\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 17.0, 139.0, 235.0, 30.0 ],
					"id" : "obj-73",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 114.0, 13.0, 13.0 ],
					"id" : "obj-74",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 17.0, 340.0, 13.0, 13.0 ],
					"id" : "obj-75",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out[1]",
					"text" : "jcom.parameter out/module/name @repetitions/allow 1 @priority 3 @type msg_symbol @description \"Destination module name of the mapping\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 348.0, 458.0, 401.0, 30.0 ],
					"id" : "obj-76",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/out/module/function audio/gain",
					"linecount" : 3,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 285.0, 80.0, 40.0 ],
					"id" : "obj-77",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 993.0, 617.0, 64.0, 18.0 ],
					"id" : "obj-79",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "in_message",
					"text" : "0",
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 847.0, 602.0, 113.0, 17.0 ],
					"presentation" : 1,
					"hidden" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"lines" : 1,
					"numinlets" : 1,
					"keymode" : 1,
					"presentation_rect" : [ 455.0, 22.0, 113.0, 18.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/tmapper.1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-82",
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "module_in#",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 363.0, 312.0, 20.0, 19.0 ],
					"presentation" : 1,
					"triscale" : 0.9,
					"maximum" : 2,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 141.0, 21.0, 20.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"mouseup" : 1,
					"minimum" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 1 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 357.5, 490.0, 303.0, 490.0, 303.0, 430.0, 315.5, 430.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 7 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 340.625, 303.0, 372.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 8 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [ 372.5, 305.0, 340.5, 305.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [ 117.5, 333.0, 24.0, 333.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 5 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 276.875, 458.0, 216.5, 458.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 2 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.25, 303.0, 181.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 6 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 308.75, 313.0, 181.5, 313.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 4 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 245.0, 438.0, 180.5, 438.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 3 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 213.125, 412.0, 315.5, 412.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 132.0, 26.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 180.5, 576.0, 156.0, 576.0, 156.0, 512.0, 180.5, 512.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [ 384.5, 428.0, 328.0, 428.0, 328.0, 371.0, 340.5, 371.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 371.5, 366.0, 357.0, 366.0, 357.0, 308.0, 372.5, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 1 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 638.0, 120.0, 638.0, 120.0, 576.0, 143.5, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"midpoints" : [ 874.5, 104.0, 846.0, 104.0, 846.0, 25.0, 864.5, 25.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 531.0, 202.0, 531.0, 202.0, 470.0, 216.5, 470.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 856.5, 421.0, 835.0, 421.0, 835.0, 323.0, 856.5, 323.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 857.5, 490.0, 832.0, 490.0, 832.0, 436.0, 856.5, 436.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 853.5, 310.0, 829.0, 310.0, 829.0, 253.0, 853.5, 253.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 856.5, 689.0, 835.0, 689.0, 835.0, 590.0, 856.5, 590.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 859.5, 757.0, 835.0, 757.0, 835.0, 700.0, 859.5, 700.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 856.5, 574.0, 832.0, 574.0, 832.0, 517.0, 854.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 939.5, 45.0, 915.0, 45.0, 915.0, 24.0, 864.5, 24.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.568627, 0.568627, 0.568627, 1.0 ],
					"midpoints" : [ 1014.5, 45.0, 915.0, 45.0, 915.0, 24.0, 864.5, 24.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 849.5, 240.0, 824.0, 240.0, 824.0, 181.0, 848.5, 181.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1002.5, 602.0, 1002.5, 602.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1054.5, 611.0, 1002.5, 611.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-77", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 132.0, 26.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.5, 174.0, 420.0, 174.0, 420.0, 115.0, 444.5, 115.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.5, 250.0, 422.0, 250.0, 422.0, 186.0, 444.5, 186.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
