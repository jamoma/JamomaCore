{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 308.0, 70.0, 945.0, 556.0 ],
		"bglocked" : 0,
		"defrect" : [ 308.0, 70.0, 945.0, 556.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
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
					"maxclass" : "newobj",
					"text" : "del 100",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-46",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 501.0, 151.0, 43.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"id" : "obj-44",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 501.0, 128.0, 32.5, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation" : 1,
					"fontsize" : 10.0,
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 181.0, 45.0, 42.0, 18.0 ],
					"id" : "obj-68",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 394.0, 71.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation" : 1,
					"fontsize" : 10.0,
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 181.0, 24.0, 42.0, 18.0 ],
					"id" : "obj-67",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 392.0, 32.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 24",
					"fontsize" : 9.0,
					"numinlets" : 24,
					"id" : "obj-1",
					"fontname" : "Arial",
					"numoutlets" : 25,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 143.0, 450.0, 343.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.in~",
					"fontsize" : 9.0,
					"numinlets" : 32,
					"id" : "obj-2",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 143.0, 479.0, 437.5, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----monocable signal input----",
					"fontsize" : 9.0,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 302.0, 185.0, 152.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 8",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-4",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 844.0, 415.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-5",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 475.0, 183.0, 15.0, 15.0 ],
					"comment" : "signal input"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.0, 278.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 161.0, 255.0, 143.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "outputs",
					"presentation" : 1,
					"fontsize" : 9.0,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 8, ",", 12, ",", 16, ",", 24 ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numinlets" : 1,
					"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"presentation_rect" : [ 49.0, 45.0, 22.0, 17.0 ],
					"id" : "obj-8",
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"arrow" : 0,
					"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 49.0, 38.0, 22.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "inputs",
					"presentation" : 1,
					"fontsize" : 9.0,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 8, ",", 12, ",", 16 ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numinlets" : 1,
					"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"presentation_rect" : [ 49.0, 24.0, 22.0, 17.0 ],
					"id" : "obj-9",
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"arrow" : 0,
					"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 49.0, 22.0, 22.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 7",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-10",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 806.0, 415.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 6",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-11",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 769.0, 415.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 5",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-12",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 731.0, 416.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 4",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-13",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 696.0, 415.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 3",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-14",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 660.0, 414.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p thru",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-15",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 553.0, 443.0, 37.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
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
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 209.0, 87.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"patching_rect" : [ 191.0, 224.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 2",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-16",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 623.0, 414.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-17",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 588.0, 414.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-18",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 553.0, 415.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 2 3 4 5 8 12 16 24",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-19",
					"fontname" : "Arial",
					"numoutlets" : 10,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 554.0, 391.0, 337.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-20",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 554.0, 371.0, 51.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "outputs[1]",
					"text" : "jcom.parameter outputs @priority 2 @type msg_int @range/bounds 1 24 @range/clipmode both @description \"number of input signals\"",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-21",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 556.0, 337.0, 549.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 7",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-22",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 801.0, 243.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 6",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-23",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 764.0, 243.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 5",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-24",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 726.0, 244.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 4",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-25",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 691.0, 243.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 3",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-26",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 655.0, 242.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p thru",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-27",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 548.0, 271.0, 37.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
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
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 209.0, 87.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"patching_rect" : [ 191.0, 224.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 2",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-28",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 618.0, 242.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-29",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.0, 242.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-30",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 548.0, 243.0, 33.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 2 3 4 5 8 12 16",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-31",
					"fontname" : "Arial",
					"numoutlets" : 9,
					"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 549.0, 219.0, 303.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-32",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 549.0, 199.0, 51.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inputs[1]",
					"text" : "jcom.parameter inputs @priority 1 @type msg_int @range/bounds 1 16 @range/clipmode both @description \"number of input signals\"",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-33",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 549.0, 167.0, 543.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar outputs 2",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-34",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 553.0, 313.0, 76.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar inputs 2",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-35",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 559.0, 140.0, 70.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "outputs:",
					"presentation" : 1,
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 5.0, 45.0, 44.0, 17.0 ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 40.0, 44.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "inputs:",
					"presentation" : 1,
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 10.0, 24.0, 38.0, 17.0 ],
					"id" : "obj-37",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 24.0, 38.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open /audio/mute",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-38",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 20.0, 225.0, 166.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-39",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 272.0, 44.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-40",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"patching_rect" : [ 20.0, 251.0, 41.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-41",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 293.0, 67.0, 17.0 ],
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 255.0, 44.0, 288.0, 340.0 ],
						"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 255.0, 44.0, 288.0, 340.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "mod_active",
									"jsarguments" : [ "off", "on", 204, 204, 204, 0, 0, 0, 121, 255, 15 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"filename" : "jcom.jsui_texttoggle.js",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 115.0, 181.0, 20.0, 14.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar mod_active",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 385.0, 138.0, 86.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "modulation/active",
									"text" : "jcom.parameter modulation/active @type msg_int @range/bounds 0 1 @range/clipmode both @description \"activate modulation of the FDN delay path length\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 473.0, 131.0, 358.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "enable Modulation",
									"fontsize" : 9.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 136.0, 182.0, 88.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "FDN path settings",
									"fontsize" : 12.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 97.0, 116.0, 118.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 s 0",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-6",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"patching_rect" : [ 1154.0, 421.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p DecodeFilterGraph",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 4,
									"id" : "obj-7",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 945.0, 489.0, 100.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 564.0, 189.0, 486.0, 356.0 ],
										"bglocked" : 0,
										"defrect" : [ 564.0, 189.0, 486.0, 356.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Else \"Restore Default Settings\" will not function properly as past values for q, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.",
													"linecount" : 2,
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"id" : "obj-1",
													"fontname" : "Arial",
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 260.0, 415.0, 27.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"patching_rect" : [ 142.0, 194.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 0,
													"patching_rect" : [ 88.0, 194.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 194.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "atodb",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-5",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 88.0, 157.0, 33.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-6",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 179.0, 35.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-7",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 125.0, 35.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-8",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 35.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-9",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 142.0, 128.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-10",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 88.0, 128.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-11",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 128.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-12",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 263.0, 35.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Output from FilterFraph has to be muted when filtertype is changes.",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"id" : "obj-13",
													"fontname" : "Arial",
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 238.0, 315.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
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
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_to_prefiltergraph",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-8",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 927.0, 734.0, 140.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p PrepareForFiltergraph~",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 3,
									"id" : "obj-9",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 927.0, 710.0, 124.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 91.0, 247.0, 597.0, 355.0 ],
										"bglocked" : 0,
										"defrect" : [ 91.0, 247.0, 597.0, 355.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-1",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 267.0, 143.0, 33.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Set message to 6nd inlet",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"fontname" : "Arial",
													"numoutlets" : 0,
													"patching_rect" : [ 401.0, 232.0, 119.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 0,
													"patching_rect" : [ 96.0, 274.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak set 1200. 1. 1.",
													"fontsize" : 9.0,
													"numinlets" : 4,
													"id" : "obj-4",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 96.0, 232.0, 215.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-5",
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 335.0, 119.0, 50.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-6",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 199.0, 50.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-7",
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 267.0, 119.0, 50.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-8",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 267.0, 50.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-9",
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 199.0, 119.0, 50.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-10",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 335.0, 50.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Get rid of set",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"id" : "obj-11",
													"fontname" : "Arial",
													"numoutlets" : 0,
													"patching_rect" : [ 405.0, 121.0, 100.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
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
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar PreFilterGain",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-10",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1086.0, 565.0, 94.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar PreQ",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-11",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1086.0, 489.0, 56.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar PreCenterFreq",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-12",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1086.0, 648.0, 100.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar PreFilterType 2",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-13",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 954.0, 345.0, 106.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar PreFilterGraph 7",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-14",
									"fontname" : "Arial",
									"numoutlets" : 7,
									"outlettype" : [ "", "", "", "", "", "", "" ],
									"patching_rect" : [ 932.0, 464.0, 110.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "input_eq/filtertype",
									"text" : "jcom.parameter input_eq/filtertype @type msg_symbol @description \"What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf\"",
									"linecount" : 3,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-15",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 954.0, 370.0, 306.0, 38.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "input_eq/filtergain",
									"text" : "jcom.parameter input_eq/filtergain @type msg_float @range/bounds -24 24 @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"Gain (dB)\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-16",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1086.0, 589.0, 381.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "input_eq/q",
									"text" : "jcom.parameter input_eq/q @type msg_float @ramp/drive scheduler @range/bounds 0. 100. @range/clipmode both @repetitions/allow 0 @description \"Resonance (Q)\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-17",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1086.0, 513.0, 364.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "input_eq/cf",
									"text" : "jcom.parameter input_eq/cf @type msg_float @range/bounds 30. 11025. @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"Center frequency (Hz)\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-18",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1086.0, 669.0, 387.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "FilterType",
									"fontsize" : 9.0,
									"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf" ],
									"numinlets" : 1,
									"id" : "obj-19",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 9.0, 296.0, 78.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "FDN path filter",
									"fontsize" : 12.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 97.0, 219.0, 130.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_to_filtergraph",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 0,
									"id" : "obj-21",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 322.0, 271.0, 125.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "CenterFreq",
									"fontsize" : 9.0,
									"minimum" : 30.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"triangle" : 0,
									"maximum" : 11025.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-22",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 49.0, 240.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message fdn_filtergraph @description \"Messages to filtergraph. See the MSP reference for further details\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-23",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 323.0, 290.0, 269.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Q",
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"triangle" : 0,
									"maximum" : 100.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-24",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 49.0, 259.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Q/S:",
									"fontsize" : 9.0,
									"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 260.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "FilterGain",
									"fontsize" : 9.0,
									"minimum" : -24.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"triangle" : 0,
									"maximum" : 24.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-26",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 49.0, 277.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "cf [Hz]:",
									"fontsize" : 9.0,
									"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 241.0, 41.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gain:",
									"fontsize" : 9.0,
									"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 278.0, 28.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "filtergraph~",
									"varname" : "FilterGraph",
									"range" : [ 0.0625, 2.0 ],
									"textcolor" : [  ],
									"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
									"domain" : [ 20.0, 22050.0 ],
									"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"hbwidthcolor" : [ 0.478431, 0.290196, 0.290196, 1.0 ],
									"numinlets" : 8,
									"logmarkers" : [ 50.0, 500.0, 5000.0 ],
									"id" : "obj-29",
									"fgcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
									"numoutlets" : 7,
									"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"patching_rect" : [ 92.0, 238.0, 167.0, 75.0 ],
									"markercolor" : [ 0.329412, 0.329412, 0.329412, 1.0 ],
									"nfilters" : 1,
									"setfilter" : [ 0, 3, 1, 0, 0, 732.239258, 1.0, 0.054497, 30.0, 11025.0, 0.0625, 16.0, 0.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "PreFilterType",
									"fontsize" : 9.0,
									"items" : [ "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf", ",", "resonant", ",", "allpass" ],
									"numinlets" : 1,
									"id" : "obj-30",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 9.0, 86.0, 79.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Input filter",
									"fontsize" : 12.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-31",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 97.0, 6.0, 130.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_xxx_to_prefiltergraph",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 0,
									"id" : "obj-32",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 347.0, -75.0, 140.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "PreCenterFreq",
									"fontsize" : 9.0,
									"minimum" : 30.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"triangle" : 0,
									"maximum" : 11025.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-33",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 49.0, 30.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message prefiltergraph @description \"Messages to filtergraph. See the MSP reference for further details\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-34",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 347.0, -54.0, 264.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "PreQ",
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"triangle" : 0,
									"maximum" : 100.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-35",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 49.0, 49.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Q/S:",
									"fontsize" : 9.0,
									"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-36",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 19.0, 50.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "PreFilterGain",
									"fontsize" : 9.0,
									"minimum" : -24.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"triangle" : 0,
									"maximum" : 24.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-37",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 49.0, 67.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "cf [Hz]:",
									"fontsize" : 9.0,
									"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-38",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 31.0, 41.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gain:",
									"fontsize" : 9.0,
									"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-39",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 19.0, 68.0, 28.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "filtergraph~",
									"varname" : "PreFilterGraph",
									"range" : [ 0.0625, 2.0 ],
									"textcolor" : [  ],
									"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
									"domain" : [ 20.0, 22050.0 ],
									"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"hbwidthcolor" : [ 0.478431, 0.290196, 0.290196, 1.0 ],
									"numinlets" : 8,
									"logmarkers" : [ 50.0, 500.0, 5000.0 ],
									"id" : "obj-40",
									"fgcolor" : [ 0.388235, 0.388235, 0.388235, 1.0 ],
									"numoutlets" : 7,
									"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"patching_rect" : [ 92.0, 27.0, 167.0, 75.0 ],
									"markercolor" : [ 0.329412, 0.329412, 0.329412, 1.0 ],
									"nfilters" : 1,
									"setfilter" : [ 0, 1, 1, 0, 0, 2547.59082, 1.0, 0.606826, 30.0, 11025.0, 0.0625, 16.0, 0.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 s 0",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-41",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "int" ],
									"patching_rect" : [ 637.0, 423.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p DecodeFilterGraph",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 4,
									"id" : "obj-42",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 428.0, 491.0, 100.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 564.0, 189.0, 486.0, 356.0 ],
										"bglocked" : 0,
										"defrect" : [ 564.0, 189.0, 486.0, 356.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Else \"Restore Default Settings\" will not function properly as past values for q, filtergain and cf maintained in FilterGraph will overrule the attempt to reset values to defaults.",
													"linecount" : 2,
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"id" : "obj-1",
													"fontname" : "Arial",
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 260.0, 415.0, 27.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"patching_rect" : [ 142.0, 194.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 0,
													"patching_rect" : [ 88.0, 194.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 194.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "atodb",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-5",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 88.0, 157.0, 33.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-6",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 179.0, 35.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-7",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 125.0, 35.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-8",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 71.0, 35.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-9",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 142.0, 128.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-10",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 88.0, 128.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-11",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 34.0, 128.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-12",
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 263.0, 35.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Output from FilterFraph has to be muted when filtertype is changes.",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"id" : "obj-13",
													"fontname" : "Arial",
													"numoutlets" : 0,
													"patching_rect" : [ 34.0, 238.0, 315.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
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
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_to_filtergraph",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-43",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 410.0, 736.0, 124.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p PrepareForFiltergraph~",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 3,
									"id" : "obj-44",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 410.0, 712.0, 124.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 91.0, 247.0, 597.0, 355.0 ],
										"bglocked" : 0,
										"defrect" : [ 91.0, 247.0, 597.0, 355.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dbtoa",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-1",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 267.0, 143.0, 33.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Set message to 6nd inlet",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"fontname" : "Arial",
													"numoutlets" : 0,
													"patching_rect" : [ 401.0, 232.0, 119.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 0,
													"patching_rect" : [ 96.0, 274.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak set 1200. 1. 1.",
													"fontsize" : 9.0,
													"numinlets" : 4,
													"id" : "obj-4",
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 96.0, 232.0, 215.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-5",
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 335.0, 119.0, 50.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-6",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 199.0, 50.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-7",
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 267.0, 119.0, 50.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-8",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 267.0, 50.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route set",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-9",
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 199.0, 119.0, 50.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-10",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 335.0, 50.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Get rid of set",
													"fontsize" : 9.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"id" : "obj-11",
													"fontname" : "Arial",
													"numoutlets" : 0,
													"patching_rect" : [ 405.0, 121.0, 100.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
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
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar FilterGain",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-45",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 569.0, 567.0, 75.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Q",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-46",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 569.0, 491.0, 39.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar CenterFreq",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-47",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 569.0, 650.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar FilterType 2",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-48",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 437.0, 347.0, 89.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar FilterGraph 7",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-49",
									"fontname" : "Arial",
									"numoutlets" : 7,
									"outlettype" : [ "", "", "", "", "", "", "" ],
									"patching_rect" : [ 415.0, 466.0, 93.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "fdn_eq/filtertype",
									"text" : "jcom.parameter fdn_eq/filtertype @type msg_symbol @description \"What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf\"",
									"linecount" : 3,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-50",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 437.0, 372.0, 306.0, 38.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "fdn_eq/filtergain",
									"text" : "jcom.parameter fdn_eq/filtergain @type msg_float @range/bounds -24. 0. @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"Gain (dB)\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-51",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 569.0, 591.0, 378.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "fdn_eq/q",
									"text" : "jcom.parameter fdn_eq/q @type msg_float @ramp/drive scheduler @range/bounds 0. 100. @range/clipmode both @repetitions/allow 0 @description \"Resonance (Q)\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-52",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 569.0, 515.0, 356.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "fdn_eq/cf",
									"text" : "jcom.parameter fdn_eq/cf @type msg_float @range/bounds 30. 11025. @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"Center frequency (Hz)\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-53",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 569.0, 671.0, 377.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "interpolationtime",
									"text" : "jcom.parameter interpolationtime @type msg_float @range/bounds 0. 1000. @range/clipmode low @ramp/drive scheduler @description \"Interpolationtime for changes of feedback path length and path modulation\"",
									"linecount" : 3,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-54",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 569.0, 236.0, 338.0, 38.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Interpolationtime",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-55",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 442.0, 250.0, 111.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Interp. time for changes [ms]:",
									"linecount" : 2,
									"fontsize" : 9.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-56",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 185.0, 79.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Interpolationtime",
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triangle" : 0,
									"maximum" : 999.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-57",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 84.0, 189.0, 30.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"id" : "obj-58",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 567.0, 173.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "modulation/amplitude",
									"text" : "jcom.parameter modulation/amplitude @type msg_list @range/bounds 0. 10. @range/clipmode low @ramp/drive scheduler @description \"minimal and maximal amplitude of the feedback path's length modulation\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-59",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 566.0, 195.0, 469.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.list2parameter 2",
									"fontsize" : 9.0,
									"numinlets" : 11,
									"id" : "obj-60",
									"fontname" : "Arial",
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 390.0, 196.0, 144.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ModAmpMax",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-61",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 474.0, 173.0, 91.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ModAmpMin",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-62",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 173.0, 88.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"id" : "obj-63",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 565.0, 60.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "modulation/frequency",
									"text" : "jcom.parameter modulation/frequency @type msg_list @range/bounds 0. 10. @range/clipmode low @ramp/drive scheduler @description \"minimal and maximal modulation frequency of the feedback path's length\"",
									"linecount" : 3,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-64",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 564.0, 82.0, 386.0, 38.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.list2parameter 2",
									"fontsize" : 9.0,
									"numinlets" : 11,
									"id" : "obj-65",
									"fontname" : "Arial",
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 388.0, 85.0, 144.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ModFrqMax",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-66",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 62.0, 86.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ModFrqMin",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-67",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 388.0, 62.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sort",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"id" : "obj-68",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 544.0, -10.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "delaylength",
									"text" : "jcom.parameter delaylength @type msg_list @range/bounds 0. 300. @range/clipmode both @ramp/drive scheduler @description \"minimal and maximal delaylength of the feedback paths\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-69",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 543.0, 12.0, 404.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.list2parameter 2",
									"fontsize" : 9.0,
									"numinlets" : 11,
									"id" : "obj-70",
									"fontname" : "Arial",
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 387.0, 15.0, 144.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar DlyMax",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-71",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 454.0, -7.0, 68.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar DlyMin",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"id" : "obj-72",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 387.0, -8.0, 65.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ModAmpMin",
									"fontsize" : 9.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triangle" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-73",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 208.0, 153.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ModFrqMin",
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triangle" : 0,
									"maximum" : 10.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-74",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 134.0, 153.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "DlyMin",
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triangle" : 0,
									"maximum" : 300.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-75",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 50.0, 153.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ModAmpMax",
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triangle" : 0,
									"maximum" : 40.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-76",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 208.0, 167.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ModFrqMax",
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triangle" : 0,
									"maximum" : 10.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-77",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 134.0, 167.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Modulation [gain]",
									"fontsize" : 9.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-78",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 192.0, 141.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Modulation [Hz]",
									"fontsize" : 9.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-79",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 116.0, 141.0, 75.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "DlyMax",
									"fontsize" : 9.0,
									"minimum" : 0.0,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"triangle" : 0,
									"maximum" : 300.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"numinlets" : 1,
									"id" : "obj-80",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 50.0, 167.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "max:",
									"fontsize" : 9.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-81",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 168.0, 28.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min:",
									"fontsize" : 9.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-82",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 154.0, 26.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "path length [ms]",
									"fontsize" : 9.0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-83",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 140.0, 80.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess patcher jmod.sur.reverb",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-84",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 4.0, 696.0, 165.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-85",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"patching_rect" : [ -50.0, 688.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-86",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ -50.0, 663.0, 151.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"id" : "obj-87",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -50.0, 636.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-88",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ -49.0, 729.0, 61.0, 17.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 400 615, window exec",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-89",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.0, 497.0, 214.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-90",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 51.0, 505.0, 59.0, 17.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 80 80 80",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 4,
									"id" : "obj-91",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 33.0, 633.0, 88.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-92",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -29.0, 322.0, 239.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-93",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 318.0, 158.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"rounded" : 0,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"numinlets" : 1,
									"border" : 2,
									"id" : "obj-94",
									"numoutlets" : 0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 1.0, 4.0, 286.0, 107.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"rounded" : 0,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"numinlets" : 1,
									"border" : 2,
									"id" : "obj-95",
									"numoutlets" : 0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 1.0, 216.0, 286.0, 107.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"rounded" : 0,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"numinlets" : 1,
									"border" : 1,
									"id" : "obj-96",
									"numoutlets" : 0,
									"patching_rect" : [ 114.0, 138.0, 162.0, 59.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"rounded" : 0,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"numinlets" : 1,
									"border" : 2,
									"id" : "obj-97",
									"numoutlets" : 0,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 1.0, 114.0, 286.0, 100.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1107.0, 415.0, 1163.5, 415.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1095.5, 701.0, 1082.0, 701.0, 1082.0, 642.0, 1095.5, 642.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1095.5, 621.0, 1079.0, 621.0, 1079.0, 561.0, 1095.5, 561.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1095.5, 545.0, 1080.0, 545.0, 1080.0, 480.0, 1095.5, 480.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-9", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [ 1163.5, 462.0, 1035.5, 462.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [ 1184.5, 462.0, 1035.5, 462.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1050.5, 366.0, 963.5, 366.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [ 963.5, 414.0, 947.0, 414.0, 947.0, 340.0, 963.5, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1174.0, 448.0, 941.5, 448.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 1 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [ 590.0, 417.0, 646.5, 417.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [ 578.5, 703.0, 565.0, 703.0, 565.0, 644.0, 578.5, 644.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 1 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [ 578.5, 623.0, 562.0, 623.0, 562.0, 563.0, 578.5, 563.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 2 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [ 578.5, 547.0, 563.0, 547.0, 563.0, 482.0, 578.5, 482.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 10 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 10 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 10 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-44", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-60", 10 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 2 ],
									"destination" : [ "obj-42", 3 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [ 667.5, 464.0, 518.5, 464.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-42", 3 ],
									"hidden" : 1,
									"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
									"midpoints" : [ 646.5, 464.0, 518.5, 464.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-65", 10 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-70", 10 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 3 ],
									"destination" : [ "obj-42", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 1 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.0, 223.0, 385.0, 223.0, 385.0, 163.0, 483.5, 163.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 1 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [ 410.0, 112.0, 383.0, 112.0, 383.0, 52.0, 481.5, 52.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-44", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 2 ],
									"destination" : [ "obj-42", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 1 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 409.0, 42.0, 382.0, 42.0, 382.0, -21.0, 463.5, -21.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 1 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [ 516.5, 368.0, 446.5, 368.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [ 446.5, 416.0, 430.0, 416.0, 430.0, 342.0, 446.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 1 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 1 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [ 657.0, 450.0, 424.5, 450.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-65", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-70", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 399.5, 219.0, 388.0, 219.0, 388.0, 166.0, 399.5, 166.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [ 397.5, 108.0, 386.0, 108.0, 386.0, 55.0, 397.5, 55.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [ 396.5, 38.0, 385.0, 38.0, 385.0, -15.0, 396.5, -15.0 ]
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
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-29", 5 ],
									"hidden" : 1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-40", 5 ],
									"hidden" : 1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-86", 0 ],
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
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Predelay [ms]:",
					"presentation" : 1,
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 102.0, 45.0, 73.0, 17.0 ],
					"id" : "obj-42",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 146.0, 42.0, 73.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "predelay",
					"text" : "jcom.parameter predelay @type msg_float @range/bounds 0. 1000. @range/clipmode both @ramp/drive scheduler @description \"Predelay for incomming signals\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-45",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 448.0, 67.0, 603.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "T60 [s]:",
					"presentation" : 1,
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 130.0, 24.0, 46.0, 17.0 ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 175.0, 24.0, 46.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "t60",
					"text" : "jcom.parameter t60 @type msg_float @range/bounds 0. 60. @range/clipmode both @ramp/drive scheduler @description \"t60 reverb time\"",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-49",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 449.0, 31.0, 561.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"id" : "obj-50",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 112.0, 85.0, 191.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-51",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 201.0, 49.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal output----",
					"fontsize" : 9.0,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-52",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 157.0, 501.0, 158.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 2,
					"id" : "obj-53",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 98.0, 121.0, 125.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-54",
					"numoutlets" : 0,
					"patching_rect" : [ 143.0, 501.0, 13.0, 13.0 ],
					"comment" : "Channel 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numinlets" : 0,
					"id" : "obj-55",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 307.0, 372.0, 13.0, 13.0 ],
					"comment" : "multicable signal input"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"fontsize" : 9.0,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-56",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 346.0, 158.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.reverb~",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 3,
					"id" : "obj-57",
					"fontname" : "Arial",
					"numoutlets" : 24,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 143.0, 417.0, 343.5, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sur.reverb~ @description \"multichannel reverb based on a 16x16 Feedback Delay Network\"",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-59",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 0.0, 150.0, 437.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 9.0,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-60",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 121.0, 79.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numinlets" : 0,
					"id" : "obj-61",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 121.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-63",
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 246.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"presentation" : 1,
					"has_panel" : 1,
					"has_gain" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-65",
					"has_mute" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 23 ],
					"destination" : [ "obj-2", 23 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 22 ],
					"destination" : [ "obj-2", 22 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 21 ],
					"destination" : [ "obj-2", 21 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 20 ],
					"destination" : [ "obj-2", 20 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 19 ],
					"destination" : [ "obj-2", 19 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 18 ],
					"destination" : [ "obj-2", 18 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 17 ],
					"destination" : [ "obj-2", 17 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 16 ],
					"destination" : [ "obj-2", 16 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 15 ],
					"destination" : [ "obj-2", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 14 ],
					"destination" : [ "obj-2", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 13 ],
					"destination" : [ "obj-2", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 12 ],
					"destination" : [ "obj-2", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 11 ],
					"destination" : [ "obj-2", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 10 ],
					"destination" : [ "obj-2", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 9 ],
					"destination" : [ "obj-2", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 8 ],
					"destination" : [ "obj-2", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 7 ],
					"destination" : [ "obj-2", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 6 ],
					"destination" : [ "obj-2", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 5 ],
					"destination" : [ "obj-2", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 4 ],
					"destination" : [ "obj-2", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-2", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 23 ],
					"destination" : [ "obj-1", 23 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 22 ],
					"destination" : [ "obj-1", 22 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 21 ],
					"destination" : [ "obj-1", 21 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 20 ],
					"destination" : [ "obj-1", 20 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 19 ],
					"destination" : [ "obj-1", 19 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 18 ],
					"destination" : [ "obj-1", 18 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 17 ],
					"destination" : [ "obj-1", 17 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 16 ],
					"destination" : [ "obj-1", 16 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 15 ],
					"destination" : [ "obj-1", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 14 ],
					"destination" : [ "obj-1", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 13 ],
					"destination" : [ "obj-1", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 12 ],
					"destination" : [ "obj-1", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 11 ],
					"destination" : [ "obj-1", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 10 ],
					"destination" : [ "obj-1", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 9 ],
					"destination" : [ "obj-1", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 8 ],
					"destination" : [ "obj-1", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 7 ],
					"destination" : [ "obj-1", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 6 ],
					"destination" : [ "obj-1", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 5 ],
					"destination" : [ "obj-1", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 4 ],
					"destination" : [ "obj-1", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 3 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 2 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [ 107.5, 138.0, 9.5, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 8 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 7 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 7 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 6 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 6 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 5 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 5 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 4 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 4 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 3 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 3 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 2 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 557.5, 292.0, 543.0, 292.0, 543.0, 134.0, 568.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 562.5, 465.0, 550.0, 465.0, 550.0, 304.0, 562.5, 304.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 314.0, 152.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-57", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 170.5, 314.0, 152.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
