{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 170.0, 62.0, 1004.0, 573.0 ],
		"bglocked" : 0,
		"defrect" : [ 170.0, 62.0, 1004.0, 573.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "aux3/description",
					"text" : "jcom.parameter aux3/description @type msg_symbol @description \"descriptive text of Aux 3\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 498.0, 253.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "aux2/description",
					"text" : "jcom.parameter aux2/description @type msg_symbol @description \"descriptive text of Aux 2\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-2",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 466.0, 253.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "aux1/description",
					"text" : "jcom.parameter aux1/description @type msg_symbol @description \"descriptive text of Aux 1\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-3",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 428.0, 253.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Aux_3",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 103.0, 46.0, 77.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "text1",
					"text" : "Aux_1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-5",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 103.0, 18.0, 77.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Aux_2",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 103.0, 32.0, 77.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input:",
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"fontname" : "Arial",
					"patching_rect" : [ 4.0, 40.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "active3",
					"numinlets" : 1,
					"jsarguments" : [ "off", "on", 68, 68, 68, 225, 225, 225, 121, 255, 15 ],
					"numoutlets" : 2,
					"id" : "obj-8",
					"filename" : "jcom.jsui_texttoggle.js",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 179.0, 46.0, 25.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "active2",
					"numinlets" : 1,
					"jsarguments" : [ "off", "on", 68, 68, 68, 225, 225, 225, 121, 255, 15 ],
					"numoutlets" : 2,
					"id" : "obj-9",
					"filename" : "jcom.jsui_texttoggle.js",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 179.0, 32.0, 25.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar active3",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 673.0, 470.0, 68.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "aux3/active",
					"text" : "jcom.parameter aux3/active @type msg_toggle @description \"switch Bus 3 on/off\"",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-11",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 748.0, 469.0, 390.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar active2",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 673.0, 447.0, 68.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "aux2/active",
					"text" : "jcom.parameter aux2/active @type msg_toggle @description \"switch Bus 2 on/off\"",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-13",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 748.0, 447.0, 390.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "active1",
					"numinlets" : 1,
					"jsarguments" : [ "off", "on", 68, 68, 68, 225, 225, 225, 121, 255, 15 ],
					"numoutlets" : 2,
					"id" : "obj-14",
					"filename" : "jcom.jsui_texttoggle.js",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 179.0, 18.0, 25.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar active1",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-15",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 673.0, 424.0, 68.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "aux1/active",
					"text" : "jcom.parameter aux1/active @type msg_toggle @description \"switch Bus 1 on/off\"",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-16",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 748.0, 423.0, 390.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Aux 3",
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontname" : "Arial",
					"patching_rect" : [ 142.0, 217.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Aux 2",
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-18",
					"fontname" : "Arial",
					"patching_rect" : [ 138.0, 246.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Aux 1",
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-19",
					"fontname" : "Arial",
					"patching_rect" : [ 142.0, 198.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ 0.4, 0.0, 158.0, "@size", 50, 12 ],
					"name" : "jcom.numberslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-20",
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 47.0, 49.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "aux3/gain",
					"text" : "jcom.parameter.gain aux3/gain @repetitions 0 @description \"gain of the input cable applied to all aux bus 3\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-21",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 647.0, 132.0, 283.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ 0.4, 0.0, 158.0, "@size", 50, 12 ],
					"name" : "jcom.numberslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-22",
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 33.0, 49.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "aux2/gain",
					"text" : "jcom.parameter.gain aux2/gain @repetitions 0 @description \"gain of the input cable applied to aux bus 2\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-23",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 645.0, 98.0, 273.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ 0.4, 0.0, 158.0, "@size", 50, 12 ],
					"name" : "jcom.numberslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-24",
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 19.0, 49.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "aux1/gain",
					"text" : "jcom.parameter.gain aux1/gain @repetitions 0 @description \"gain of the input cable applied to aux bus 1\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-25",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 645.0, 63.0, 273.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ 0.4, 0.0, 158.0, "@size", 50, 14 ],
					"name" : "jcom.numberslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-26",
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.0, 38.0, 50.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p colors",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 2,
					"id" : "obj-27",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 318.0, 108.0, 46.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 497.0, 319.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 497.0, 319.0, 600.0, 426.0 ],
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
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"patching_rect" : [ 63.0, 112.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-2",
									"patching_rect" : [ 197.0, 189.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 154.0, 30.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rgb2 66 0 2",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"hidden" : 1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"patching_rect" : [ 201.0, 101.0, 64.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "frgb 181 181 181",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"hidden" : 1,
									"numoutlets" : 1,
									"id" : "obj-5",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"patching_rect" : [ 362.0, 99.0, 92.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 47 46 36",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"hidden" : 1,
									"numoutlets" : 1,
									"id" : "obj-6",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"patching_rect" : [ 279.0, 101.0, 75.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-7",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"patching_rect" : [ 83.0, 58.0, 50.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-8",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"patching_rect" : [ 83.0, 30.0, 50.0, 17.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
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
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 2,
					"id" : "obj-28",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 318.0, 154.0, 61.0, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-29",
					"fontname" : "Arial",
					"outlettype" : [ "front" ],
					"patching_rect" : [ 318.0, 132.0, 16.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 188.0, 431.0, 147.0, 184.0 ],
						"bglocked" : 0,
						"defrect" : [ 188.0, 431.0, 147.0, 184.0 ],
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
									"maxclass" : "newobj",
									"text" : "delay 5",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontname" : "Arial",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 41.0, 70.0, 43.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 41.0, 22.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 43.0, 50.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"fontname" : "Arial",
									"outlettype" : [ "front" ],
									"patching_rect" : [ 43.0, 100.0, 50.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-5",
									"patching_rect" : [ 43.0, 128.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 4.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-6", 0 ],
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
					"maxclass" : "newobj",
					"varname" : "input/gain",
					"text" : "jcom.parameter.gain input/gain @repetitions 0 @description \"gain of the input cable applied to all aux busses\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-30",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 644.0, 27.0, 283.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-31",
					"patching_rect" : [ 465.0, 461.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---multicable signal output3--",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-32",
					"fontname" : "Arial",
					"patching_rect" : [ 482.0, 461.0, 146.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-33",
					"patching_rect" : [ 428.0, 431.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---multicable signal output2--",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-34",
					"fontname" : "Arial",
					"patching_rect" : [ 445.0, 431.0, 146.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-35",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 112.0, 85.0, 191.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-36",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 107.0, 125.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-37",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 251.0, 107.0, 31.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Arial",
					"patching_rect" : [ 255.0, 389.0, 49.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-39",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 211.0, 43.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 2,
					"id" : "obj-40",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 255.0, 233.0, 84.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-41",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 258.0, 47.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$2",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-42",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 345.0, 254.0, 20.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route mute",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 2,
					"id" : "obj-43",
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 345.0, 233.0, 72.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-44",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 345.0, 273.0, 38.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices are only updated when audio is off.",
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-45",
					"fontname" : "Arial",
					"patching_rect" : [ 10.0, 67.0, 198.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mute",
					"text" : "jcom.parameter mute @type msg_toggle @description \"When active, this attribute turns off the module's processing algorithm to save CPU\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-46",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 727.0, 274.0, 331.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter",
					"text" : "pvar Mute",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-47",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 727.0, 252.0, 56.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "Mute",
					"trackvertical" : 1,
					"snap" : 1,
					"name" : "jcom.button.mute.pct",
					"trackhorizontal" : 1,
					"numinlets" : 1,
					"mode" : 1,
					"numoutlets" : 1,
					"id" : "obj-48",
					"tracking" : 1,
					"outlettype" : [ "int" ],
					"multiplier" : 1,
					"patching_rect" : [ 238.0, 4.0, 11.0, 11.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-49",
					"patching_rect" : [ 386.0, 400.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-50",
					"outlettype" : [ "" ],
					"patching_rect" : [ 468.0, 178.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"fontsize" : 9.0,
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-51",
					"fontname" : "Arial",
					"patching_rect" : [ 1.0, 22.0, 41.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Voices",
					"fontsize" : 9.0,
					"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-52",
					"fontname" : "Arial",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 43.0, 20.0, 35.0, 17.0 ],
					"maximum" : 32
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Voices",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-53",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 727.0, 333.0, 63.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter voices @type msg_int @repetitions 0 @range 1 32 @range/clipmode both @description \"The number of audio channels in that multi~ cable. Changes only take effect when audio is off.\"",
					"linecount" : 3,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-54",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 727.0, 355.0, 300.0, 38.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-55",
					"fontname" : "Arial",
					"patching_rect" : [ 14.0, 121.0, 79.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-56",
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 121.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.multi.aux~",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"hidden" : 1,
					"numoutlets" : 4,
					"id" : "obj-57",
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 345.0, 357.0, 133.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-58",
					"fontname" : "Arial",
					"patching_rect" : [ 388.0, 152.0, 155.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-59",
					"patching_rect" : [ 0.0, 237.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---multicable signal output 1--",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-60",
					"fontname" : "Arial",
					"patching_rect" : [ 399.0, 400.0, 146.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jalg.hub",
					"text" : "jcom.hub jmod.sur.multi.aux~ @size 1U-half @module_type audio.no_panel @description \"auxiluaries for multichannel modules\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-61",
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 140.0, 315.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.gui.1Uh.a.stereo",
					"args" : [  ],
					"name" : "jcom.gui",
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-62",
					"lockeddragscroll" : 1,
					"patching_rect" : [ 0.0, 0.0, 256.0, 60.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [ 736.5, 403.0, 722.0, 403.0, 722.0, 326.0, 736.5, 326.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [ 736.5, 307.0, 721.0, 307.0, 721.0, 247.0, 736.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
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
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 3 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 2 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [ 264.5, 299.0, 354.5, 299.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [ 407.5, 293.0, 354.5, 293.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [ 354.5, 381.0, 264.5, 381.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [ 121.5, 136.0, 9.5, 136.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [ 129.5, 136.0, 9.5, 136.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [ 260.5, 136.0, 9.5, 136.0 ]
				}

			}
 ]
	}

}
