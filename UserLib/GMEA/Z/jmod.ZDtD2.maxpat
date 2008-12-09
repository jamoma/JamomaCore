{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 4.0, 82.0, 1202.0, 634.0 ],
		"bglocked" : 0,
		"defrect" : [ 4.0, 82.0, 1202.0, 634.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 2.0, 2.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[6]",
					"text" : "t l 0",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 500.0, 492.0, 107.0, 19.0 ],
					"outlettype" : [ "", "int" ],
					"fontname" : "Verdana",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "s",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 158.0, 130.0, 118.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-3",
					"presentation_rect" : [ 286.0, 34.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "file",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 41.0, 83.0, 118.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-30",
					"presentation_rect" : [ 4.0, 24.0, 20.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 620.0, 95.0, 5.0 ],
					"presentation" : 1,
					"id" : "obj-29",
					"presentation_rect" : [ 145.0, 10.0, 85.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 530.0, 615.0, 95.0, 5.0 ],
					"presentation" : 1,
					"id" : "obj-28",
					"presentation_rect" : [ 145.0, 3.0, 85.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mute 1 $1",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 120.0, 350.0, 68.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /audio/mute /audio/gain",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"patching_rect" : [ 120.0, 315.0, 274.0, 20.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p routing",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"patching_rect" : [ 145.0, 377.0, 268.0, 20.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-24",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 583.0, 289.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 583.0, 289.0, 640.0, 480.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"patching_rect" : [ 144.0, 60.0, 117.0, 17.0 ],
									"outlettype" : [ "", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-57"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 144.0, 28.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend prefix",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 111.0, 216.0, 74.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 81.0, 156.0, 24.0, 20.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 157.0, 24.0, 20.0 ],
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel fold",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 127.0, 51.0, 20.0 ],
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"patching_rect" : [ 73.0, 187.0, 46.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /type /path",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 3,
									"patching_rect" : [ 51.0, 100.0, 248.0, 20.0 ],
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 56.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 78.0, 293.0, 25.0, 25.0 ],
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 116.0, 293.0, 25.0, 25.0 ],
									"id" : "obj-22",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 285.0, 293.0, 25.0, 25.0 ],
									"id" : "obj-23",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 209.0, 120.5, 209.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 178.0, 82.5, 178.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.5, 179.0, 82.0, 179.0, 82.0, 182.0, 82.5, 182.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [ 175.0, 173.0, 109.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "time",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 43.0, 118.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-14",
					"presentation_rect" : [ 128.0, 46.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "O0:O0:O0",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 532.0, 656.0, 118.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"presentation_rect" : [ 148.0, 46.0, 51.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pitch",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 71.0, 44.0, 118.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-84",
					"presentation_rect" : [ 72.0, 46.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "time",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 104.0, 118.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-83",
					"presentation_rect" : [ 244.0, 34.0, 32.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 104.0, 118.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-82",
					"presentation_rect" : [ 196.0, 34.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "enveloppe",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 128.0, 118.0, 17.0 ],
					"presentation" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-81",
					"presentation_rect" : [ 196.0, 18.0, 58.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop[2]",
					"text" : "jcom.parameter sf/rampmode @type msg_int @repetitions/allow 0 @description \"Enveloppe mode : cut, fadein, fadeout\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 776.0, 540.0, 396.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-76",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop[1]",
					"text" : "jcom.parameter sf/ramptime @type msg_float @repetitions/allow 0 @description \"Fade time in seconds if you choose fadein or fadeout mode\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 772.0, 476.0, 380.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-75",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"numinlets" : 1,
					"slidercolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"ignoreclick" : 1,
					"bordercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 412.0, 658.0, 110.0, 10.0 ],
					"presentation" : 1,
					"candicane2" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"outlettype" : [ "", "" ],
					"orientation" : 0,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"peakcolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-47",
					"presentation_rect" : [ 199.0, 52.0, 99.0, 13.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setstyle" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "rptypp",
					"numinlets" : 1,
					"textcolor2" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"fontsize" : 9.0,
					"align" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 776.0, 516.0, 53.0, 17.0 ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"presentation" : 1,
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"items" : [ "–", ",", "<", ",", ">" ],
					"framecolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"bgcolor2" : [ 0.219608, 0.231373, 0.517647, 1.0 ],
					"arrow" : 0,
					"fontname" : "Arial",
					"discolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"types" : [  ],
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"togcolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"arrowlink" : 1,
					"id" : "obj-142",
					"textcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"presentation_rect" : [ 224.0, 34.0, 20.0, 17.0 ],
					"hltcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "rptimm",
					"minimum" : 0.0,
					"numinlets" : 1,
					"triangle" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 772.0, 450.0, 26.0, 17.0 ],
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-143",
					"presentation_rect" : [ 266.0, 34.0, 23.897068, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 376.0, 650.0, 25.0, 25.0 ],
					"id" : "obj-71",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 336.0, 650.0, 25.0, 25.0 ],
					"id" : "obj-69",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jalg.ZDtD2 1",
					"numinlets" : 4,
					"fontsize" : 12.0,
					"numoutlets" : 4,
					"patching_rect" : [ 336.0, 622.0, 110.0, 20.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[5]",
					"text" : "prepend symbol",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 500.0, 514.0, 107.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-65"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"bgoncolor" : [ 0.0, 1.0, 0.05098, 1.0 ],
					"bordercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 564.0, 219.0, 42.0, 18.0 ],
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "play",
					"fontname" : "Arial",
					"text" : "play",
					"borderoncolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-85",
					"bgoveroncolor" : [ 0.0, 1.0, 0.05098, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 8.0, 46.0, 29.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[5]",
					"text" : "jcom.parameter sf/play @type msg_int @repetitions/allow 1 @description \"Play current sound.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 564.0, 240.0, 316.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-40",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"bgoncolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 564.0, 358.0, 41.0, 17.0 ],
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "loop",
					"fontname" : "Arial",
					"bgovercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"text" : "loop",
					"bgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-91",
					"bgoveroncolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 40.0, 46.0, 29.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter sf/loopmode @type msg_int @repetitions/allow 0 @description \"Select the loopmode the file should be played (one shot or looped).\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 564.0, 382.0, 380.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-92",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "pi",
					"minimum" : 0.0,
					"numinlets" : 1,
					"triangle" : 0,
					"fontsize" : 9.0,
					"maximum" : 20.0,
					"numoutlets" : 2,
					"patching_rect" : [ 564.0, 314.0, 37.0, 17.0 ],
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-117",
					"presentation_rect" : [ 102.0, 46.0, 28.0, 17.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pitch",
					"text" : "jcom.parameter sf/pitch @type msg_float @range/bounds 0.01 20. @range/clipmode both @repetitions/allow 0 @description \"Select audio sample pitch.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 564.0, 280.0, 401.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-118",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[3]",
					"text" : "jcom.parameter selectedfile @type msg_list @repetitions/allow 1 @description \"path of the soundfile played \" @priority 31",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 292.0, 456.0, 443.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"prefix_mode" : 2,
					"autopopulate" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 188.0, 408.0, 100.0, 17.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : [  ],
					"arrow" : 0,
					"fontname" : "Arial",
					"types" : [ "AIFF", "WAVE", "Sd2f" ],
					"id" : "obj-5",
					"presentation_rect" : [ 22.0, 22.0, 170.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[2]",
					"text" : "jcom.parameter mainfolder @type msg_list @repetitions/allow 1 @description \"path of the parent folder dropped in, containing subfolders with sound files in \" @priority 30",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 134.0, 540.0, 561.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog folder",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 394.0, 356.0, 86.0, 17.0 ],
					"outlettype" : [ "", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 394.0, 326.0, 75.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"text" : "open",
					"id" : "obj-19",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 232.0, 2.0, 32.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 42.0, 310.0, 53.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.panelopen",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 42.0, 284.0, 95.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"patching_rect" : [ 42.0, 257.0, 49.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[1]",
					"text" : "jcom.message type @type msg_symbol @repetitions/allow 1 @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 518.0, 121.0, 579.0, 28.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"2 channel DtD Z module\"",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 24.0, 216.0, 440.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 70.0, 170.0, 196.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 80.0, 189.0, 137.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 223.0, 189.0, 38.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 248.0, 15.0, 15.0 ],
					"id" : "obj-70",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 22.0, 169.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-72",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 384.0, 134.0, 117.0, 17.0 ],
					"outlettype" : [ "", "int" ],
					"fontname" : "Verdana",
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message path @type msg_symbol @repetitions/allow 1 @description \"path of the parent folder dropped in, containing the sound files \"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 385.0, 160.0, 603.0, 28.0 ],
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-61"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 0.062745, 1.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 384.0, 46.0, 153.0, 61.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"border" : 1.0,
					"types" : [ "fold", "AIFF", "WAVE", "Sd2f" ],
					"id" : "obj-38",
					"presentation_rect" : [ 0.0, 19.0, 299.0, 49.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ -2.0, 2.0, 300.0, 70.0 ],
					"presentation" : 1,
					"has_gain" : 1,
					"outlettype" : [ "" ],
					"has_mute" : 1,
					"id" : "obj-78",
					"background" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 337.0, 557.0, 337.0, 557.0, 276.0, 573.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 209.0, 33.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 89.5, 209.0, 33.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 232.5, 209.0, 33.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [ 785.5, 567.0, 762.0, 567.0, 762.0, 513.0, 785.5, 513.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-143", 0 ],
					"hidden" : 0,
					"midpoints" : [ 781.5, 504.0, 759.0, 504.0, 759.0, 447.0, 781.5, 447.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-143", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 378.0, 573.5, 378.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 411.0, 549.0, 411.0, 549.0, 354.0, 573.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 272.0, 557.0, 272.0, 557.0, 214.0, 573.5, 214.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 393.5, 152.0, 394.0, 152.0, 394.0, 154.0, 394.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 411.0, 120.0, 411.0, 120.0, 609.0, 345.5, 609.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 2 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 1 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 535.0, 619.0, 535.0, 619.0, 535.0, 706.0, 535.0, 706.0, 581.0, 345.5, 581.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 3 ],
					"destination" : [ "obj-13", 0 ],
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
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-68", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 301.5, 492.0, 183.0, 492.0, 183.0, 405.0, 197.5, 405.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
