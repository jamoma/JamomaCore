{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 62.0, 53.0, 1131.0, 655.0 ],
		"bglocked" : 0,
		"defrect" : [ 62.0, 53.0, 1131.0, 655.0 ],
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
					"fontname" : "Verdana",
					"arrow" : 0,
					"pattrmode" : 1,
					"presentation_rect" : [ 33.0, 46.0, 129.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "/input~", ",", "/filter~", ",", "/mapper", ",", "/control", ",", "/mouse", ",", "/limiter~", ",", "/tmapper", ",", "/editing_this_module" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 306.0, 435.0, 103.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-1",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in",
					"fontname" : "Verdana",
					"arrow" : 0,
					"pattrmode" : 1,
					"presentation_rect" : [ 33.0, 21.0, 129.0, 19.0 ],
					"numinlets" : 1,
					"items" : "/editing_this_module",
					"fontsize" : 10.0,
					"patching_rect" : [ 331.0, 375.0, 103.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-80",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 92.0, 211.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "in_com",
					"text" : "data :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 410.0, 23.0, 39.0, 19.0 ],
					"hidden" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 369.0, 22.0, 39.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "in_message",
					"text" : "0",
					"fontname" : "Verdana",
					"lines" : 1,
					"presentation_rect" : [ 455.0, 22.0, 113.0, 18.0 ],
					"hidden" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 844.0, 512.0, 113.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"keymode" : 1,
					"id" : "obj-8",
					"outlettype" : [ "", "int", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "in_value",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 451.0, 23.0, 35.0, 19.0 ],
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 843.0, 613.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 108.0, 183.0, 45.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "out_message",
					"text" : "0",
					"fontname" : "Verdana",
					"lines" : 1,
					"presentation_rect" : [ 455.0, 47.0, 114.0, 17.0 ],
					"hidden" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 841.0, 248.0, 114.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"keymode" : 1,
					"id" : "obj-4",
					"outlettype" : [ "", "int", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "out_com",
					"text" : "data :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 410.0, 47.0, 39.0, 19.0 ],
					"hidden" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 370.0, 45.0, 39.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_value",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 451.0, 48.0, 35.0, 19.0 ],
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 840.0, 347.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-6",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "module_in#",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 141.0, 21.0, 20.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 363.0, 312.0, 20.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 1,
					"id" : "obj-9",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 1,
					"mouseup" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "in_slash",
					"fontname" : "Verdana",
					"arrow" : 0,
					"menumode" : 1,
					"pattrmode" : 1,
					"presentation_rect" : [ 125.0, 21.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"items" : ".",
					"fontsize" : 10.0,
					"patching_rect" : [ 104.0, 21.0, 15.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-10",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "module_out#",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 141.0, 46.0, 20.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 171.0, 518.0, 20.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 1,
					"id" : "obj-11",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 2,
					"mouseup" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "out_slash",
					"fontname" : "Verdana",
					"arrow" : 0,
					"menumode" : 1,
					"pattrmode" : 1,
					"presentation_rect" : [ 126.0, 46.0, 15.0, 19.0 ],
					"numinlets" : 1,
					"items" : ".",
					"fontsize" : 10.0,
					"patching_rect" : [ 104.0, 41.0, 15.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-12",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "wait_time",
					"text" : "jcom.parameter wait_time @repetitions/allow 1 @type msg_float @description \"Wait time before sending the output data\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 469.0, 215.0, 340.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-13",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "repeat_time",
					"text" : "jcom.parameter repeat_time @repetitions/allow 1 @type msg_float @description \"minimum time between two repetitions\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 474.0, 140.0, 340.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-14",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "wait",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 354.0, 3.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 469.0, 195.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-17",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "tgate",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 478.0, 3.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 474.0, 119.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-18",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Repeat time (s) :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 387.0, 3.0, 95.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 387.0, 3.0, 95.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Wait time (s) :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 277.0, 3.0, 83.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 277.0, 3.0, 83.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p show_hide",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 986.0, 491.0, 71.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-21",
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 250.0, 148.0, 789.0, 337.0 ],
						"bglocked" : 0,
						"defrect" : [ 250.0, 148.0, 789.0, 337.0 ],
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
									"maxclass" : "number",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 44.0, 45.0, 35.0, 18.0 ],
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 329.0, 247.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide out_message, script hide out_value, script hide out_com",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 329.0, 199.0, 187.0, 28.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide out_message, script show out_value, script bringtofront out_value, script show out_com, script bringtofront out_com",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 366.0, 101.0, 346.0, 28.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show out_message, script hide out_value, script bringtofront out_message, script show out_com, script bringtofront in_com",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 477.0, 145.0, 346.0, 28.0 ],
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 3 4 2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 329.0, 67.0, 195.0, 18.0 ],
									"numoutlets" : 6,
									"id" : "obj-6",
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 235.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide in_message, script hide in_value, script hide in_com",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 16.0, 175.0, 173.0, 28.0 ],
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script hide in_message, script show in_value, script bringtofront in_value, script show in_com, script bringtofront in_com",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 53.0, 104.0, 230.0, 40.0 ],
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script show in_message, script hide in_value, script bringtofront in_message, script show in_com, script bringtofront in_com",
									"linecount" : 5,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 200.0, 151.0, 143.0, 64.0 ],
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 3 4 2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 16.0, 72.0, 243.0, 18.0 ],
									"numoutlets" : 6,
									"id" : "obj-11",
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 329.0, 45.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 16.0, 45.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 209.5, 231.0, 25.0, 231.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 62.5, 211.0, 25.0, 211.0 ]
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-11", 2 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-11", 4 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 375.5, 231.0, 338.0, 231.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 486.5, 238.0, 338.0, 238.0 ]
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
									"source" : [ "obj-6", 2 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "action :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 277.0, 47.0, 47.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 236.0, 44.0, 47.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "action :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 277.0, 23.0, 47.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 236.0, 22.0, 47.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_action[1]",
					"text" : "jcom.parameter module_in_action @repetitions/allow 1 @type msg_int @description \"Destination module of the mapping\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 839.0, 449.0, 323.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-29",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 843.0, 532.0, 58.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-30",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "in_value[1]",
					"text" : "jcom.parameter in_value @repetitions/allow 1 @type msg_float @description \"Message sent to output\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 843.0, 633.0, 312.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-32",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "in_message[1]",
					"text" : "jcom.parameter in_message @repetitions/allow 1 @type msg_generic @description \"Message sent to output\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 843.0, 557.0, 312.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-34",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_action[1]",
					"text" : "jcom.parameter module_out_action @repetitions/allow 1 @type msg_int @description \"Destination module of the mapping\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 837.0, 187.0, 331.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-36",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 841.0, 267.0, 58.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_value[1]",
					"text" : "jcom.parameter out_value @repetitions/allow 1 @type msg_float @description \"value sent to output\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 841.0, 368.0, 312.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-39",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_message[1]",
					"text" : "jcom.parameter out_message @repetitions/allow 1 @type msg_generic @description \"Message sent to output\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 841.0, 292.0, 312.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-41",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out_action",
					"fontname" : "Verdana",
					"arrow" : 0,
					"pattrmode" : 1,
					"presentation_rect" : [ 322.0, 46.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "impulsion", ",", "value", ",", "message", ",", "counter" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 837.0, 165.0, 83.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-42",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in_action",
					"fontname" : "Verdana",
					"arrow" : 0,
					"pattrmode" : 1,
					"presentation_rect" : [ 322.0, 21.0, 83.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "impulsion", ",", "select", "value", ",", "select", "message", ",", "threshold", "up", ",", "threshold", "down" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 838.0, 429.0, 83.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-43",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 172.0, 324.0, 64.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-46",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "__________________________________________________________________________________________",
					"fontname" : "Verdana",
					"presentation_rect" : [ 5.0, 28.0, 577.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 1.0, 30.0, 580.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_function",
					"text" : "jcom.parameter module_in_function @repetitions/allow 1 @type msg_symbol @description \"Source module function of the mapping\" @priority 5",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 240.0, 495.0, 400.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-51",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_function",
					"text" : "jcom.parameter module_out_function @repetitions/allow 1 @type msg_symbol @description \"Destination function of the mapping\" @priority 6",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 170.0, 602.0, 389.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-53",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in_fct",
					"fontname" : "Verdana",
					"arrow" : 0,
					"pattrmode" : 1,
					"presentation_rect" : [ 164.0, 21.0, 109.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "button", ",", "delta/angle", ",", "delta/magnitude", ",", "delta/x", ",", "delta/y", ",", "position/x", ",", "position/y", ",", "<separator>", ",", "mouse_on", ",", "reference", ",", "ui/freeze" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 207.0, 475.0, 90.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-54",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out_fct",
					"fontname" : "Verdana",
					"arrow" : 0,
					"pattrmode" : 1,
					"presentation_rect" : [ 164.0, 46.0, 109.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "audio/bypass", ",", "audio/gain", ",", "audio/mix", ",", "audio/mute", ",", "lookahead", ",", "mode", ",", "postamp", ",", "preamp", ",", "release", ",", "threshold", ",", "ui/freeze", ",", "<separator>", ",", "documentation/generate", ",", "init", ",", "module/view_internals", ",", "panel/open", ",", "preset/clear", ",", "preset/copy", ",", "preset/default", ",", "preset/interpolate", ",", "preset/post", ",", "preset/read", ",", "preset/recall", ",", "preset/store", ",", "preset/storenext", ",", "preset/write", ",", "ui/refresh" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 134.0, 581.0, 90.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-55",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_nr",
					"text" : "jcom.parameter module_in_nr @repetitions/allow 1 @type msg_int @description \"Source module instance of the mapping\" @priority 2",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 362.0, 332.0, 348.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-58",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in[1]",
					"text" : "jcom.parameter module_in @repetitions/allow 1 @type msg_symbol @description \"Source module of the mapping\" @priority 1",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 373.0, 397.0, 353.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-60",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_nr",
					"text" : "jcom.parameter module_out_nr @repetitions/allow 1 @priority 4 @type msg_int @description \"Destination module instance of the mapping\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 171.0, 541.0, 388.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-62",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Out",
					"fontname" : "Verdana",
					"presentation_rect" : [ 8.0, 47.0, 27.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 8.0, 43.0, 27.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-65"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 108.0, 227.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-66",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 108.0, 205.0, 86.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-67",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 39.0, 113.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-68",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mapper",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 108.0, 284.0, 274.0, 18.0 ],
					"numoutlets" : 9,
					"id" : "obj-71",
					"outlettype" : [ "", "clear", "", "", "", "clear", "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 477.0, 462.0, 649.0, 346.0 ],
						"bglocked" : 0,
						"defrect" : [ 477.0, 462.0, 649.0, 346.0 ],
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
									"text" : "jcom.init",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 485.0, 215.0, 54.0, 19.0 ],
									"numoutlets" : 2,
									"id" : "obj-41",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 485.0, 265.0, 89.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.modules_dumper",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 485.0, 241.0, 122.0, 18.0 ],
									"numoutlets" : 3,
									"id" : "obj-22",
									"outlettype" : [ "", "", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_dst_0[1]",
									"text" : "jcom.send jcom.remote.module.to",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 85.0, 275.0, 180.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_prepend_0[1]",
									"text" : "prepend /module/parameter",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 85.0, 250.0, 150.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p engine",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 345.0, 205.0, 51.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 32.0, 131.0, 1123.0, 500.0 ],
										"bglocked" : 0,
										"defrect" : [ 32.0, 131.0, 1123.0, 500.0 ],
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
													"maxclass" : "message",
													"text" : "setmin $1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 823.0, 347.0, 58.0, 16.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 838.0, 313.0, 47.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "counter",
													"fontname" : "Verdana",
													"numinlets" : 5,
													"fontsize" : 9.873845,
													"patching_rect" : [ 790.0, 374.0, 109.0, 18.0 ],
													"numoutlets" : 4,
													"id" : "obj-3",
													"outlettype" : [ "int", "", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1000.",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 692.0, 291.0, 50.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 541.0, 320.0, 161.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /repeat_time /wait_time",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 599.0, 269.0, 204.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-6",
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p tgate",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 541.0, 297.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "bang" ],
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
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 146.0, 92.0, 50.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 146.0, 63.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-2",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 98.0, 105.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-3",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 31.0, 145.0, 22.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-4",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b 0 b",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 30.0, 83.0, 78.0, 18.0 ],
																	"numoutlets" : 3,
																	"id" : "obj-5",
																	"outlettype" : [ "bang", "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "del 0",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 31.0, 123.0, 125.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 1 1",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 30.0, 60.0, 50.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-7",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 70.0, 38.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-8",
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 40.5, 169.0, 26.0, 169.0, 26.0, 53.0, 39.5, 53.0 ]
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
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
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
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-4", 0 ],
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
																	"source" : [ "obj-5", 2 ],
																	"destination" : [ "obj-3", 0 ],
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
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 43.0, 214.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 157.0, 112.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 43.0, 61.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-10",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /out_value /out_message",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 329.0, 243.0, 509.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-11",
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /module_out_action /module_in_action /in_message /in_value",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 43.0, 82.0, 586.0, 18.0 ],
													"numoutlets" : 5,
													"id" : "obj-12",
													"outlettype" : [ "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 541.0, 376.0, 47.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-13",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 541.0, 204.0, 22.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-14",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 541.0, 158.0, 70.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-15",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change 0 -",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 541.0, 180.0, 62.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-16",
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 445.0, 204.0, 22.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-17",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0.",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 445.0, 160.0, 65.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-18",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change 0 +",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 445.0, 182.0, 65.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-19",
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 556.0, 139.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-20",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 292.0, 372.0, 47.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-21",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 43.0, 371.0, 22.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-22",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 43.0, 410.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-23",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 4",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 43.0, 344.0, 758.0, 18.0 ],
													"numoutlets" : 4,
													"id" : "obj-24",
													"outlettype" : [ "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 5",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 197.0, 113.0, 417.0, 18.0 ],
													"numoutlets" : 5,
													"id" : "obj-25",
													"outlettype" : [ "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 157.0, 160.0, 22.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-26",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 5",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 157.0, 137.0, 396.0, 18.0 ],
													"numoutlets" : 5,
													"id" : "obj-27",
													"outlettype" : [ "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 253.0, 180.0, 32.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-28",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0.",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 253.0, 158.0, 55.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-29",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 349.0, 181.0, 32.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-30",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl compare",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 349.0, 160.0, 65.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-31",
													"outlettype" : [ "", "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-25", 2 ],
													"destination" : [ "obj-31", 1 ],
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
													"source" : [ "obj-27", 2 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 799.5, 400.0, 52.0, 400.0 ]
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
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 301.5, 400.0, 52.0, 400.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 550.5, 400.0, 52.0, 400.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
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
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-29", 0 ],
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
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-21", 0 ],
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
													"source" : [ "obj-12", 4 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 619.5, 235.0, 338.5, 235.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-21", 1 ],
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
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-19", 0 ],
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
													"source" : [ "obj-25", 3 ],
													"destination" : [ "obj-18", 1 ],
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
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-16", 0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 454.5, 231.0, 550.5, 231.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 358.5, 231.0, 550.5, 231.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 262.5, 231.0, 550.5, 231.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 166.5, 231.0, 550.5, 231.0 ]
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
													"source" : [ "obj-24", 2 ],
													"destination" : [ "obj-13", 0 ],
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
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 828.5, 265.0, 608.5, 265.0 ]
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
													"source" : [ "obj-25", 4 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 3 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 2 ],
													"destination" : [ "obj-25", 1 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 1 ],
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
													"source" : [ "obj-24", 3 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [ 550.5, 340.0, 791.5, 340.0 ]
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
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-2", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 519.0, 130.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-4",
									"comment" : "to in #"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p adress_in",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 9.873845,
									"patching_rect" : [ 289.0, 102.0, 245.0, 18.0 ],
									"numoutlets" : 5,
									"id" : "obj-5",
									"outlettype" : [ "clear", "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 558.0, 44.0, 480.0, 658.0 ],
										"bglocked" : 0,
										"defrect" : [ 558.0, 44.0, 480.0, 658.0 ],
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
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 195.0, 459.0, 109.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-53",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 195.0, 420.0, 93.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-54",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s/%s",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 195.0, 485.0, 93.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-55",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 315.0, 265.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-52",
													"comment" : "to thispatcher"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adresses",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 25.0, 436.0, 62.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-43",
													"outlettype" : [ "" ],
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
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 25.0, 75.0, 138.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t s <separator> s",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 26.0, 46.0, 139.0, 18.0 ],
																	"numoutlets" : 3,
																	"id" : "obj-2",
																	"outlettype" : [ "", "<separator>", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.returns_dumper",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 165.0, 75.0, 126.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 90.0, 113.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-4",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 26.0, 26.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-5",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 2 ],
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
																	"midpoints" : [ 174.5, 104.0, 99.0, 104.0 ]
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
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 95.5, 89.0, 99.0, 89.0 ]
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
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "mapping_object_src_0",
													"text" : "jcom.receive jcom.remote.module.from",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 165.0, 545.0, 207.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-1",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "mapping_object_route_0",
													"text" : "jcom.oscroute",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 165.0, 579.0, 224.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 350.0, 290.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess -1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 268.0, 164.0, 69.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 25.0, 394.0, 50.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 0 clear",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 25.0, 415.0, 119.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-7",
													"outlettype" : [ "", "int", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 140.0, 73.0, 57.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-8",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 165.0, 598.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-10",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 350.0, 189.0, 32.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 238.0, 186.0, 44.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-12",
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 288.0, 265.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-13",
													"comment" : "to thispatcher"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p script",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 288.0, 240.0, 45.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-14",
													"outlettype" : [ "", "" ],
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
																	"numinlets" : 1,
																	"patching_rect" : [ 135.0, 175.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-9",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "92",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 155.0, 115.0, 45.0, 16.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-8",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "presentation_rect 33 21 $1 19",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.970939,
																	"patching_rect" : [ 135.0, 145.0, 177.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-15",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "129",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 80.0, 115.0, 45.0, 16.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-7",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 69.0, 45.0, 54.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront in_slash, script bringtofront module_in#",
																	"linecount" : 2,
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 218.0, 63.0, 246.0, 28.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-4",
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-5",
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront module_in",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 28.0, 67.0, 159.0, 16.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"outlettype" : [ "" ]
																}

															}
 ],
														"lines" : [ 															{
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
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
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
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-7", 0 ],
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
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-8", 0 ],
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
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 350.0, 330.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-15",
													"comment" : "to nr"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend max",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 379.0, 254.0, 74.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-16",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 379.0, 233.0, 25.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-17",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 288.0, 213.0, 44.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-18",
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 62.0, 261.0, 96.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-19",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 140.0, 95.0, 215.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-20",
													"outlettype" : [ "", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 238.0, 117.0, 88.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-21",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 238.0, 139.0, 160.0, 18.0 ],
													"numoutlets" : 4,
													"id" : "obj-22",
													"outlettype" : [ "", "", "", "" ],
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
													"fontname" : "Verdana",
													"numinlets" : 3,
													"fontsize" : 9.873845,
													"patching_rect" : [ 62.0, 341.0, 96.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-23",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 238.0, 211.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-24",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 62.0, 296.0, 60.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-25",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 182.0, 261.0, 42.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-26",
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 238.0, 164.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-27",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s/%s",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 148.0, 295.0, 80.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-28",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 182.0, 243.0, 13.0, 13.0 ],
													"numoutlets" : 1,
													"id" : "obj-29",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 350.0, 212.0, 39.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-30",
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 195.0, 395.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-42",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 125.0, 490.0, 57.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-45",
													"outlettype" : [ "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 62.0, 368.0, 242.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-46",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 25.0, 461.0, 89.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-47",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 125.0, 512.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-49",
													"comment" : "to module in function menu"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 140.0, 54.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-50",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this is to avoid the function menu to change when only the instance number changes",
													"linecount" : 10,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 32.0, 45.0, 58.0, 126.0 ],
													"numoutlets" : 0,
													"id" : "obj-51"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-25", 0 ],
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
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-46", 0 ],
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
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-45", 0 ],
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
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-49", 0 ],
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
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-28", 0 ],
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
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-23", 2 ],
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
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-28", 1 ],
													"hidden" : 0,
													"midpoints" : [ 359.5, 283.0, 218.5, 283.0 ]
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
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-21", 0 ],
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
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 277.5, 183.0, 247.5, 183.0 ]
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 247.5, 207.0, 297.5, 207.0 ]
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
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
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 247.5, 183.0, 359.5, 183.0 ]
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
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-15", 0 ],
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
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-20", 0 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-43", 0 ],
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
													"source" : [ "obj-54", 1 ],
													"destination" : [ "obj-55", 1 ],
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
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-53", 0 ],
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
													"source" : [ "obj-46", 1 ],
													"destination" : [ "obj-53", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [ 204.5, 521.0, 379.5, 521.0 ]
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 405.0, 130.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 256.0, 130.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"comment" : "to module out instance number"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 145.0, 130.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 130.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-11",
									"comment" : "to module out function menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 30.0, 131.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-14",
									"comment" : "to module out function menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p adress_out",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 9.873845,
									"patching_rect" : [ 31.0, 102.0, 245.0, 18.0 ],
									"numoutlets" : 5,
									"id" : "obj-15",
									"outlettype" : [ "clear", "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 398.0, 125.0, 498.0, 585.0 ],
										"bglocked" : 0,
										"defrect" : [ 398.0, 125.0, 498.0, 585.0 ],
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
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 315.0, 260.0, 16.0, 16.0 ],
													"numoutlets" : 0,
													"id" : "obj-46",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 210.0, 455.0, 123.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-43",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 210.0, 430.0, 100.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-44",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf set %s/%s",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 210.0, 480.0, 100.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-55",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adresses",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 25.0, 440.0, 62.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-42",
													"outlettype" : [ "" ],
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
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 26.0, 77.0, 130.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t s <separator> s",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 26.0, 46.0, 130.0, 18.0 ],
																	"numoutlets" : 3,
																	"id" : "obj-2",
																	"outlettype" : [ "", "<separator>", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.parameters_dumper",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 146.0, 77.0, 138.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 86.0, 113.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-4",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 26.0, 26.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-5",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 2 ],
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
																	"midpoints" : [ 155.5, 104.0, 95.0, 104.0 ]
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
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 91.0, 89.0, 95.0, 89.0 ]
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
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 348.0, 290.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess -1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 266.0, 163.0, 69.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 23.0, 393.0, 50.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 0 clear",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 23.0, 414.0, 122.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-10",
													"outlettype" : [ "", "int", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 146.0, 72.0, 57.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 210.0, 515.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-13",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 348.0, 188.0, 32.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-15",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 236.0, 185.0, 44.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-16",
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 287.0, 262.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-17",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p script",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 287.0, 237.0, 45.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-18",
													"outlettype" : [ "", "" ],
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
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"patching_rect" : [ 190.0, 115.0, 50.0, 17.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-10",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "129",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.0,
																	"patching_rect" : [ 120.0, 115.0, 50.0, 17.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-9",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 150.0, 170.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-7",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "presentation_rect 33 46 $1 19",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 10.970939,
																	"patching_rect" : [ 150.0, 145.0, 177.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-16",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 69.0, 45.0, 54.0, 18.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront out_slash, script bringtofront module_out#",
																	"linecount" : 2,
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 218.0, 63.0, 253.0, 28.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-4",
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-5",
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script bringtofront module_out",
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 28.0, 67.0, 166.0, 16.0 ],
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"outlettype" : [ "" ]
																}

															}
 ],
														"lines" : [ 															{
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
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
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
																	"destination" : [ "obj-10", 0 ],
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
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-16", 0 ],
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
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 348.0, 323.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-19",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend max",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 377.0, 253.0, 74.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-20",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 377.0, 232.0, 25.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-21",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 287.0, 210.0, 44.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-22",
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 60.0, 260.0, 96.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-23",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 146.0, 94.0, 191.0, 18.0 ],
													"numoutlets" : 3,
													"id" : "obj-24",
													"outlettype" : [ "", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 236.0, 116.0, 88.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-25",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 236.0, 138.0, 160.0, 18.0 ],
													"numoutlets" : 4,
													"id" : "obj-26",
													"outlettype" : [ "", "", "", "" ],
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
													"fontname" : "Verdana",
													"numinlets" : 3,
													"fontsize" : 9.873845,
													"patching_rect" : [ 60.0, 339.0, 96.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-27",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 236.0, 210.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-28",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 60.0, 295.0, 60.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-29",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 180.0, 260.0, 42.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-30",
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 236.0, 163.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-31",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s/%s",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 146.0, 294.0, 80.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-32",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 180.0, 242.0, 13.0, 13.0 ],
													"numoutlets" : 1,
													"id" : "obj-33",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 348.0, 211.0, 39.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-34",
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 210.0, 405.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-45",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 127.0, 497.0, 57.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-48",
													"outlettype" : [ "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 60.0, 372.0, 273.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-49",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 25.0, 470.0, 89.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-50",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 127.0, 519.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-52",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 146.0, 53.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-53",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this is to avoid the function menu to change when only the instance number changes",
													"linecount" : 10,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"patching_rect" : [ 30.0, 44.0, 58.0, 126.0 ],
													"numoutlets" : 0,
													"id" : "obj-54"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-24", 2 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 327.5, 120.0, 349.0, 120.0, 349.0, 43.0, 32.5, 43.0 ]
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
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
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-29", 0 ],
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
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-49", 0 ],
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
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-27", 1 ],
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
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [ 34.5, 492.0, 136.5, 492.0 ]
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
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-23", 1 ],
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
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-32", 0 ],
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
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-30", 0 ],
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
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-32", 1 ],
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
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-26", 0 ],
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
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-16", 0 ],
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
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-28", 0 ],
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
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-18", 0 ],
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
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-18", 1 ],
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
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 386.5, 313.0, 357.0, 313.0 ]
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
													"source" : [ "obj-34", 1 ],
													"destination" : [ "obj-21", 0 ],
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
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0,
													"midpoints" : [ 245.5, 159.0, 392.5, 159.0 ]
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
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-11", 0 ],
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
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 1 ],
													"destination" : [ "obj-43", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 1 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 290.0, 130.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-16",
									"comment" : "to module in function menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 460.0, 294.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-18",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /module_out /module_out_nr /module_out_function /module_in /module_in_nr /module_in_function",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 30.0, 55.0, 585.0, 18.0 ],
									"numoutlets" : 7,
									"id" : "obj-19",
									"outlettype" : [ "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 3.0, 206.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 31.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 354.5, 237.0, 94.5, 237.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [ 133.833328, 86.0, 153.5, 86.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 2 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 6 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 605.5, 190.0, 354.5, 190.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-15", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 355.0, 166.0, 386.5, 166.0 ]
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
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-19", 4 ],
									"destination" : [ "obj-5", 1 ],
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
									"source" : [ "obj-19", 5 ],
									"destination" : [ "obj-5", 2 ],
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
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-17", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 494.5, 288.0, 471.0, 288.0, 471.0, 291.0, 469.0, 291.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 2 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 597.5, 288.0, 476.0, 288.0, 476.0, 288.0, 469.0, 288.0 ]
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
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In",
					"fontname" : "Verdana",
					"presentation_rect" : [ 8.0, 23.0, 19.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 8.0, 23.0, 19.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-72"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"One-to-one Mapper\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 17.0, 139.0, 235.0, 30.0 ],
					"numoutlets" : 2,
					"id" : "obj-73",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 17.0, 114.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-74",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 340.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-75",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out[1]",
					"text" : "jcom.parameter module_out @repetitions/allow 1 @priority 3 @type msg_symbol @description \"Destination module of the mapping\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 348.0, 458.0, 353.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-76",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/wait_time 0.",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 194.0, 259.0, 196.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-77",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 194.0, 235.0, 68.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-78",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 986.0, 525.0, 64.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-79",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-82",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 132.0, 26.5, 132.0 ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 132.0, 26.5, 132.0 ]
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
					"midpoints" : [ 382.5, 428.0, 328.0, 428.0, 328.0, 371.0, 340.5, 371.0 ]
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
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-76", 0 ],
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 852.5, 587.0, 828.0, 587.0, 828.0, 509.0, 853.5, 509.0 ]
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
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 850.5, 323.0, 828.0, 323.0, 828.0, 245.0, 850.5, 245.0 ]
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 846.5, 218.0, 822.0, 218.0, 822.0, 161.0, 846.5, 161.0 ]
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
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 848.5, 482.0, 825.0, 482.0, 825.0, 425.0, 847.5, 425.0 ]
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 478.5, 250.0, 456.0, 250.0, 456.0, 186.0, 478.5, 186.0 ]
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 483.5, 174.0, 459.0, 174.0, 459.0, 115.0, 483.5, 115.0 ]
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
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-71", 5 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 276.875, 458.0, 216.5, 458.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 8 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 372.5, 303.0, 372.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 7 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [ 340.625, 360.0, 340.5, 360.0 ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 275.0, 117.5, 275.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 225.0, 203.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-71", 2 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.25, 303.0, 181.5, 303.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1047.5, 519.0, 995.5, 519.0 ]
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
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-21", 1 ],
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
 ]
	}

}
