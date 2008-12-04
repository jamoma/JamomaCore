{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 66.0, 44.0, 1107.0, 723.0 ],
		"bglocked" : 0,
		"defrect" : [ 66.0, 44.0, 1107.0, 723.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
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
					"maxclass" : "comment",
					"text" : "time",
					"id" : "obj-14",
					"presentation_rect" : [ 128.0, 46.0, 32.0, 17.0 ],
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 120.0, 43.0, 118.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "O0:O0:O0",
					"id" : "obj-13",
					"presentation_rect" : [ 148.0, 46.0, 51.0, 17.0 ],
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 532.0, 656.0, 118.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend prefix",
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 178.0, 424.0, 74.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pitch",
					"id" : "obj-84",
					"presentation_rect" : [ 72.0, 46.0, 32.0, 17.0 ],
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 71.0, 44.0, 118.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "time",
					"id" : "obj-83",
					"presentation_rect" : [ 244.0, 34.0, 35.0, 17.0 ],
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 80.0, 104.0, 118.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode",
					"id" : "obj-82",
					"presentation_rect" : [ 196.0, 34.0, 35.0, 17.0 ],
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 30.0, 104.0, 118.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "enveloppe",
					"id" : "obj-81",
					"presentation_rect" : [ 196.0, 18.0, 58.0, 17.0 ],
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 28.0, 128.0, 118.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop[2]",
					"text" : "jcom.parameter sf/rampmode @type msg_int @repetitions/allow 0 @description \"Enveloppe mode : cut, fadein, fadeout\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-76",
					"fontname" : "Arial",
					"patching_rect" : [ 776.0, 540.0, 396.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop[1]",
					"text" : "jcom.parameter sf/ramptime @type msg_float @repetitions/allow 0 @description \"Fade time in seconds if you choose fadein or fadeout mode\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-75",
					"fontname" : "Arial",
					"patching_rect" : [ 772.0, 476.0, 380.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"peakcolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"outlettype" : [ "", "" ],
					"bordercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"id" : "obj-47",
					"presentation_rect" : [ 199.0, 52.0, 99.0, 13.0 ],
					"contdata" : 1,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane2" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"patching_rect" : [ 412.0, 658.0, 110.0, 10.0 ],
					"presentation" : 1,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"numinlets" : 1,
					"orientation" : 0,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"setstyle" : 1,
					"numoutlets" : 2,
					"slidercolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "rptypp",
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"framecolor" : [ 0.019608, 0.0, 0.690196, 1.0 ],
					"id" : "obj-142",
					"bgcolor2" : [ 0.219608, 0.231373, 0.517647, 1.0 ],
					"presentation_rect" : [ 224.0, 34.0, 20.0, 17.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"arrow" : 0,
					"discolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"togcolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"bgcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"patching_rect" : [ 776.0, 516.0, 53.0, 17.0 ],
					"arrowlink" : 1,
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"hltcolor" : [ 0.513726, 0.54902, 0.631373, 1.0 ],
					"textcolor2" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"items" : [ "–", ",", "<", ",", ">" ],
					"align" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "rptimm",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"id" : "obj-143",
					"presentation_rect" : [ 266.0, 34.0, 31.897068, 17.0 ],
					"fontname" : "Arial",
					"triangle" : 0,
					"patching_rect" : [ 772.0, 450.0, 26.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-71",
					"patching_rect" : [ 376.0, 650.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-69",
					"patching_rect" : [ 336.0, 650.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jalg.ZDtD2 1",
					"outlettype" : [ "signal", "signal", "", "" ],
					"id" : "obj-68",
					"fontname" : "Arial",
					"patching_rect" : [ 336.0, 622.0, 110.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[5]",
					"text" : "prepend symbol",
					"outlettype" : [ "" ],
					"id" : "obj-65",
					"fontname" : "Verdana",
					"patching_rect" : [ 500.0, 514.0, 107.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[4]",
					"text" : "prepend setsymbol",
					"outlettype" : [ "" ],
					"id" : "obj-63",
					"fontname" : "Verdana",
					"patching_rect" : [ 390.0, 514.0, 107.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"outlettype" : [ "", "", "int" ],
					"bgoncolor" : [ 0.0, 1.0, 0.05098, 1.0 ],
					"id" : "obj-85",
					"presentation_rect" : [ 8.0, 46.0, 29.0, 15.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"textovercolor" : [ 0.541176, 0.415686, 0.415686, 1.0 ],
					"patching_rect" : [ 564.0, 219.0, 42.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"text" : "Play",
					"numinlets" : 1,
					"texton" : "Play",
					"numoutlets" : 3,
					"bgoveroncolor" : [ 0.0, 1.0, 0.05098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[5]",
					"text" : "jcom.parameter sf/play @type msg_int @repetitions/allow 1 @description \"Play current sound.\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"patching_rect" : [ 564.0, 240.0, 316.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"outlettype" : [ "", "", "int" ],
					"bgoncolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"id" : "obj-91",
					"presentation_rect" : [ 40.0, 46.0, 29.0, 15.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"textovercolor" : [ 0.541176, 0.415686, 0.415686, 1.0 ],
					"bgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"patching_rect" : [ 564.0, 358.0, 41.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"text" : "loop",
					"numinlets" : 1,
					"bgovercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"texton" : "loop",
					"numoutlets" : 3,
					"bgoveroncolor" : [ 0.0, 0.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter sf/loopmode @type msg_int @repetitions/allow 0 @description \"Select the loopmode the file should be played (one shot or looped).\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-92",
					"fontname" : "Arial",
					"patching_rect" : [ 564.0, 382.0, 380.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "pi",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"id" : "obj-117",
					"presentation_rect" : [ 102.0, 46.0, 28.0, 17.0 ],
					"fontname" : "Arial",
					"maximum" : 20.0,
					"triangle" : 0,
					"patching_rect" : [ 564.0, 314.0, 37.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "pitch",
					"text" : "jcom.parameter sf/pitch @type msg_float @range/bounds 0.01 20. @range/clipmode both @repetitions/allow 0 @description \"Select audio sample pitch.\" @value/default 1.",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-118",
					"fontname" : "Arial",
					"patching_rect" : [ 564.0, 280.0, 401.0, 27.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[3]",
					"text" : "jcom.parameter selectedfile @type msg_symbol @repetitions/allow 1 @description \"path of the soundfile played \"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"patching_rect" : [ 218.0, 478.0, 437.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"prefix_mode" : 2,
					"types" : [ "AIFF", "WAVE", "Sd2f" ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-5",
					"presentation_rect" : [ 4.0, 22.0, 188.0, 17.0 ],
					"fontname" : "Arial",
					"arrow" : 0,
					"patching_rect" : [ 178.0, 456.0, 100.0, 17.0 ],
					"autopopulate" : 1,
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"items" : [  ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[2]",
					"text" : "jcom.parameter mainfolder @type msg_symbol @repetitions/allow 1 @description \"path of the parent folder dropped in, containing subfolders with sound files in \"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"patching_rect" : [ 134.0, 540.0, 561.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog folder",
					"outlettype" : [ "", "bang" ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"patching_rect" : [ 292.0, 112.0, 86.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"outlettype" : [ "", "", "int" ],
					"id" : "obj-19",
					"presentation_rect" : [ 230.0, 2.0, 44.0, 16.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 290.0, 86.0, 75.0, 18.0 ],
					"presentation" : 1,
					"fontsize" : 12.0,
					"text" : "open",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more",
					"id" : "obj-18",
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 334.0, 48.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 224.0, 614.0, 547.0, 124.0 ],
						"bglocked" : 0,
						"defrect" : [ 224.0, 614.0, 547.0, 124.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0requestpath",
									"id" : "obj-38",
									"fontname" : "Arial",
									"patching_rect" : [ 250.0, 230.0, 97.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"outlettype" : [ "bang", "bang", "bang" ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"patching_rect" : [ 265.0, 185.0, 228.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"patching_rect" : [ 450.0, 235.0, 40.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0addedfilemov",
									"id" : "obj-36",
									"fontname" : "Arial",
									"patching_rect" : [ 450.0, 260.0, 105.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"patching_rect" : [ 350.0, 230.0, 40.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s",
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"patching_rect" : [ 490.0, 200.0, 23.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0addedfiledir",
									"id" : "obj-15",
									"fontname" : "Arial",
									"patching_rect" : [ 350.0, 260.0, 95.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p folderlist",
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"patching_rect" : [ 440.0, 110.0, 65.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 22.0, 228.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 22.0, 228.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel AddedFiles",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"patching_rect" : [ 64.0, 172.0, 94.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"patching_rect" : [ 123.0, 197.627747, 57.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_majname",
													"outlettype" : [ "" ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"patching_rect" : [ 50.046204, 100.0, 113.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s",
													"outlettype" : [ "" ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"patching_rect" : [ 160.0, 220.627747, 23.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"outlettype" : [ "" ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"patching_rect" : [ 160.0, 243.627747, 98.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump clear",
													"outlettype" : [ "dump", "clear" ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 124.627747, 154.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #1 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"patching_rect" : [ 50.0, 147.627747, 59.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 4,
													"save" : [ "#N", "coll", "$1", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-36",
													"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-37",
													"patching_rect" : [ 184.0, 268.627747, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p filelist",
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"patching_rect" : [ 385.0, 140.0, 51.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 35.0, 146.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 35.0, 146.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"patching_rect" : [ 331.0, 97.0, 40.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"outlettype" : [ "", "" ],
													"id" : "obj-51",
													"fontname" : "Arial",
													"patching_rect" : [ 351.0, 72.0, 33.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r  #1maj",
													"outlettype" : [ "" ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"patching_rect" : [ 295.0, 71.0, 54.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-49",
													"fontname" : "Arial",
													"patching_rect" : [ 333.0, 220.0, 79.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"patching_rect" : [ 331.0, 248.0, 98.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s clear",
													"outlettype" : [ "", "clear" ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"patching_rect" : [ 331.0, 127.0, 135.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-29",
													"fontname" : "Arial",
													"patching_rect" : [ 332.0, 197.0, 49.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"outlettype" : [ "" ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"patching_rect" : [ 332.0, 150.0, 96.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #1 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-27",
													"fontname" : "Arial",
													"patching_rect" : [ 332.0, 174.0, 59.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 4,
													"save" : [ "#N", "coll", "$1", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-23",
													"patching_rect" : [ 351.0, 43.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-33",
													"patching_rect" : [ 331.0, 280.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [ 304.5, 93.0, 340.5, 93.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [ 402.5, 242.0, 340.5, 242.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [ 456.5, 275.0, 340.5, 275.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 1 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [ 374.5, 120.0, 340.5, 120.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dump",
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"patching_rect" : [ 435.0, 85.0, 41.0, 18.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"patching_rect" : [ 115.0, 205.0, 40.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s",
									"outlettype" : [ "" ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"patching_rect" : [ 135.0, 180.0, 23.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Dans addedfile, choisir le buffer a effacer et bang",
									"id" : "obj-50",
									"fontname" : "Arial",
									"textcolor" : [ 0.933333, 0.101961, 0.101961, 1.0 ],
									"frgb" : [ 0.933333, 0.101961, 0.101961, 1.0 ],
									"patching_rect" : [ 210.0, 290.0, 356.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0addedfiledel",
									"id" : "obj-42",
									"fontname" : "Arial",
									"patching_rect" : [ 115.0, 230.0, 98.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p addedfilelist",
									"outlettype" : [ "clear" ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 85.0, 84.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 369.0, 116.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 369.0, 116.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "symbol AddedFiles",
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"patching_rect" : [ 336.0, 184.0, 124.0, 18.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r  #1maj",
													"outlettype" : [ "" ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"patching_rect" : [ 337.0, 136.0, 54.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 0,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"id" : "obj-49",
													"fontname" : "Arial",
													"patching_rect" : [ 341.0, 250.0, 79.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"patching_rect" : [ 345.0, 283.0, 98.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"outlettype" : [ "", "" ],
													"id" : "obj-29",
													"fontname" : "Arial",
													"patching_rect" : [ 340.0, 227.0, 49.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b clear",
													"outlettype" : [ "bang", "clear" ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"patching_rect" : [ 338.0, 160.0, 118.0, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #1 1",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-27",
													"fontname" : "Arial",
													"patching_rect" : [ 340.0, 204.0, 59.5, 20.0 ],
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 4,
													"save" : [ "#N", "coll", "$1", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-33",
													"patching_rect" : [ 347.0, 315.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 1 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [ 446.5, 309.0, 366.0, 309.0, 366.0, 306.0, 356.5, 306.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [ 410.5, 272.0, 354.5, 272.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pouvoir créer des sous-dossiers",
									"id" : "obj-18",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 125.0, 435.0, 194.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "dans un dossier déjà existant",
									"id" : "obj-4",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 125.0, 410.0, 194.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-> pouvoir utiliser les menus dans d'autres modules",
									"linecount" : 2,
									"id" : "obj-17",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 90.0, 555.0, 194.0, 34.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "stocker dans les colls",
									"id" : "obj-16",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 90.0, 525.0, 194.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "path en parameter",
									"id" : "obj-14",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 90.0, 495.0, 194.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "effacement de buffers (addedFiles)",
									"id" : "obj-11",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 90.0, 465.0, 194.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sauvegarde de buffer (addedFiles)",
									"id" : "obj-10",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 90.0, 385.0, 194.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "à rajouter :",
									"id" : "obj-9",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 60.0, 350.0, 68.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "quand on sauve sur disque un buffer~ -> il l'efface de la liste des addedFiles et crée le buffer~correspondant (dans l'endroit où on a tous les buffers du folder principal)",
									"linecount" : 3,
									"id" : "obj-5",
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 210.0, 315.0, 356.0, 48.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"patching_rect" : [ 345.0, 0.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"outlettype" : [ "", "", "int" ],
									"id" : "obj-33",
									"presentation_rect" : [ 275.0, 50.0, 88.0, 21.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.219608, 0.47451, 0.784314, 1.0 ],
									"patching_rect" : [ 265.0, 160.0, 88.0, 21.0 ],
									"presentation" : 1,
									"fontsize" : 12.0,
									"text" : "Move to ->",
									"numinlets" : 1,
									"bgovercolor" : [ 0.352941, 0.533333, 0.956863, 1.0 ],
									"background" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"outlettype" : [ "", "", "int" ],
									"id" : "obj-32",
									"presentation_rect" : [ 20.0, 50.0, 88.0, 21.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 1.0, 0.321569, 0.321569, 1.0 ],
									"patching_rect" : [ 10.0, 155.0, 88.0, 21.0 ],
									"presentation" : 1,
									"fontsize" : 12.0,
									"text" : "Delete buffer~",
									"numinlets" : 1,
									"bgovercolor" : [ 0.956863, 0.352941, 0.352941, 1.0 ],
									"background" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Addedfile",
									"id" : "obj-29",
									"presentation_rect" : [ 120.0, 25.0, 150.0, 20.0 ],
									"fontname" : "Arial",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 105.0, 135.0, 150.0, 20.0 ],
									"presentation" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"background" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"prefix_mode" : 2,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-24",
									"presentation_rect" : [ 370.0, 75.0, 156.0, 20.0 ],
									"fontname" : "Arial",
									"patching_rect" : [ 440.0, 165.0, 153.0, 20.0 ],
									"autopopulate" : 1,
									"presentation" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"items" : [ "solo peltetmarto2.wav", ",", "ica loulegerfadesolo.wav" ],
									"background" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"prefix_mode" : 2,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-25",
									"presentation_rect" : [ 370.0, 50.0, 156.0, 20.0 ],
									"fontname" : "Arial",
									"patching_rect" : [ 440.0, 140.0, 153.0, 20.0 ],
									"autopopulate" : 1,
									"presentation" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"items" : [ "azerty", ",", "qsdf", ",", "wxcv" ],
									"background" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"prefix_mode" : 2,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-21",
									"presentation_rect" : [ 115.0, 50.0, 156.0, 20.0 ],
									"fontname" : "Arial",
									"patching_rect" : [ 105.0, 160.0, 153.0, 20.0 ],
									"autopopulate" : 1,
									"presentation" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"items" : [  ],
									"background" : 1,
									"numoutlets" : 3
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 2 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-37", 0 ],
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
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [ 144.5, 201.0, 207.0, 201.0, 207.0, 212.0, 480.5, 212.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 516.5, 135.0, 393.0, 135.0, 393.0, 135.0, 394.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 394.5, 162.0, 449.5, 162.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 152.0, 114.5, 152.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 310.0, 53.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.panelopen",
					"outlettype" : [ "", "" ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 284.0, 95.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0",
					"outlettype" : [ "int" ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"patching_rect" : [ 148.0, 364.0, 24.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"outlettype" : [ "int" ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"patching_rect" : [ 117.0, 365.0, 24.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel fold",
					"outlettype" : [ "bang", "" ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"patching_rect" : [ 117.0, 335.0, 51.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2",
					"outlettype" : [ "", "" ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"patching_rect" : [ 140.0, 395.0, 46.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"patching_rect" : [ 42.0, 257.0, 49.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /type /path",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"patching_rect" : [ 118.0, 308.0, 248.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[1]",
					"text" : "jcom.message type @type msg_symbol @repetitions/allow 1 @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"patching_rect" : [ 518.0, 121.0, 579.0, 28.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"A module for autogenerating buffers from folders and files\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"patching_rect" : [ 22.0, 216.0, 432.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 170.0, 196.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"patching_rect" : [ 80.0, 189.0, 137.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"patching_rect" : [ 223.0, 189.0, 38.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-70",
					"patching_rect" : [ 22.0, 248.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-72",
					"patching_rect" : [ 22.0, 169.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"outlettype" : [ "", "int" ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"patching_rect" : [ 384.0, 134.0, 117.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message path @type msg_symbol @repetitions/allow 1 @description \"path of the parent folder dropped in, containing the sound files \"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-61",
					"fontname" : "Verdana",
					"patching_rect" : [ 386.0, 156.0, 603.0, 28.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"types" : [ "fold", "AIFF", "WAVE", "Sd2f" ],
					"outlettype" : [ "", "" ],
					"bordercolor" : [ 1.0, 1.0, 0.062745, 1.0 ],
					"id" : "obj-38",
					"presentation_rect" : [ 0.0, 19.0, 299.0, 49.0 ],
					"border" : 1.0,
					"patching_rect" : [ 384.0, 46.0, 153.0, 61.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"varname" : "/autobuffer",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"id" : "obj-78",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"patching_rect" : [ 0.0, 2.0, 300.0, 70.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"midpoints" : [ 356.5, 423.0, 729.0, 423.0, 729.0, 423.0, 729.0, 423.0, 729.0, 498.0, 729.0, 498.0, 729.0, 588.0, 436.5, 588.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 535.0, 619.0, 535.0, 619.0, 535.0, 706.0, 535.0, 706.0, 580.0, 345.5, 580.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.5, 441.0, 120.0, 441.0, 120.0, 609.0, 345.5, 609.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 149.5, 417.0, 187.5, 417.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 126.5, 386.0, 149.5, 386.0 ]
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
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 387.0, 149.0, 387.0, 149.0, 390.0, 149.5, 390.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 301.5, 131.0, 393.5, 131.0 ]
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 149.5, 417.0, 143.5, 417.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 393.5, 152.0, 394.0, 152.0, 394.0, 154.0, 395.5, 154.0 ]
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
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 272.0, 557.0, 272.0, 557.0, 214.0, 573.5, 214.0 ]
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
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 411.0, 549.0, 411.0, 549.0, 354.0, 573.5, 354.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [ 242.0, 381.0, 176.5, 381.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 436.5, 511.0, 399.5, 511.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 399.5, 535.0, 375.0, 535.0, 375.0, 535.0, 174.0, 535.0, 174.0, 451.0, 187.5, 451.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 436.5, 510.0, 509.5, 510.0 ]
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
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-143", 0 ],
					"hidden" : 0,
					"midpoints" : [ 781.5, 504.0, 759.0, 504.0, 759.0, 447.0, 781.5, 447.0 ]
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
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 209.0, 31.5, 209.0 ]
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
					"midpoints" : [ 89.5, 209.0, 31.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 232.5, 209.0, 31.5, 209.0 ]
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
 ]
	}

}
