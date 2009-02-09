{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 50.0, 167.0, 1068.0, 555.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 50.0, 167.0, 1068.0, 555.0 ],
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
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"presentation_rect" : [ 15.0, 33.0, 23.0, 18.0 ],
					"fontname" : "Arial",
					"texton" : "on",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-1",
					"patching_rect" : [ 420.0, 23.0, 23.0, 18.0 ],
					"mode" : 1,
					"presentation" : 1,
					"fontsize" : 10.0,
					"text" : "off",
					"bgoveroncolor" : [ 0.8, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-10",
					"patching_rect" : [ 88.0, 362.0, 32.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p messages",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-11",
					"patching_rect" : [ 581.0, 488.0, 64.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 734.0, 533.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 734.0, 533.0 ],
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
									"varname" : "hue_angle[15]",
									"text" : "jcom.message recorder/1/in @repetitions/allow 1 @type msg_list @description \"x y z input position\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-10",
									"patching_rect" : [ 127.0, 188.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[1]",
									"text" : "jcom.message recorder/8/in @repetitions/allow 1 @type msg_list @description \"x y z input position\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-2",
									"patching_rect" : [ 127.0, 20.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[2]",
									"text" : "jcom.message recorder/1/segment @repetitions/allow 1 @type msg_none @description \"begin a new trajectory\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-25",
									"patching_rect" : [ 76.0, 407.0, 578.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[3]",
									"text" : "jcom.message recorder/2/segment @repetitions/allow 1 @type msg_none @description \"begin a new trajectory\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-26",
									"patching_rect" : [ 76.0, 383.0, 578.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[4]",
									"text" : "jcom.message recorder/3/segment @repetitions/allow 1 @type msg_none @description \"begin a new trajectory\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-27",
									"patching_rect" : [ 76.0, 359.0, 578.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[5]",
									"text" : "jcom.message recorder/4/segment @repetitions/allow 1 @type msg_none @description \"begin a new trajectory\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-28",
									"patching_rect" : [ 76.0, 335.0, 578.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[6]",
									"text" : "jcom.message recorder/5/segment @repetitions/allow 1 @type msg_none @description \"begin a new trajectory\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-29",
									"patching_rect" : [ 76.0, 311.0, 578.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[7]",
									"text" : "jcom.message recorder/6/segment @repetitions/allow 1 @type msg_none @description \"begin a new trajectory\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-30",
									"patching_rect" : [ 76.0, 287.0, 578.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[8]",
									"text" : "jcom.message recorder/7/segment @repetitions/allow 1 @type msg_none @description \"begin a new trajectory\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-31",
									"patching_rect" : [ 76.0, 263.0, 578.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[16]",
									"text" : "jcom.message recorder/8/segment @repetitions/allow 1 @type msg_none @description \"begin a new trajectory\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-32",
									"patching_rect" : [ 76.0, 239.0, 578.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[9]",
									"text" : "jcom.message recorder/7/in @repetitions/allow 1 @type msg_list @description \"x y z input position\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-4",
									"patching_rect" : [ 127.0, 44.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[10]",
									"text" : "jcom.message recorder/6/in @repetitions/allow 1 @type msg_list @description \"x y z input position\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-5",
									"patching_rect" : [ 127.0, 68.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[11]",
									"text" : "jcom.message recorder/5/in @repetitions/allow 1 @type msg_list @description \"x y z input position\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-6",
									"patching_rect" : [ 127.0, 92.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[12]",
									"text" : "jcom.message recorder/4/in @repetitions/allow 1 @type msg_list @description \"x y z input position\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-7",
									"patching_rect" : [ 127.0, 116.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[13]",
									"text" : "jcom.message recorder/3/in @repetitions/allow 1 @type msg_list @description \"x y z input position\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-8",
									"patching_rect" : [ 127.0, 140.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "hue_angle[14]",
									"text" : "jcom.message recorder/2/in @repetitions/allow 1 @type msg_list @description \"x y z input position\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-9",
									"patching_rect" : [ 127.0, 164.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-12",
					"patching_rect" : [ 174.0, 362.0, 32.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-13",
					"patching_rect" : [ 217.0, 362.0, 32.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-14",
					"patching_rect" : [ 260.0, 362.0, 32.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "yellow",
					"numoutlets" : 1,
					"presentation_rect" : [ 19.0, 54.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-15",
					"patching_rect" : [ 45.0, 393.0, 16.0, 16.0 ],
					"offcolor" : [ 1.0, 0.666667, 0.0, 0.258824 ],
					"presentation" : 1,
					"oncolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"presentation" : 1,
					"numinlets" : 1,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-2",
					"patching_rect" : [ 131.0, 362.0, 32.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"patching_rect" : [ 50.0, 90.0, 251.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"patching_rect" : [ 45.0, 237.0, 56.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[2]",
					"text" : "jcom.parameter recorder/2/enable @repetitions/allow 0 @type msg_int @range/bounds 0 1 @range/clipmode both @description \"arm record\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-26",
					"patching_rect" : [ 465.0, 54.0, 596.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p doc",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-27",
					"patching_rect" : [ 346.0, 11.0, 35.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"text" : "for html autodoc of module",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-10",
									"patching_rect" : [ 185.0, 435.0, 149.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-11",
									"patching_rect" : [ 185.0, 375.0, 282.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none/linear/cosine/power/tanh/lowpass...",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-12",
									"patching_rect" : [ 185.0, 335.0, 221.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none, low, high, both (default)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-13",
									"patching_rect" : [ 185.0, 415.0, 166.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "minimum and maximum values for this parameter/message",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-14",
									"patching_rect" : [ 185.0, 395.0, 314.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "generic (default), msg_int, msg_float, menu, toggle",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-15",
									"patching_rect" : [ 185.0, 315.0, 273.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for jcom.return only",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-2",
									"patching_rect" : [ 50.0, 465.0, 113.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/scheduler",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-20",
									"patching_rect" : [ 75.0, 355.0, 105.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "scheduler/queue...",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-21",
									"patching_rect" : [ 185.0, 355.0, 105.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@enable",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-25",
									"patching_rect" : [ 75.0, 485.0, 77.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1/0 : enables the send of data (on by default)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-28",
									"patching_rect" : [ 185.0, 485.0, 302.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-4",
									"patching_rect" : [ 75.0, 240.0, 370.0, 43.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@description",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-45",
									"patching_rect" : [ 75.0, 435.0, 75.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@repetitions/allow",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-46",
									"patching_rect" : [ 75.0, 375.0, 105.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/function",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-47",
									"patching_rect" : [ 75.0, 335.0, 92.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/clipmode",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-48",
									"patching_rect" : [ 75.0, 415.0, 101.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/bounds",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-49",
									"patching_rect" : [ 75.0, 395.0, 91.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.return:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-5",
									"patching_rect" : [ 50.0, 220.0, 380.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@type",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-50",
									"patching_rect" : [ 75.0, 315.0, 44.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attributes for jcom.parameter and jcom.message:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-51",
									"patching_rect" : [ 50.0, 295.0, 295.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-6",
									"patching_rect" : [ 75.0, 180.0, 342.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.message:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-7",
									"patching_rect" : [ 50.0, 160.0, 366.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-8",
									"patching_rect" : [ 75.0, 120.0, 363.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.parameter:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-9",
									"patching_rect" : [ 50.0, 100.0, 293.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"presentation_rect" : [ 120.0, 33.0, 23.0, 18.0 ],
					"fontname" : "Arial",
					"texton" : "on",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-28",
					"patching_rect" : [ 420.0, 127.0, 23.0, 18.0 ],
					"mode" : 1,
					"presentation" : 1,
					"fontsize" : 10.0,
					"text" : "off",
					"bgoveroncolor" : [ 0.8, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter recorder/1/enable @repetitions/allow 0 @type msg_int @range/bounds 0 1 @range/clipmode both @description \"arm record\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-29",
					"patching_rect" : [ 465.0, 19.0, 596.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"presentation_rect" : [ 50.0, 33.0, 23.0, 18.0 ],
					"fontname" : "Arial",
					"texton" : "on",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-3",
					"patching_rect" : [ 420.0, 58.0, 23.0, 18.0 ],
					"mode" : 1,
					"presentation" : 1,
					"fontsize" : 10.0,
					"text" : "off",
					"bgoveroncolor" : [ 0.8, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[3]",
					"text" : "jcom.parameter recorder/4/enable @repetitions/allow 0 @type msg_int @range/bounds 0 1 @range/clipmode both @description \"arm record\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-30",
					"patching_rect" : [ 465.0, 122.0, 596.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"presentation_rect" : [ 85.0, 33.0, 23.0, 18.0 ],
					"fontname" : "Arial",
					"texton" : "on",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-31",
					"patching_rect" : [ 420.0, 92.0, 23.0, 18.0 ],
					"mode" : 1,
					"presentation" : 1,
					"fontsize" : 10.0,
					"text" : "off",
					"bgoveroncolor" : [ 0.8, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"patching_rect" : [ 240.0, 110.0, 40.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p your_algorithm",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "list" ],
					"id" : "obj-33",
					"patching_rect" : [ 45.0, 277.0, 112.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 343.0, 155.0, 781.0, 297.0 ],
						"bglocked" : 0,
						"defrect" : [ 343.0, 155.0, 781.0, 297.0 ],
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
									"text" : "jcom.oscroute /recorder/1/in /recorder/2/in /recorder/3/in /recorder/4/in /recorder/5/in /recorder/6/in /recorder/7/in /recorder/8/in",
									"linecount" : 2,
									"numoutlets" : 9,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"id" : "obj-1",
									"patching_rect" : [ 70.0, 85.705948, 555.0, 35.0 ],
									"fontsize" : 12.5306,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ],
									"id" : "obj-10",
									"patching_rect" : [ 271.0, 170.0, 22.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ],
									"id" : "obj-11",
									"patching_rect" : [ 338.0, 170.0, 22.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ],
									"id" : "obj-12",
									"patching_rect" : [ 405.0, 170.0, 22.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ],
									"id" : "obj-13",
									"patching_rect" : [ 472.0, 170.0, 22.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ],
									"id" : "obj-14",
									"patching_rect" : [ 539.0, 170.0, 22.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-2",
									"patching_rect" : [ 70.0, 299.0, 21.0, 21.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"patching_rect" : [ 70.0, 50.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "funnel 8",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "list" ],
									"id" : "obj-6",
									"patching_rect" : [ 70.0, 250.0, 487.5, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 8
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ],
									"id" : "obj-7",
									"patching_rect" : [ 70.0, 170.0, 22.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ],
									"id" : "obj-8",
									"patching_rect" : [ 137.0, 170.0, 22.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ],
									"id" : "obj-9",
									"patching_rect" : [ 204.0, 170.0, 22.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-6", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-6", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 7 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 6 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 5 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 4 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 3 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[4]",
					"text" : "jcom.parameter recorder/3/enable @repetitions/allow 0 @type msg_int @range/bounds 0 1 @range/clipmode both @description \"arm record\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-34",
					"patching_rect" : [ 465.0, 88.0, 596.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Manage Position Recording to HoloEdit\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-37",
					"patching_rect" : [ 15.0, 140.0, 306.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"patching_rect" : [ 15.0, 90.0, 22.0, 22.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-39",
					"patching_rect" : [ 15.0, 180.0, 22.0, 22.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-4",
					"patching_rect" : [ 303.0, 362.0, 32.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate 0",
					"linecount" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"patching_rect" : [ 165.0, 277.0, 90.0, 29.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-43",
					"patching_rect" : [ 75.0, 110.0, 159.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"presentation_rect" : [ 190.0, 33.0, 23.0, 18.0 ],
					"fontname" : "Arial",
					"texton" : "on",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-46",
					"patching_rect" : [ 420.0, 198.0, 23.0, 18.0 ],
					"mode" : 1,
					"presentation" : 1,
					"fontsize" : 10.0,
					"text" : "off",
					"bgoveroncolor" : [ 0.8, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[5]",
					"text" : "jcom.parameter recorder/6/enable @repetitions/allow 0 @type msg_int @range/bounds 0 1 @range/clipmode both @description \"arm record\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-47",
					"patching_rect" : [ 465.0, 194.0, 596.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"presentation_rect" : [ 155.0, 33.0, 23.0, 18.0 ],
					"fontname" : "Arial",
					"texton" : "on",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-48",
					"patching_rect" : [ 420.0, 163.0, 23.0, 18.0 ],
					"mode" : 1,
					"presentation" : 1,
					"fontsize" : 10.0,
					"text" : "off",
					"bgoveroncolor" : [ 0.8, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[6]",
					"text" : "jcom.parameter recorder/5/enable @repetitions/allow 0 @type msg_int @range/bounds 0 1 @range/clipmode both @description \"arm record\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-49",
					"patching_rect" : [ 465.0, 159.0, 596.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-5",
					"patching_rect" : [ 347.0, 362.0, 32.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"presentation_rect" : [ 260.0, 33.0, 23.0, 18.0 ],
					"fontname" : "Arial",
					"texton" : "on",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-50",
					"patching_rect" : [ 420.0, 269.0, 23.0, 18.0 ],
					"mode" : 1,
					"presentation" : 1,
					"fontsize" : 10.0,
					"text" : "off",
					"bgoveroncolor" : [ 0.8, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[7]",
					"text" : "jcom.parameter recorder/8/enable @repetitions/allow 0 @type msg_int @range/bounds 0 1 @range/clipmode both @description \"arm record\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-51",
					"patching_rect" : [ 465.0, 265.0, 596.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"presentation_rect" : [ 225.0, 33.0, 23.0, 18.0 ],
					"fontname" : "Arial",
					"texton" : "on",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-52",
					"patching_rect" : [ 420.0, 234.0, 23.0, 18.0 ],
					"mode" : 1,
					"presentation" : 1,
					"fontsize" : 10.0,
					"text" : "off",
					"bgoveroncolor" : [ 0.8, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[8]",
					"text" : "jcom.parameter recorder/7/enable @repetitions/allow 0 @type msg_int @range/bounds 0 1 @range/clipmode both @description \"arm record\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-53",
					"patching_rect" : [ 465.0, 230.0, 596.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"numoutlets" : 0,
					"presentation_rect" : [ 17.0, 17.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-55",
					"patching_rect" : [ 397.0, 23.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2",
					"numoutlets" : 0,
					"presentation_rect" : [ 52.0, 17.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-56",
					"patching_rect" : [ 397.0, 58.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3",
					"numoutlets" : 0,
					"presentation_rect" : [ 87.0, 17.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-57",
					"patching_rect" : [ 397.0, 93.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4",
					"numoutlets" : 0,
					"presentation_rect" : [ 122.0, 17.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-58",
					"patching_rect" : [ 397.0, 128.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "5",
					"numoutlets" : 0,
					"presentation_rect" : [ 157.0, 17.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-59",
					"patching_rect" : [ 397.0, 163.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "6",
					"numoutlets" : 0,
					"presentation_rect" : [ 192.0, 17.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-60",
					"patching_rect" : [ 397.0, 198.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "7",
					"numoutlets" : 0,
					"presentation_rect" : [ 227.0, 17.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-61",
					"patching_rect" : [ 397.0, 233.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "8",
					"numoutlets" : 0,
					"presentation_rect" : [ 262.0, 17.0, 19.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-62",
					"patching_rect" : [ 397.0, 268.0, 19.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "yellow",
					"numoutlets" : 1,
					"presentation_rect" : [ 54.0, 54.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-64",
					"patching_rect" : [ 88.142853, 393.0, 16.0, 16.0 ],
					"offcolor" : [ 1.0, 0.666667, 0.0, 0.258824 ],
					"presentation" : 1,
					"oncolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "yellow",
					"numoutlets" : 1,
					"presentation_rect" : [ 89.0, 54.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-65",
					"patching_rect" : [ 131.142853, 393.0, 16.0, 16.0 ],
					"offcolor" : [ 1.0, 0.666667, 0.0, 0.258824 ],
					"presentation" : 1,
					"oncolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "yellow",
					"numoutlets" : 1,
					"presentation_rect" : [ 124.0, 54.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-66",
					"patching_rect" : [ 174.142853, 393.0, 16.0, 16.0 ],
					"offcolor" : [ 1.0, 0.666667, 0.0, 0.258824 ],
					"presentation" : 1,
					"oncolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "yellow",
					"numoutlets" : 1,
					"presentation_rect" : [ 159.0, 54.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-67",
					"patching_rect" : [ 217.142853, 393.0, 16.0, 16.0 ],
					"offcolor" : [ 1.0, 0.666667, 0.0, 0.258824 ],
					"presentation" : 1,
					"oncolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "yellow",
					"numoutlets" : 1,
					"presentation_rect" : [ 194.0, 54.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-68",
					"patching_rect" : [ 260.142853, 393.0, 16.0, 16.0 ],
					"offcolor" : [ 1.0, 0.666667, 0.0, 0.258824 ],
					"presentation" : 1,
					"oncolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "yellow",
					"numoutlets" : 1,
					"presentation_rect" : [ 229.0, 54.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-69",
					"patching_rect" : [ 303.142853, 393.0, 16.0, 16.0 ],
					"offcolor" : [ 1.0, 0.666667, 0.0, 0.258824 ],
					"presentation" : 1,
					"oncolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"prototypename" : "yellow",
					"numoutlets" : 1,
					"presentation_rect" : [ 264.0, 54.0, 16.0, 16.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-70",
					"patching_rect" : [ 347.142853, 393.0, 16.0, 16.0 ],
					"offcolor" : [ 1.0, 0.666667, 0.0, 0.258824 ],
					"presentation" : 1,
					"oncolor" : [ 1.0, 0.6, 0.0, 1.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.352941, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "spray 8",
					"numoutlets" : 8,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"id" : "obj-71",
					"patching_rect" : [ 45.0, 318.0, 320.5, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-9",
					"patching_rect" : [ 45.0, 362.0, 32.5, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 133.0, 24.5, 133.0 ]
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
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 7 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 6 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 5 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 4 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 3 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-70", 0 ],
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
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 264.0, 245.5, 264.0 ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
