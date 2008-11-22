{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 138.0, 73.0, 1082.0, 573.0 ],
		"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 138.0, 73.0, 1082.0, 573.0 ],
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
					"maxclass" : "umenu",
					"types" : [  ],
					"presentation_rect" : [ 120.0, 43.0, 87.0, 19.0 ],
					"items" : [ "exponential", ",", "linear" ],
					"fontsize" : 10.0,
					"labelclick" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 382.0, 284.0, 87.0, 19.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"id" : "obj-2",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in[1]",
					"text" : "jcom.parameter a_menu @repetitions/allow 1 @type msg_symbol @description \"a menu\" @priority 1",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 490.0, 282.0, 523.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-86",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"color" : [ 0.8, 0.839216, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "some more explanations",
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 494.0, 178.0, 141.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-50",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[2]",
					"text" : "jcom.parameter a_slider @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this parameter does...\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 489.0, 234.0, 564.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-49",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "algorithm section",
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 136.0, 338.0, 141.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-45",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"presentation_rect" : [ 6.0, 43.0, 106.0, 17.0 ],
					"numinlets" : 1,
					"floatoutput" : 1,
					"patching_rect" : [ 380.0, 242.0, 100.0, 16.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p notes_&_bugs",
					"fontsize" : 14.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 621.0, 11.0, 113.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 490.0, 315.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 490.0, 315.0 ],
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
									"maxclass" : "comment",
									"text" : "here you can type any note you want, that will help understand your patch and its current usability",
									"linecount" : 2,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 20.0, 21.0, 340.0, 34.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/active",
					"text" : "jcom.parameter a_toggle @type msg_toggle @description \"Tell me what you are doing I will tell you who you are\"",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 490.0, 203.0, 588.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-47",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a few explanations about this section of the patch",
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 493.0, 58.0, 306.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-83",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"presentation_rect" : [ 119.0, 42.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 456.0, 203.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-93",
					"inactivecolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"outlettype" : [ "" ],
					"activecolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p read_me_for_programming_details",
					"fontsize" : 14.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 369.0, 11.0, 240.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-44",
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 519.0, 433.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 519.0, 433.0 ],
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
									"maxclass" : "comment",
									"text" : "for jcom.return only",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 364.0, 113.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@enable",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 384.0, 77.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-25",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1/0 : enables the send of data (on by default)",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 146.0, 384.0, 302.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-28",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/scheduler",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 254.0, 105.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-20",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "scheduler/queue...",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 146.0, 254.0, 105.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-21",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@description",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 334.0, 75.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-45",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@repetitions/allow",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 274.0, 105.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-46",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/function",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 234.0, 92.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-47",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/clipmode",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 314.0, 101.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-48",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/bounds",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 294.0, 91.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-49",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@type",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 214.0, 44.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-50",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
									"linecount" : 3,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 139.0, 370.0, 43.0 ],
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.return:",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 119.0, 380.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
									"linecount" : 2,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 79.0, 342.0, 31.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.message:",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 59.0, 366.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 29.0, 402.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.parameter:",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 9.0, 293.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for html autodoc of module",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 146.0, 334.0, 149.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-10",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 146.0, 274.0, 282.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-11",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none/linear/cosine/power/tanh/lowpass...",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 146.0, 234.0, 221.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none, low, high, both (default)",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 146.0, 314.0, 166.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-13",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "minimum and maximum values for this parameter/message",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 146.0, 294.0, 314.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-14",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "generic (default), msg_int, msg_float, menu, toggle",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 146.0, 214.0, 273.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-15",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attributes for jcom.parameter and jcom.message:",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 194.0, 295.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-51",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p panel",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 377.0, 44.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 400.0, 200.0, 700.0, 500.0 ],
						"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 400.0, 200.0, 700.0, 500.0 ],
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
									"maxclass" : "newobj",
									"text" : "t 1 b 0",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 77.821503, 144.313141, 46.0, 18.0 ],
									"numoutlets" : 3,
									"id" : "obj-20",
									"outlettype" : [ "int", "bang", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"hidden" : 1,
									"patching_rect" : [ 77.821503, 171.313141, 52.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"presentation_rect" : [ 39.495735, 17.753286, 18.0, 18.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 47.821507, 153.313141, 19.0, 19.0 ],
									"numoutlets" : 1,
									"presentation" : 1,
									"id" : "obj-6",
									"outlinecolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "foot/switch",
									"text" : "jcom.parameter a_bang @type msg_generic @repetitions/allow 1 @ramp/drive none @priority 1 @description \"a bang\"",
									"linecount" : 2,
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 131.821503, 151.313141, 436.0, 30.0 ],
									"numoutlets" : 3,
									"id" : "obj-8",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "some more variables can be declared here",
									"fontsize" : 10.0,
									"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"patching_rect" : [ 178.0, 117.0, 233.0, 19.0 ],
									"numoutlets" : 0,
									"id" : "obj-50",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "as a good example for panel, see jmod.bcf2000.maxpat",
									"fontsize" : 12.0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 36.0, 18.0, 344.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 120.961182, 24.758301, 103.0, 28.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"hidden" : 1,
									"patching_rect" : [ 127.578354, 222.32814, 103.0, 28.0 ],
									"numoutlets" : 1,
									"presentation" : 1,
									"id" : "obj-26",
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 400 200 1100 700, window flags nogrow, window exec, savewindow 1",
									"linecount" : 2,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 119.825417, 64.780228, 355.0, 28.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"hidden" : 1,
									"patching_rect" : [ 142.512863, 263.29538, 355.0, 28.0 ],
									"numoutlets" : 1,
									"presentation" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p front",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 40.0, 220.0, 42.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "front" ],
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 840.0, 548.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 840.0, 548.0, 600.0, 426.0 ],
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
													"text" : "jcom.oscroute /panel/open",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 144.0, 18.0 ],
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t front",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 92.0, 40.0, 18.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "front" ],
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 114.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-5",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 40.032738, 342.327393, 64.0, 18.0 ],
									"numoutlets" : 2,
									"id" : "obj-34",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 400, 200, 1100, 726, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"hidden" : 1,
									"patching_rect" : [ 40.0, 202.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 48 48 48",
									"fontsize" : 9.873845,
									"numinlets" : 4,
									"hidden" : 1,
									"patching_rect" : [ 158.038651, 347.505981, 93.0, 18.0 ],
									"numoutlets" : 0,
									"id" : "obj-36",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ -1.0, -2.0, 106.0, 60.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 59.0, 106.0, 60.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"presentation" : 1,
									"id" : "obj-40",
									"rounded" : 0,
									"bgcolor" : [ 0.188235, 0.188235, 0.188235, 1.0 ],
									"bordercolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [ 137.078354, 271.0, 49.532738, 271.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "some text",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 244.0, 36.0, 44.0, 30.0 ],
					"fontsize" : 9.873845,
					"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"patching_rect" : [ 245.0, 36.0, 44.0, 30.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-31",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"presentation_rect" : [ 166.0, 20.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 443.0, 120.0, 35.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-17",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Message",
					"presentation_rect" : [ 117.0, 19.0, 62.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"patching_rect" : [ 368.0, 120.0, 77.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-18",
					"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.message this_message @repetitions/allow 0 @type msg_int @range/bounds 0. 1. @range/clipmode none @description \"Document what this message does...\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 489.0, 115.0, 576.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 70.0, 19.0, 36.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 443.0, 85.0, 36.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"id" : "obj-3",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"presentation_rect" : [ 5.0, 19.0, 62.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.745098, 0.745098, 0.745098, 1.0 ],
					"patching_rect" : [ 368.0, 85.0, 77.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-1",
					"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter this_parameter @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode none @description \"Document what this parameter does...\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 488.0, 80.0, 456.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-29",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 49.0, 141.0, 251.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return return_c @range/bounds 0. 1. @description \"Document what this return does...\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 436.0, 284.0, 31.0 ],
					"numoutlets" : 2,
					"id" : "obj-23",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 337.0, 56.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-24",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 240.0, 155.0, 40.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p your_algorithm",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 377.0, 112.0, 19.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 585.0, 154.0, 549.0, 562.0 ],
						"bglocked" : 0,
						"defrect" : [ 585.0, 154.0, 549.0, 562.0 ],
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
									"text" : "jcom.oscroute /param_a /message_b",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 90.0, 180.0, 17.0 ],
									"numoutlets" : 3,
									"id" : "obj-1",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 474.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 70.0, 50.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Substitute this patch for your algorithm",
									"fontsize" : 18.0,
									"textcolor" : [ 0.392157, 0.403922, 0.901961, 1.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.392157, 0.403922, 0.901961, 1.0 ],
									"patching_rect" : [ 70.0, 155.0, 398.0, 27.0 ],
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
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
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"This module doesn't do much yet\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 191.0, 302.0, 31.0 ],
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 14.0, 141.0, 22.0, 22.0 ],
					"numoutlets" : 1,
					"id" : "obj-38",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 231.0, 22.0, 22.0 ],
					"numoutlets" : 0,
					"id" : "obj-39",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/a_bang 0",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 190.0, 378.0, 216.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 74.0, 161.0, 159.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation" : 1,
					"id" : "obj-16",
					"has_panel" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-29", 0 ],
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 364.0, 26.5, 364.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 364.0, 396.5, 364.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-33", 0 ],
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
					"midpoints" : [ 58.5, 184.0, 23.5, 184.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 83.5, 184.0, 23.5, 184.0 ]
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
					"midpoints" : [ 249.5, 178.0, 23.5, 178.0 ]
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
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
