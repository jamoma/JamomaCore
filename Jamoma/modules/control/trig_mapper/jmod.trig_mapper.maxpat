{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 56.0, 63.0, 872.0, 567.0 ],
		"bglocked" : 0,
		"defrect" : [ 56.0, 63.0, 872.0, 567.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out",
					"numoutlets" : 3,
					"patching_rect" : [ 306.0, 435.0, 103.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"arrow" : 0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "/input~", ",", "/filter~", ",", "/mapper", ",", "/control", ",", "/mouse", ",", "/limiter~", ",", "/tmapper", ",", "/editing_this_module" ],
					"types" : [  ],
					"id" : "obj-1",
					"presentation_rect" : [ 33.0, 46.0, 129.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in",
					"numoutlets" : 3,
					"patching_rect" : [ 331.0, 375.0, 103.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"arrow" : 0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "/control", ",", "/mouse", ",", "/limiter~", ",", "/tmapper", ",", "/editing_this_module" ],
					"types" : [  ],
					"id" : "obj-80",
					"presentation_rect" : [ 33.0, 21.0, 129.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "ramp_com",
					"text" : "ramp (s) :",
					"numoutlets" : 0,
					"patching_rect" : [ 488.0, 47.0, 62.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-25",
					"presentation_rect" : [ 495.0, 48.0, 62.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_ramp",
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 840.0, 45.0, 35.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"triscale" : 0.9,
					"id" : "obj-16",
					"presentation_rect" : [ 559.0, 48.0, 35.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "out_com",
					"text" : "data :",
					"numoutlets" : 0,
					"patching_rect" : [ 370.0, 45.0, 39.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"hidden" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-5",
					"presentation_rect" : [ 410.0, 47.0, 39.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_value",
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 840.0, 347.0, 35.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"triscale" : 0.9,
					"id" : "obj-6",
					"presentation_rect" : [ 451.0, 48.0, 35.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "in_com",
					"text" : "data :",
					"numoutlets" : 0,
					"patching_rect" : [ 369.0, 22.0, 39.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"hidden" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-3",
					"presentation_rect" : [ 410.0, 23.0, 39.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "out_message",
					"text" : "0",
					"lines" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 840.0, 235.0, 114.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "", "int", "", "" ],
					"hidden" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-4",
					"presentation_rect" : [ 455.0, 47.0, 114.0, 17.0 ],
					"fontname" : "Verdana",
					"keymode" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "in_value",
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 843.0, 613.0, 35.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"triscale" : 0.9,
					"id" : "obj-7",
					"presentation_rect" : [ 451.0, 23.0, 35.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_value[3]",
					"text" : "jcom.parameter out/ramp @repetitions/allow 1 @type msg_float @description \"ramp time (sec.) for the value sent to output\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 841.0, 66.0, 438.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "in_message",
					"text" : "0",
					"lines" : 1,
					"numoutlets" : 4,
					"patching_rect" : [ 840.0, 510.0, 113.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "", "int", "", "" ],
					"hidden" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-8",
					"presentation_rect" : [ 455.0, 22.0, 113.0, 18.0 ],
					"fontname" : "Verdana",
					"keymode" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "module_out#",
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 171.0, 518.0, 20.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"triscale" : 0.9,
					"maximum" : 2,
					"id" : "obj-11",
					"presentation_rect" : [ 141.0, 46.0, 20.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"mouseup" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "out_slash",
					"numoutlets" : 3,
					"patching_rect" : [ 104.0, 41.0, 15.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"arrow" : 0,
					"menumode" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : ".",
					"types" : [  ],
					"id" : "obj-12",
					"presentation_rect" : [ 126.0, 46.0, 15.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "module_in#",
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 363.0, 312.0, 20.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"triscale" : 0.9,
					"maximum" : 2,
					"id" : "obj-9",
					"presentation_rect" : [ 141.0, 21.0, 20.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"mouseup" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "in_slash",
					"numoutlets" : 3,
					"patching_rect" : [ 104.0, 21.0, 15.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"arrow" : 0,
					"menumode" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : ".",
					"types" : [  ],
					"id" : "obj-10",
					"presentation_rect" : [ 125.0, 21.0, 17.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 25.0, 92.0, 211.0, 16.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"patching_rect" : [ 105.0, 245.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "wait_time",
					"text" : "jcom.parameter time/wait @repetitions/allow 1 @type msg_float @description \"Wait time before sending the output data\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 435.0, 215.0, 350.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "repeat_time",
					"text" : "jcom.parameter time/repeat @repetitions/allow 1 @type msg_float @description \"minimum time between two repetitions\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 435.0, 140.0, 350.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "wait",
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 435.0, 195.0, 35.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"id" : "obj-17",
					"presentation_rect" : [ 354.0, 0.0, 35.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "tgate",
					"triangle" : 0,
					"numoutlets" : 2,
					"patching_rect" : [ 435.0, 119.0, 35.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"id" : "obj-18",
					"presentation_rect" : [ 478.0, 0.0, 35.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Repeat time (s) :",
					"numoutlets" : 0,
					"patching_rect" : [ 387.0, 3.0, 95.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-19",
					"presentation_rect" : [ 387.0, 0.0, 95.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Wait time (s) :",
					"numoutlets" : 0,
					"patching_rect" : [ 277.0, 3.0, 83.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-20",
					"presentation_rect" : [ 277.0, 0.0, 83.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p show_hide",
					"numoutlets" : 2,
					"patching_rect" : [ 986.0, 491.0, 71.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 258.0, 472.0, 993.0, 332.0 ],
						"bglocked" : 0,
						"defrect" : [ 258.0, 472.0, 993.0, 332.0 ],
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
									"text" : "gate",
									"numoutlets" : 1,
									"patching_rect" : [ 665.0, 280.0, 100.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numoutlets" : 1,
									"patching_rect" : [ 595.0, 255.0, 24.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"numoutlets" : 1,
									"patching_rect" : [ 565.0, 255.0, 24.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide out_ramp, script hide ramp_com",
									"numoutlets" : 1,
									"patching_rect" : [ 795.0, 220.0, 229.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show out_ramp, script bringtofront out_ramp, script show ramp_com, script bringtofront ramp_com",
									"linecount" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 770.0, 165.0, 230.0, 40.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel queue scheduler none",
									"linecount" : 2,
									"numoutlets" : 4,
									"patching_rect" : [ 770.0, 110.0, 100.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scheduler",
									"linecount" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 765.0, 55.0, 50.0, 29.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_ramp",
									"numoutlets" : 1,
									"patching_rect" : [ 770.0, 85.0, 68.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"patching_rect" : [ 38.0, 43.0, 35.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 298.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide out_message, script hide out_value, script hide out_com",
									"linecount" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 345.0, 250.0, 187.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide out_message, script show out_value, script bringtofront out_value, script show out_com, script bringtofront out_com, script show out_ramp, script bringtofront out_ramp, script show ramp_com, script bringtofront ramp_com",
									"linecount" : 4,
									"numoutlets" : 1,
									"patching_rect" : [ 384.0, 101.0, 352.0, 52.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show out_message, script hide out_value, script bringtofront out_message, script show out_com, script bringtofront in_com, script hide out_ramp, script hide ramp_com",
									"linecount" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 410.0, 175.0, 334.0, 40.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 3 4 2",
									"numoutlets" : 6,
									"patching_rect" : [ 347.0, 67.0, 195.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 286.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide in_message, script hide in_value, script hide in_com",
									"linecount" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 12.0, 226.0, 173.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide in_message, script show in_value, script bringtofront in_value, script show in_com, script bringtofront in_com",
									"linecount" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 105.0, 230.0, 40.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show in_message, script hide in_value, script bringtofront in_message, script show in_com, script bringtofront in_com",
									"linecount" : 5,
									"numoutlets" : 1,
									"patching_rect" : [ 196.0, 202.0, 143.0, 64.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 3 4 2",
									"numoutlets" : 6,
									"patching_rect" : [ 10.0, 70.0, 255.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 347.0, 45.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 10.0, 43.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 4 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-11", 4 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 211.0, 21.0, 211.0 ]
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-22", 0 ],
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
									"source" : [ "obj-6", 4 ],
									"destination" : [ "obj-21", 0 ],
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
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "action :",
					"numoutlets" : 0,
					"patching_rect" : [ 236.0, 44.0, 47.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-22",
					"presentation_rect" : [ 277.0, 47.0, 47.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "action :",
					"numoutlets" : 0,
					"patching_rect" : [ 236.0, 22.0, 47.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-23",
					"presentation_rect" : [ 277.0, 23.0, 47.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_action[1]",
					"text" : "jcom.parameter in/action @repetitions/allow 1 @type msg_int @description \"Destination module of the mapping\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 840.0, 450.0, 330.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"numoutlets" : 2,
					"patching_rect" : [ 840.0, 535.0, 58.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "in_value[1]",
					"text" : "jcom.parameter in/value @repetitions/allow 1 @type msg_float @description \"Message sent to output\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 843.0, 633.0, 312.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "in_message[1]",
					"text" : "jcom.parameter in/message @repetitions/allow 1 @type msg_generic @description \"Message sent to output\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 840.0, 560.0, 312.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_action[1]",
					"text" : "jcom.parameter out/action @repetitions/allow 1 @type msg_int @description \"Destination module of the mapping\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 837.0, 187.0, 337.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"numoutlets" : 2,
					"patching_rect" : [ 840.0, 265.0, 58.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_value[1]",
					"text" : "jcom.parameter out/value @repetitions/allow 1 @type msg_float @description \"value sent to output\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 841.0, 368.0, 312.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_message[1]",
					"text" : "jcom.parameter out/message @repetitions/allow 1 @type msg_generic @description \"Message sent to output\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 840.0, 290.0, 312.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out_action",
					"numoutlets" : 3,
					"patching_rect" : [ 837.0, 165.0, 83.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"arrow" : 0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "impulsion", ",", "value", ",", "message", ",", "counter" ],
					"types" : [  ],
					"id" : "obj-42",
					"presentation_rect" : [ 322.0, 46.0, 83.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in_action",
					"numoutlets" : 3,
					"patching_rect" : [ 838.0, 429.0, 83.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"arrow" : 0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "impulsion", ",", "select", "value", ",", "select", "message", ",", "threshold", "up", ",", "threshold", "down" ],
					"types" : [  ],
					"id" : "obj-43",
					"presentation_rect" : [ 322.0, 21.0, 83.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"patching_rect" : [ 172.0, 324.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "__________________________________________________________________________________________",
					"numoutlets" : 0,
					"patching_rect" : [ 1.0, 30.0, 580.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 9.873845,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-47",
					"presentation_rect" : [ 5.0, 29.0, 577.0, 18.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_function",
					"text" : "jcom.parameter in/module/function @repetitions/allow 1 @type msg_symbol @description \"Source module function of the mapping\" @priority 5",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 240.0, 495.0, 400.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_function",
					"text" : "jcom.parameter out/module/function @repetitions/allow 1 @type msg_symbol @description \"Destination function of the mapping\" @priority 6",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 170.0, 602.0, 394.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in_fct",
					"numoutlets" : 3,
					"patching_rect" : [ 207.0, 475.0, 90.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"arrow" : 0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "button", ",", "delta/angle", ",", "delta/magnitude", ",", "delta/x", ",", "delta/y", ",", "position/x", ",", "position/y", ",", "<separator>", ",", "mouse_on", ",", "reference", ",", "ui/freeze" ],
					"types" : [  ],
					"id" : "obj-54",
					"presentation_rect" : [ 164.0, 21.0, 109.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out_fct",
					"numoutlets" : 3,
					"patching_rect" : [ 134.0, 581.0, 90.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"arrow" : 0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "audio/bypass", ",", "audio/gain", ",", "audio/mix", ",", "audio/mute", ",", "lookahead", ",", "mode", ",", "postamp", ",", "preamp", ",", "release", ",", "threshold", ",", "ui/freeze", ",", "<separator>", ",", "documentation/generate", ",", "init", ",", "module/view_internals", ",", "panel/open", ",", "preset/clear", ",", "preset/copy", ",", "preset/default", ",", "preset/dump", ",", "preset/interpolate", ",", "preset/post", ",", "preset/read", ",", "preset/recall", ",", "preset/store", ",", "preset/storecurrent", ",", "preset/storenext", ",", "preset/write", ",", "preset/writeagain", ",", "ui/refresh" ],
					"types" : [  ],
					"id" : "obj-55",
					"presentation_rect" : [ 164.0, 46.0, 109.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_nr",
					"text" : "jcom.parameter in/module/nr @repetitions/allow 1 @type msg_int @description \"Source module instance of the mapping\" @priority 2",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 362.0, 332.0, 348.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in[1]",
					"text" : "jcom.parameter in/module/name @repetitions/allow 1 @type msg_symbol @description \"Source module name of the mapping\" @priority 1",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 375.0, 395.0, 390.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-60",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_nr",
					"text" : "jcom.parameter out/module/nr @repetitions/allow 1 @priority 4 @type msg_int @description \"Destination module instance of the mapping\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 171.0, 541.0, 394.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-62",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Out",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 43.0, 27.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-65",
					"presentation_rect" : [ 8.0, 47.0, 27.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"patching_rect" : [ 39.0, 113.0, 135.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-68",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mapper",
					"numoutlets" : 9,
					"patching_rect" : [ 108.0, 284.0, 274.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-71",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 448.0, 500.0, 951.0, 343.0 ],
						"bglocked" : 0,
						"defrect" : [ 448.0, 500.0, 951.0, 343.0 ],
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
									"text" : "jcom.oscroute /name /nr /function",
									"numoutlets" : 4,
									"patching_rect" : [ 306.0, 84.0, 247.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /module",
									"numoutlets" : 2,
									"patching_rect" : [ 306.0, 59.0, 125.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /name /nr /function",
									"numoutlets" : 4,
									"patching_rect" : [ 30.0, 84.0, 247.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /module",
									"numoutlets" : 2,
									"patching_rect" : [ 30.0, 59.0, 125.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /out /in /time",
									"numoutlets" : 4,
									"patching_rect" : [ 30.0, 34.0, 811.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"numoutlets" : 2,
									"patching_rect" : [ 595.0, 225.0, 54.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"numoutlets" : 1,
									"patching_rect" : [ 595.0, 275.0, 89.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.modules_dumper",
									"numoutlets" : 3,
									"patching_rect" : [ 595.0, 251.0, 122.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "clear" ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_dst_0[1]",
									"text" : "jcom.send jcom.remote.module.to",
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 280.0, 180.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_prepend_0[1]",
									"text" : "prepend /module/parameter",
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 255.0, 150.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p engine",
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 215.0, 477.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 4,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 32.0, 188.0, 772.0, 488.0 ],
										"bglocked" : 0,
										"defrect" : [ 32.0, 188.0, 772.0, 488.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numoutlets" : 2,
													"patching_rect" : [ 375.0, 370.0, 47.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 4",
													"numoutlets" : 4,
													"patching_rect" : [ 380.0, 315.0, 43.5, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 4",
													"numoutlets" : 2,
													"patching_rect" : [ 345.0, 315.0, 34.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p value",
													"numoutlets" : 1,
													"patching_rect" : [ 140.0, 370.0, 100.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-48",
													"fontname" : "Verdana",
													"numinlets" : 3,
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
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"numoutlets" : 1,
																	"patching_rect" : [ 230.0, 235.0, 25.0, 18.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "int" ],
																	"id" : "obj-8",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 1000.",
																	"numoutlets" : 1,
																	"patching_rect" : [ 195.0, 295.0, 42.0, 18.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "float" ],
																	"id" : "obj-7",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. ramp 0",
																	"numoutlets" : 1,
																	"patching_rect" : [ 130.0, 325.0, 85.0, 18.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"fontname" : "Arial",
																	"numinlets" : 3
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"numoutlets" : 1,
																	"patching_rect" : [ 200.0, 175.0, 24.0, 19.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "int" ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "&&",
																	"numoutlets" : 1,
																	"patching_rect" : [ 230.0, 210.0, 39.0, 18.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "int" ],
																	"id" : "obj-4",
																	"fontname" : "Arial",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"numoutlets" : 1,
																	"patching_rect" : [ 230.0, 175.0, 24.0, 19.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "int" ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0.",
																	"numoutlets" : 2,
																	"patching_rect" : [ 130.0, 90.0, 34.0, 18.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-2",
																	"fontname" : "Arial",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 130.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "f",
																	"numoutlets" : 1,
																	"patching_rect" : [ 55.0, 90.0, 47.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "float" ],
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-45",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 83.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-46",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 395.0, 25.0, 25.0 ],
																	"id" : "obj-47",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 2 2",
																	"numoutlets" : 2,
																	"patching_rect" : [ 50.0, 295.0, 100.0, 19.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "", "" ],
																	"id" : "obj-39",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 2",
																	"numoutlets" : 1,
																	"patching_rect" : [ 305.0, 170.0, 24.0, 19.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "int" ],
																	"id" : "obj-40",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"numoutlets" : 1,
																	"patching_rect" : [ 350.0, 170.0, 24.0, 19.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "int" ],
																	"id" : "obj-41",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel queue scheduler none",
																	"linecount" : 2,
																	"numoutlets" : 4,
																	"patching_rect" : [ 300.0, 100.0, 100.0, 31.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "bang", "bang", "bang", "" ],
																	"id" : "obj-42",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r #0_ramp",
																	"numoutlets" : 1,
																	"patching_rect" : [ 300.0, 75.0, 68.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-43",
																	"fontname" : "Verdana",
																	"numinlets" : 0
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
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-8", 0 ],
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
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-39", 1 ],
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
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
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
																	"source" : [ "obj-42", 1 ],
																	"destination" : [ "obj-40", 0 ],
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
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-41", 0 ],
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
																	"source" : [ "obj-42", 2 ],
																	"destination" : [ "obj-41", 0 ],
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
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
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
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-7", 0 ],
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
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"default_fontsize" : 10.0,
														"fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 503.0, 214.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /action /message /value",
													"numoutlets" : 4,
													"patching_rect" : [ 80.0, 45.0, 459.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-34",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /action /value /ramp /message",
													"numoutlets" : 5,
													"patching_rect" : [ 45.0, 285.0, 312.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "", "" ],
													"id" : "obj-33",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 20.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-32",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setmin $1",
													"numoutlets" : 1,
													"patching_rect" : [ 480.0, 344.0, 58.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"numoutlets" : 2,
													"patching_rect" : [ 495.0, 320.0, 47.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "int" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter",
													"numoutlets" : 4,
													"patching_rect" : [ 447.0, 371.0, 109.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "", "", "int" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1000.",
													"numoutlets" : 1,
													"patching_rect" : [ 596.0, 261.0, 50.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "float" ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 0",
													"numoutlets" : 1,
													"patching_rect" : [ 445.0, 290.0, 161.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang" ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /repeat /wait",
													"numoutlets" : 3,
													"patching_rect" : [ 503.0, 239.0, 204.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "" ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p tgate",
													"numoutlets" : 1,
													"patching_rect" : [ 445.0, 267.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang" ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 2,
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
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 1000.",
																	"numoutlets" : 1,
																	"patching_rect" : [ 146.0, 92.0, 50.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "float" ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 146.0, 63.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-2",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 98.0, 105.0, 15.0, 15.0 ],
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"numoutlets" : 1,
																	"patching_rect" : [ 31.0, 145.0, 22.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "int" ],
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b 0 b",
																	"numoutlets" : 3,
																	"patching_rect" : [ 30.0, 83.0, 78.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang", "int", "bang" ],
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "del 0",
																	"numoutlets" : 1,
																	"patching_rect" : [ 31.0, 123.0, 125.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 1 1",
																	"numoutlets" : 1,
																	"patching_rect" : [ 30.0, 60.0, 50.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 70.0, 38.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-8",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-5", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-7", 1 ],
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
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 0 ],
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
																	"source" : [ "obj-5", 1 ],
																	"destination" : [ "obj-7", 0 ],
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
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numoutlets" : 1,
													"patching_rect" : [ 45.0, 315.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 72.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 45.0, 20.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numoutlets" : 2,
													"patching_rect" : [ 310.0, 370.0, 47.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"numoutlets" : 1,
													"patching_rect" : [ 466.0, 164.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang" ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.",
													"numoutlets" : 1,
													"patching_rect" : [ 466.0, 118.0, 70.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change 0 -",
													"numoutlets" : 3,
													"patching_rect" : [ 466.0, 140.0, 62.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"numoutlets" : 1,
													"patching_rect" : [ 370.0, 164.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang" ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.",
													"numoutlets" : 1,
													"patching_rect" : [ 370.0, 120.0, 65.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change 0 +",
													"numoutlets" : 3,
													"patching_rect" : [ 370.0, 142.0, 65.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 481.0, 99.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-20",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"numoutlets" : 1,
													"patching_rect" : [ 43.0, 371.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang" ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 410.0, 15.0, 15.0 ],
													"id" : "obj-23",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 4",
													"numoutlets" : 4,
													"patching_rect" : [ 43.0, 344.0, 423.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-24",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 5",
													"numoutlets" : 5,
													"patching_rect" : [ 122.0, 73.0, 417.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "", "" ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 120.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang" ],
													"id" : "obj-26",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 5",
													"numoutlets" : 5,
													"patching_rect" : [ 80.0, 97.0, 396.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "", "" ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 178.0, 140.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0.",
													"numoutlets" : 1,
													"patching_rect" : [ 178.0, 118.0, 55.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-29",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 274.0, 141.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl compare",
													"numoutlets" : 2,
													"patching_rect" : [ 274.0, 120.0, 65.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-31",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-12", 3 ],
													"destination" : [ "obj-21", 0 ],
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
													"source" : [ "obj-33", 2 ],
													"destination" : [ "obj-48", 2 ],
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
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-34", 1 ],
													"destination" : [ "obj-25", 1 ],
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
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-34", 0 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [ 454.5, 340.0, 456.5, 340.0 ]
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-25", 4 ],
													"destination" : [ "obj-15", 1 ],
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
													"source" : [ "obj-24", 2 ],
													"destination" : [ "obj-13", 0 ],
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
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 89.5, 231.0, 454.5, 231.0 ]
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
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 283.5, 231.0, 454.5, 231.0 ]
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-27", 4 ],
													"destination" : [ "obj-15", 0 ],
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
													"source" : [ "obj-27", 3 ],
													"destination" : [ "obj-18", 0 ],
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
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-28", 0 ],
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-25", 0 ],
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 319.5, 400.0, 52.0, 400.0 ]
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 456.5, 400.0, 52.0, 400.0 ]
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-23", 0 ],
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
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-48", 1 ],
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
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-33", 3 ],
													"destination" : [ "obj-12", 1 ],
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
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-2", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 525.0, 140.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"comment" : "to in #"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p adress_in",
									"numoutlets" : 5,
									"patching_rect" : [ 300.0, 115.0, 245.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "", "", "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 930.0, 44.0, 480.0, 658.0 ],
										"bglocked" : 0,
										"defrect" : [ 930.0, 44.0, 480.0, 658.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend name",
													"numoutlets" : 1,
													"patching_rect" : [ 195.0, 510.0, 100.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numoutlets" : 2,
													"patching_rect" : [ 195.0, 459.0, 109.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-53",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"numoutlets" : 2,
													"patching_rect" : [ 195.0, 420.0, 93.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-54",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s/%s",
													"numoutlets" : 1,
													"patching_rect" : [ 195.0, 485.0, 93.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-55",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 315.0, 265.0, 15.0, 15.0 ],
													"id" : "obj-52",
													"numinlets" : 1,
													"comment" : "to thispatcher"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adresses",
													"numoutlets" : 1,
													"patching_rect" : [ 25.0, 436.0, 62.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "<separator>" ],
													"id" : "obj-43",
													"fontname" : "Verdana",
													"numinlets" : 1,
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
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.parameters_dumper",
																	"numoutlets" : 1,
																	"patching_rect" : [ 25.0, 75.0, 138.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t s <separator> s",
																	"numoutlets" : 3,
																	"patching_rect" : [ 26.0, 46.0, 139.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "", "<separator>", "" ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.returns_dumper",
																	"numoutlets" : 1,
																	"patching_rect" : [ 165.0, 75.0, 126.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 90.0, 113.0, 15.0, 15.0 ],
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 26.0, 26.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"numinlets" : 0,
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
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 95.5, 89.0, 99.0, 89.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 34.5, 104.0, 99.0, 104.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 174.5, 104.0, 99.0, 104.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "mapping_object_src_0",
													"text" : "jcom.receive dumb",
													"numoutlets" : 2,
													"patching_rect" : [ 165.0, 545.0, 207.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numoutlets" : 1,
													"patching_rect" : [ 350.0, 290.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess -1",
													"numoutlets" : 1,
													"patching_rect" : [ 268.0, 164.0, 69.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"numoutlets" : 1,
													"patching_rect" : [ 25.0, 394.0, 50.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 0 clear",
													"numoutlets" : 3,
													"patching_rect" : [ 25.0, 415.0, 119.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "int", "clear" ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"numoutlets" : 2,
													"patching_rect" : [ 140.0, 73.0, 57.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 165.0, 598.0, 15.0, 15.0 ],
													"id" : "obj-10",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 350.0, 189.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"numoutlets" : 3,
													"patching_rect" : [ 238.0, 186.0, 44.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 288.0, 265.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"comment" : "to thispatcher"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p script",
													"numoutlets" : 2,
													"patching_rect" : [ 288.0, 240.0, 45.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 129.0, 588.0, 496.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 129.0, 588.0, 496.0, 199.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 135.0, 175.0, 15.0, 15.0 ],
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "92",
																	"numoutlets" : 1,
																	"patching_rect" : [ 155.0, 115.0, 45.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "presentation_rect 33 21 $1 19",
																	"numoutlets" : 1,
																	"patching_rect" : [ 135.0, 145.0, 177.0, 18.0 ],
																	"fontsize" : 10.970939,
																	"outlettype" : [ "" ],
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "129",
																	"numoutlets" : 1,
																	"patching_rect" : [ 80.0, 115.0, 45.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"numoutlets" : 1,
																	"patching_rect" : [ 69.0, 45.0, 54.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront in_slash, script bringtofront module_in#",
																	"linecount" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 218.0, 63.0, 246.0, 28.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-4",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-5",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront module_in",
																	"numoutlets" : 1,
																	"patching_rect" : [ 28.0, 67.0, 159.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-15", 0 ],
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
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-15", 0 ],
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
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-7", 0 ],
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
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-2", 0 ],
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
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 0 ],
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
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 350.0, 330.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"numinlets" : 1,
													"comment" : "to nr"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend max",
													"numoutlets" : 1,
													"patching_rect" : [ 379.0, 254.0, 74.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"numoutlets" : 1,
													"patching_rect" : [ 379.0, 233.0, 25.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"numoutlets" : 3,
													"patching_rect" : [ 288.0, 213.0, 44.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"numoutlets" : 2,
													"patching_rect" : [ 62.0, 261.0, 96.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-19",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s 1",
													"numoutlets" : 3,
													"patching_rect" : [ 140.0, 95.0, 215.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "int" ],
													"id" : "obj-20",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"numoutlets" : 1,
													"patching_rect" : [ 238.0, 117.0, 88.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"numoutlets" : 4,
													"patching_rect" : [ 238.0, 139.0, 160.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"save" : [ "#N", "coll", "jcom.modules_instances", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "switch 2 1",
													"numoutlets" : 1,
													"patching_rect" : [ 62.0, 341.0, 96.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-23",
													"fontname" : "Verdana",
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numoutlets" : 1,
													"patching_rect" : [ 238.0, 211.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-24",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s",
													"numoutlets" : 1,
													"patching_rect" : [ 62.0, 296.0, 60.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"numoutlets" : 2,
													"patching_rect" : [ 182.0, 261.0, 42.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-26",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0",
													"numoutlets" : 1,
													"patching_rect" : [ 238.0, 164.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s/%s",
													"numoutlets" : 1,
													"patching_rect" : [ 148.0, 295.0, 80.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 182.0, 243.0, 13.0, 13.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-29",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"numoutlets" : 2,
													"patching_rect" : [ 350.0, 212.0, 39.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 195.0, 395.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-42",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"numoutlets" : 1,
													"patching_rect" : [ 125.0, 490.0, 57.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-45",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"numoutlets" : 2,
													"patching_rect" : [ 62.0, 368.0, 242.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-46",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"numoutlets" : 1,
													"patching_rect" : [ 25.0, 461.0, 89.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-47",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 125.0, 512.0, 15.0, 15.0 ],
													"id" : "obj-49",
													"numinlets" : 1,
													"comment" : "to module in function menu"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 140.0, 54.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-50",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this is to avoid the function menu to change when only the instance number changes",
													"linecount" : 10,
													"numoutlets" : 0,
													"patching_rect" : [ 32.0, 45.0, 58.0, 126.0 ],
													"fontsize" : 9.873845,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-51",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
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
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-52", 0 ],
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
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-54", 0 ],
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
													"source" : [ "obj-54", 1 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-47", 0 ],
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
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [ 247.5, 160.0, 394.5, 160.0 ]
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
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-15", 0 ],
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
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 247.5, 183.0, 359.5, 183.0 ]
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 247.5, 207.0, 297.5, 207.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 277.5, 183.0, 247.5, 183.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-12", 0 ],
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
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-21", 0 ],
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
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-28", 1 ],
													"hidden" : 0,
													"midpoints" : [ 359.5, 283.0, 218.5, 283.0 ]
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
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-28", 0 ],
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
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 1 ],
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
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [ 34.5, 485.0, 134.5, 485.0 ]
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
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-46", 0 ],
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
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 345.5, 121.0, 359.0, 121.0, 359.0, 44.0, 34.5, 44.0 ]
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
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 416.0, 143.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 256.0, 143.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"comment" : "to module out instance number"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 105.0, 145.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 205.0, 143.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"comment" : "to module out function menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 144.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"comment" : "to module out function menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p adress_out",
									"numoutlets" : 5,
									"patching_rect" : [ 30.0, 115.0, 245.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "", "", "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 661.0, 100.0, 504.0, 615.0 ],
										"bglocked" : 0,
										"defrect" : [ 661.0, 100.0, 504.0, 615.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numoutlets" : 1,
													"patching_rect" : [ 315.0, 460.0, 70.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.attributes_dumper",
													"numoutlets" : 2,
													"patching_rect" : [ 200.0, 435.0, 133.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /ramp/drive",
													"linecount" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 200.0, 460.0, 85.0, 30.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_ramp",
													"numoutlets" : 0,
													"patching_rect" : [ 200.0, 495.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 315.0, 260.0, 16.0, 16.0 ],
													"id" : "obj-46",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adresses",
													"numoutlets" : 1,
													"patching_rect" : [ 25.0, 440.0, 62.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "<separator>" ],
													"id" : "obj-42",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 98.0, 82.0, 317.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 98.0, 82.0, 317.0, 199.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.messages_dumper",
																	"numoutlets" : 1,
																	"patching_rect" : [ 26.0, 77.0, 130.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t s <separator> s",
																	"numoutlets" : 3,
																	"patching_rect" : [ 26.0, 46.0, 130.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "", "<separator>", "" ],
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.parameters_dumper",
																	"numoutlets" : 1,
																	"patching_rect" : [ 146.0, 77.0, 138.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 86.0, 113.0, 15.0, 15.0 ],
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 26.0, 26.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"numinlets" : 0,
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
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 91.0, 89.0, 95.0, 89.0 ]
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
																	"source" : [ "obj-2", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numoutlets" : 1,
													"patching_rect" : [ 348.0, 290.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess -1",
													"numoutlets" : 1,
													"patching_rect" : [ 266.0, 163.0, 69.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"numoutlets" : 1,
													"patching_rect" : [ 23.0, 393.0, 50.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 0 clear",
													"numoutlets" : 3,
													"patching_rect" : [ 23.0, 414.0, 122.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "int", "clear" ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"numoutlets" : 2,
													"patching_rect" : [ 146.0, 72.0, 57.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 310.0, 490.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"patching_rect" : [ 348.0, 188.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"numoutlets" : 3,
													"patching_rect" : [ 236.0, 185.0, 44.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 287.0, 262.0, 15.0, 15.0 ],
													"id" : "obj-17",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p script",
													"numoutlets" : 2,
													"patching_rect" : [ 287.0, 237.0, 45.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 255.0, 630.0, 496.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 255.0, 630.0, 496.0, 199.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "92",
																	"numoutlets" : 1,
																	"patching_rect" : [ 190.0, 115.0, 50.0, 17.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "" ],
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "129",
																	"numoutlets" : 1,
																	"patching_rect" : [ 120.0, 115.0, 50.0, 17.0 ],
																	"fontsize" : 10.0,
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 150.0, 170.0, 15.0, 15.0 ],
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "presentation_rect 33 46 $1 19",
																	"numoutlets" : 1,
																	"patching_rect" : [ 150.0, 145.0, 177.0, 18.0 ],
																	"fontsize" : 10.970939,
																	"outlettype" : [ "" ],
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"numoutlets" : 1,
																	"patching_rect" : [ 69.0, 45.0, 54.0, 18.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront out_slash, script bringtofront module_out#",
																	"linecount" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 218.0, 63.0, 253.0, 28.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-4",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-5",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront module_out",
																	"numoutlets" : 1,
																	"patching_rect" : [ 28.0, 67.0, 166.0, 16.0 ],
																	"fontsize" : 9.873845,
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"numinlets" : 2
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-9", 0 ],
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
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-16", 0 ],
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
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-2", 0 ],
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
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 348.0, 323.0, 15.0, 15.0 ],
													"id" : "obj-19",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend max",
													"numoutlets" : 1,
													"patching_rect" : [ 377.0, 253.0, 74.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-20",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"numoutlets" : 1,
													"patching_rect" : [ 377.0, 232.0, 25.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"numoutlets" : 3,
													"patching_rect" : [ 287.0, 210.0, 44.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-22",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2",
													"numoutlets" : 2,
													"patching_rect" : [ 60.0, 260.0, 96.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-23",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s 1",
													"numoutlets" : 3,
													"patching_rect" : [ 146.0, 94.0, 191.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "int" ],
													"id" : "obj-24",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"numoutlets" : 1,
													"patching_rect" : [ 236.0, 116.0, 88.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-25",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"numoutlets" : 4,
													"patching_rect" : [ 236.0, 138.0, 160.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-26",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"save" : [ "#N", "coll", "jcom.modules_instances", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "switch 2 1",
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 339.0, 96.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-27",
													"fontname" : "Verdana",
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"numoutlets" : 1,
													"patching_rect" : [ 236.0, 210.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-28",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s",
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 295.0, 60.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-29",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"numoutlets" : 2,
													"patching_rect" : [ 180.0, 260.0, 42.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0",
													"numoutlets" : 1,
													"patching_rect" : [ 236.0, 163.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ],
													"id" : "obj-31",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s/%s",
													"numoutlets" : 1,
													"patching_rect" : [ 146.0, 294.0, 80.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-32",
													"fontname" : "Verdana",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 180.0, 242.0, 13.0, 13.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-33",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"numoutlets" : 2,
													"patching_rect" : [ 348.0, 211.0, 39.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-34",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 200.0, 405.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-45",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"numoutlets" : 1,
													"patching_rect" : [ 127.0, 497.0, 57.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-48",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"numoutlets" : 2,
													"patching_rect" : [ 60.0, 372.0, 273.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ],
													"id" : "obj-49",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"numoutlets" : 1,
													"patching_rect" : [ 25.0, 470.0, 89.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ],
													"id" : "obj-50",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 127.0, 519.0, 15.0, 15.0 ],
													"id" : "obj-52",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 146.0, 53.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-53",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this is to avoid the function menu to change when only the instance number changes",
													"linecount" : 10,
													"numoutlets" : 0,
													"patching_rect" : [ 30.0, 44.0, 58.0, 126.0 ],
													"fontsize" : 9.873845,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-54",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-50", 0 ],
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
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-24", 0 ],
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
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-19", 0 ],
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
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 245.5, 183.0, 357.5, 183.0 ]
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
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
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
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [ 245.5, 206.0, 296.5, 206.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 275.5, 182.0, 245.5, 182.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-16", 0 ],
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
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-25", 0 ],
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
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [ 357.5, 283.0, 216.5, 283.0 ]
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
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-23", 1 ],
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
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [ 34.5, 492.0, 136.5, 492.0 ]
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
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-27", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-49", 0 ],
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
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
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
													"source" : [ "obj-24", 2 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 327.5, 120.0, 349.0, 120.0, 349.0, 43.0, 32.5, 43.0 ]
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
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 301.0, 143.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"comment" : "to module in function menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 570.0, 304.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 219.0, 15.0, 15.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 31.0, 9.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-11", 0 ],
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
									"midpoints" : [ 567.5, 204.0, 567.5, 204.0 ]
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
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-5", 1 ],
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
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-15", 1 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-22", 2 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 707.5, 298.0, 586.0, 298.0, 586.0, 298.0, 579.0, 298.0 ]
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
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-5", 4 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 2 ],
									"hidden" : 0,
									"midpoints" : [ 366.0, 179.0, 414.833344, 179.0 ]
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 109.5, 250.0, 109.5, 250.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 23.0, 19.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-72",
					"presentation_rect" : [ 8.0, 23.0, 19.0, 19.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"One-to-one Mapper\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 17.0, 139.0, 235.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-73",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 17.0, 114.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-74",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 340.0, 13.0, 13.0 ],
					"id" : "obj-75",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out[1]",
					"text" : "jcom.parameter out/module/name @repetitions/allow 1 @priority 3 @type msg_symbol @description \"Destination module name of the mapping\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 348.0, 458.0, 401.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-76",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time/repeat 0.",
					"linecount" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 285.0, 80.0, 28.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-77",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"patching_rect" : [ 986.0, 525.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"id" : "obj-79",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-82",
					"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-80", 1 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-71", 3 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 213.125, 412.0, 315.5, 412.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1047.5, 519.0, 995.5, 519.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 995.5, 510.0, 995.5, 510.0 ]
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
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [ 117.5, 333.0, 24.0, 333.0 ]
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
					"source" : [ "obj-71", 7 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 340.625, 303.0, 372.5, 303.0 ]
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
					"source" : [ "obj-71", 4 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 245.0, 438.0, 180.5, 438.0 ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 132.0, 26.5, 132.0 ]
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
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-73", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.5, 174.0, 420.0, 174.0, 420.0, 115.0, 444.5, 115.0 ]
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
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 849.5, 329.0, 828.0, 329.0, 828.0, 231.0, 849.5, 231.0 ]
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
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 850.5, 398.0, 825.0, 398.0, 825.0, 344.0, 849.5, 344.0 ]
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
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-21", 1 ],
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 846.5, 218.0, 822.0, 218.0, 822.0, 161.0, 846.5, 161.0 ]
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
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 849.5, 482.0, 825.0, 482.0, 825.0, 425.0, 847.5, 425.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 849.5, 597.0, 828.0, 597.0, 828.0, 498.0, 849.5, 498.0 ]
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
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 852.5, 665.0, 828.0, 665.0, 828.0, 608.0, 852.5, 608.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-58", 0 ],
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
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-76", 0 ],
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
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 249.5, 531.0, 202.0, 531.0, 202.0, 470.0, 216.5, 470.0 ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 638.0, 120.0, 638.0, 120.0, 576.0, 143.5, 576.0 ]
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
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 850.5, 101.0, 825.0, 101.0, 825.0, 42.0, 849.5, 42.0 ]
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
 ]
	}

}
