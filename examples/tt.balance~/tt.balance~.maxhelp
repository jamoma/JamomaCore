{
	"patcher" : 	{
		"rect" : [ 25.0, 47.0, 735.0, 648.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 47.0, 735.0, 648.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"outlettype" : [ "" ],
					"patching_rect" : [ 386.0, 427.0, 36.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-5",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 450.0, 401.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Balanced signal.",
					"patching_rect" : [ 104.0, 159.0, 80.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cutoff <float>: Set cutoff frequency of internal low pass filter",
					"patching_rect" : [ 104.0, 100.0, 289.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "clear: clear internal low pass filter",
					"patching_rect" : [ 104.0, 88.0, 210.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comperator signal.",
					"patching_rect" : [ 104.0, 112.0, 152.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Signal to balance.",
					"patching_rect" : [ 104.0, 76.0, 152.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 208.0, 522.0, 23.0, 61.0 ],
					"id" : "obj-14",
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 394.0, 160.0, 46.0, 17.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-15",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0.5",
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.0, 189.0, 40.0, 15.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-1",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 70.0, 499.0, 96.0, 12.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"interval" : 100,
					"bgcolor" : [ 0.407843, 0.407843, 0.407843, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 70.0, 395.0, 96.0, 12.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"interval" : 100,
					"bgcolor" : [ 0.407843, 0.407843, 0.407843, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p RichSignal",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 207.0, 255.0, 62.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-19",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"patcher" : 					{
						"rect" : [ 152.0, 138.0, 448.0, 503.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 152.0, 138.0, 448.0, 503.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.2",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 54.0, 295.0, 41.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tri~",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 47.0, 231.0, 46.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "trunc~",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 320.0, 231.0, 43.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 224.0, 261.0, 32.5, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 0.01",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 256.0, 204.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-39",
									"numinlets" : 1,
									"fontsize" : 7.9,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "phasor~ 1",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 320.0, 167.0, 53.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-41",
									"numinlets" : 2,
									"fontsize" : 7.9,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 64",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 320.0, 204.0, 35.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-42",
									"numinlets" : 2,
									"fontsize" : 7.9,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ioscbank~ 64 64 512",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 224.0, 321.0, 114.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-45",
									"numinlets" : 4,
									"fontsize" : 7.9,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 47.0, 375.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 47.0, 159.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-45", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-45", 3 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 70.0, 293.0, 96.0, 12.0 ],
					"warmcolor" : [ 0.85098, 0.85098, 0.0, 1.0 ],
					"tepidcolor" : [ 0.6, 0.729412, 0.0, 1.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"interval" : 100,
					"bgcolor" : [ 0.407843, 0.407843, 0.407843, 1.0 ],
					"numoutlets" : 1,
					"coldcolor" : [ 0.0, 0.658824, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left outlet:",
					"patching_rect" : [ 41.0, 159.0, 60.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Right inlet:",
					"patching_rect" : [ 41.0, 112.0, 59.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-22",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "200",
					"outlettype" : [ "" ],
					"patching_rect" : [ 394.0, 189.0, 26.0, 15.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-23",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s metro1\/0",
					"patching_rect" : [ 93.0, 209.0, 61.0, 17.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-24",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "...and then balanced.",
					"patching_rect" : [ 51.0, 440.0, 96.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-25",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"outlettype" : [ "" ],
					"patching_rect" : [ 316.0, 568.0, 27.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-26",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"outlettype" : [ "" ],
					"patching_rect" : [ 248.0, 568.0, 65.0, 15.0 ],
					"fontname" : "Arial",
					"id" : "obj-27",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"patching_rect" : [ 207.0, 596.0, 29.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-28",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dspstate~",
					"outlettype" : [ "int", "float", "int", "int" ],
					"patching_rect" : [ 37.0, 186.0, 53.0, 17.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-29",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+~ 100",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 369.0, 326.0, 39.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-30",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 2000",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 369.0, 307.0, 48.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-31",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 0.5",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 369.0, 287.0, 55.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-32",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 70.0, 461.0, 96.0, 39.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"setminmax" : [ 0.0, 0.1 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setstyle" : 3,
					"id" : "obj-33",
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"compatibility" : 1,
					"numinlets" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "avg~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 172.0, 461.0, 30.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-34",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 70.0, 357.0, 96.0, 39.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"setminmax" : [ 0.0, 0.1 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setstyle" : 3,
					"id" : "obj-35",
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"compatibility" : 1,
					"numinlets" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "avg~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 172.0, 357.0, 30.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-36",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 70.0, 255.0, 96.0, 39.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"setminmax" : [ 0.0, 0.1 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setstyle" : 3,
					"id" : "obj-37",
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"compatibility" : 1,
					"numinlets" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"numoutlets" : 2,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 20",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 37.0, 209.0, 50.0, 17.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-38",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "avg~",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 172.0, 255.0, 30.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-39",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.balance~",
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 207.0, 461.0, 107.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-40",
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "__________________",
					"patching_rect" : [ 365.0, 248.0, 114.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-41",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sweeping Cuttoff Freq",
					"linecount" : 2,
					"patching_rect" : [ 366.0, 260.0, 60.0, 28.0 ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 430.0, 287.0, 35.0, 17.0 ],
					"minimum" : 0.0,
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "lores~ 2000 0.5",
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 207.0, 357.0, 82.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-44",
					"numinlets" : 3,
					"fontsize" : 7.9,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 207.0, 210.0, 35.0, 17.0 ],
					"minimum" : 0.0,
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-45",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Frequency",
					"patching_rect" : [ 200.0, 195.0, 56.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-46",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Resonance Factor Q",
					"linecount" : 2,
					"patching_rect" : [ 428.0, 260.0, 53.0, 28.0 ],
					"fontname" : "Arial",
					"id" : "obj-47",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "LOW PASS FILTER",
					"patching_rect" : [ 370.0, 238.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-48",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A pulse signal....",
					"patching_rect" : [ 48.0, 234.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-49",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "...is low pass filtered...",
					"patching_rect" : [ 48.0, 336.0, 115.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-50",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tt.balance~",
					"patching_rect" : [ 43.0, 30.0, 100.0, 21.0 ],
					"fontname" : "Arial",
					"id" : "obj-51",
					"numinlets" : 1,
					"fontsize" : 10.533333,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Balance intensity of a signal to match that of a referential signal.",
					"patching_rect" : [ 41.0, 56.0, 315.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-52",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left inlet:",
					"patching_rect" : [ 41.0, 76.0, 54.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-53",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "No arguments.",
					"patching_rect" : [ 41.0, 140.0, 100.0, 17.0 ],
					"fontname" : "Arial",
					"id" : "obj-54",
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 43.0, 231.0, 286.0, 81.0 ],
					"rounded" : 0,
					"id" : "obj-55",
					"numinlets" : 1,
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 43.0, 436.0, 286.0, 81.0 ],
					"rounded" : 0,
					"id" : "obj-56",
					"numinlets" : 1,
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 43.0, 332.0, 286.0, 81.0 ],
					"rounded" : 0,
					"id" : "obj-57",
					"numinlets" : 1,
					"bgcolor" : [ 0.909804, 0.909804, 0.909804, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p TwoChannelsExample",
					"patching_rect" : [ 537.0, 210.0, 136.0, 20.0 ],
					"fontname" : "Arial",
					"id" : "obj-18",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"rect" : [ 133.0, 72.0, 768.0, 582.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 133.0, 72.0, 768.0, 582.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open, 1, loop 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 81.0, 87.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-36",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"presentation_rect" : [ 317.0, 82.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open sho0630.aif, 1, loop 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 46.0, 150.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-28",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open drumLoop.aif, 1, loop 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 282.0, 25.0, 158.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-24",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open cello-f2.aif, 1, loop 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.0, 25.0, 143.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-23",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 253.0, 42.0, 18.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-22",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 162.0, 200.0, 20.0, 140.0 ],
									"id" : "obj-21",
									"numinlets" : 2,
									"numoutlets" : 2,
									"presentation_rect" : [ 177.0, 248.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 141.0, 200.0, 20.0, 140.0 ],
									"id" : "obj-20",
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sfplay~ 2",
									"outlettype" : [ "signal", "signal", "bang" ],
									"patching_rect" : [ 281.0, 113.0, 57.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 3,
									"presentation_rect" : [ 250.0, 120.0, 0.0, 0.0 ],
									"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open, 1, loop 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 166.0, 81.0, 87.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sfplay~ 2",
									"outlettype" : [ "signal", "signal", "bang" ],
									"patching_rect" : [ 139.0, 113.0, 57.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 3,
									"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startwindow",
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 321.0, 72.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 28.0, 96.0, 50.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"patching_rect" : [ 139.0, 355.0, 45.0, 45.0 ],
									"id" : "obj-5",
									"numinlets" : 2,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tt.balance~ 2",
									"outlettype" : [ "signal", "signal", "" ],
									"patching_rect" : [ 139.0, 160.0, 232.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 4,
									"fontsize" : 10.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "frequency $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 126.0, 78.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-1", 3 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-1", 2 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "frequency",
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 431.0, 59.0, 18.0 ],
					"fontname" : "Arial",
					"id" : "obj-3",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-44", 1 ],
					"hidden" : 0,
					"midpoints" : [ 378.5, 348.0, 248.0, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [ 216.5, 285.0, 304.5, 285.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 395.5, 447.0, 339.0, 447.0, 339.0, 423.0, 216.5, 423.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 459.0, 339.0, 459.0, 339.0, 423.0, 216.5, 423.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 216.5, 483.0, 204.0, 483.0, 204.0, 456.0, 181.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 216.5, 495.0, 79.5, 495.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 276.0, 169.0, 276.0, 169.0, 250.0, 79.5, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 216.5, 295.0, 79.5, 295.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 378.0, 169.0, 378.0, 169.0, 352.0, 79.5, 352.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 216.5, 392.0, 79.5, 392.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 482.0, 169.0, 482.0, 169.0, 456.0, 79.5, 456.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [ 46.5, 206.0, 102.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 216.5, 278.0, 204.0, 278.0, 204.0, 251.0, 181.5, 251.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [ 46.5, 247.0, 181.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 216.5, 378.0, 204.0, 378.0, 204.0, 352.0, 181.5, 352.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 46.5, 323.0, 181.5, 323.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [ 46.5, 398.0, 181.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [ 403.5, 208.0, 216.5, 208.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 325.5, 588.0, 216.5, 588.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 257.5, 590.0, 216.5, 590.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [ 217.5, 593.0, 226.5, 593.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 2 ],
					"hidden" : 0,
					"midpoints" : [ 439.5, 352.0, 279.5, 352.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
