{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 1.0, 44.0, 955.0, 783.0 ],
		"bglocked" : 0,
		"defrect" : [ 1.0, 44.0, 955.0, 783.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
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
					"maxclass" : "newobj",
					"varname" : "sample/buffername[3]",
					"text" : "jcom.parameter sound/enveloppe @type msg_list @priority 31",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 385.0, 222.0, 154.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-128",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.message sound/random @repetitions/allow 1 @description \"message to trigger menu change\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 357.0, 159.0, 304.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA[1]",
					"presentation_rect" : [ 503.0, 186.0, 42.0, 19.0 ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"patching_rect" : [ 342.0, 454.0, 52.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-121",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "length random",
					"presentation_rect" : [ 133.0, 60.0, 90.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 745.0, 563.0, 84.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"presentation" : 1,
					"id" : "obj-117",
					"textcolor" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.textslider",
					"presentation_rect" : [ 126.0, 65.0, 96.0, 9.0 ],
					"range" : [ 0.0, 291.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 705.0, 562.0, 153.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-118",
					"numoutlets" : 1,
					"bgcolor" : [ 0.090196, 0.090196, 0.090196, 0.698039 ],
					"text" : "length_randomness",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "phase cancellation",
					"presentation_rect" : [ 12.0, 60.0, 115.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 724.0, 526.0, 103.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"presentation" : 1,
					"id" : "obj-116",
					"textcolor" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "position randomness",
					"presentation_rect" : [ 96.0, 156.0, 115.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 561.0, 458.0, 115.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"presentation" : 1,
					"id" : "obj-110",
					"textcolor" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 10.0,
					"patching_rect" : [ 835.0, 480.0, 70.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-115",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b f",
					"fontsize" : 10.0,
					"patching_rect" : [ 856.0, 428.0, 32.5, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-104",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.",
					"fontsize" : 10.0,
					"patching_rect" : [ 835.0, 455.0, 52.5, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-113",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend range 0.",
					"fontsize" : 10.0,
					"patching_rect" : [ 708.0, 457.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-29",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.textslider",
					"presentation_rect" : [ 4.0, 65.0, 117.0, 9.0 ],
					"range" : [ 0.0, 291.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 716.0, 524.0, 153.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-103",
					"numoutlets" : 1,
					"bgcolor" : [ 0.090196, 0.090196, 0.090196, 0.698039 ],
					"text" : "phase_cancellation",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend range 0.",
					"fontsize" : 10.0,
					"patching_rect" : [ 545.0, 427.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.textslider",
					"presentation_rect" : [ 2.0, 160.0, 294.0, 11.0 ],
					"range" : [ 0.0, 5510.0625 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 548.0, 457.0, 149.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-3",
					"numoutlets" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.698039 ],
					"text" : "position_randomness",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "density jit",
					"presentation_rect" : [ 615.0, 714.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 98.0, 709.0, 68.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation" : 1,
					"id" : "obj-86",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 568.0, 713.0, 39.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 48.0, 706.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-94",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dispstart[2]",
					"text" : "jcom.parameter density/jit @type msg_float @range/bounds 0. 512. @range/clipmode both @ramp/function linear @repetitions/allow 0 @description \"desired grain density\" @priority 24",
					"linecount" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 143.0, 706.0, 280.0, 38.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dispstart[1]",
					"text" : "jcom.parameter density @type msg_float @range/bounds 0. 512. @range/clipmode both @ramp/function linear @repetitions/allow 0 @description \"desired grain density\" @priority 24",
					"linecount" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 145.0, 663.0, 279.0, 38.0 ],
					"numinlets" : 1,
					"id" : "obj-142",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation_rect" : [ 3.0, 41.0, 25.0, 15.0 ],
					"fontsize" : 9.0,
					"bgoncolor" : [ 0.121569, 0.709804, 0.207843, 1.0 ],
					"texton" : "Play",
					"patching_rect" : [ 89.0, 556.0, 42.0, 18.0 ],
					"numinlets" : 1,
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-85",
					"rounded" : 5.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"text" : "play",
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"bgoveroncolor" : [ 0.121569, 0.709804, 0.207843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation_rect" : [ 29.0, 41.0, 32.0, 15.0 ],
					"fontsize" : 9.0,
					"bgoncolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"texton" : "cont",
					"patching_rect" : [ 82.0, 624.0, 42.0, 18.0 ],
					"numinlets" : 1,
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-138",
					"mode" : 1,
					"rounded" : 5.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"fontname" : "Arial",
					"text" : "1shot",
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgovercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"bgoveroncolor" : [ 0.0, 0.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "density :",
					"presentation_rect" : [ 124.0, 42.0, 43.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 32.0, 664.0, 44.0, 17.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"presentation" : 1,
					"id" : "obj-134",
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "buffer :",
					"presentation_rect" : [ 114.0, 23.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 342.0, 103.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"presentation" : 1,
					"id" : "obj-123",
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "folder :",
					"presentation_rect" : [ 3.0, 22.0, 39.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 72.0, 205.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"presentation" : 1,
					"id" : "obj-132",
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b f",
					"fontsize" : 10.0,
					"patching_rect" : [ 601.0, 337.0, 32.5, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-99",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!- 0.",
					"fontsize" : 10.0,
					"patching_rect" : [ 574.0, 365.0, 59.5, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-98",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"presentation_rect" : [ 222.0, 60.0, 76.0, 17.0 ],
					"items" : [ "blackman.aif", ",", "expdec.aif", ",", "expmod.aif", ",", "gauss.aif", ",", "hanning.aif", ",", "trapez10.aif", ",", "trapez20.aif", ",", "trapez30.aif", ",", "tri.aif" ],
					"fontsize" : 9.0,
					"prefix_mode" : 2,
					"types" : [  ],
					"prefix" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/UserLib/GMEA/Z/jmod.Zgran.enveloppes/",
					"patching_rect" : [ 548.0, 228.0, 155.0, 17.0 ],
					"numinlets" : 1,
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-88",
					"autopopulate" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation_rect" : [ 162.0, 40.0, 36.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 86.0, 664.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-109",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p selectit",
					"fontsize" : 12.0,
					"patching_rect" : [ 274.0, 364.0, 100.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-97",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 200.0, 390.0, 1206.0, 477.0 ],
						"bglocked" : 0,
						"defrect" : [ 200.0, 390.0, 1206.0, 477.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frombuffermenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 908.0, 275.0, 113.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-124",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b",
									"fontsize" : 10.0,
									"patching_rect" : [ 913.0, 320.0, 32.5, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-114",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl change",
									"fontsize" : 10.0,
									"patching_rect" : [ 913.0, 295.0, 58.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-111",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 904.0, 358.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 9.0,
									"patching_rect" : [ 819.0, 343.0, 72.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 749.0, 388.0, 72.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 0 #0_bufgranul.snd1",
									"fontsize" : 9.0,
									"patching_rect" : [ 834.0, 388.0, 143.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-6",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_to.bufgranul",
									"fontsize" : 9.0,
									"patching_rect" : [ 774.0, 428.0, 115.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /sound",
									"fontsize" : 12.0,
									"patching_rect" : [ 14.0, 33.0, 125.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /folder /buffer /bufferpool",
									"fontsize" : 9.0,
									"patching_rect" : [ 15.0, 60.0, 300.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 15.0, 6.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tobuffermenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 541.0, 394.0, 113.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-56",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frombuffermenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 711.0, 304.0, 113.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-54",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tofoldermenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 515.0, 250.0, 106.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-52",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_fromfoldermenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 751.0, 188.0, 113.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-50",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frombpoolmenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 655.0, 82.0, 106.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-45",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tobpoolmenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 527.0, 144.0, 106.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-44",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 9.0,
									"patching_rect" : [ 527.0, 120.0, 82.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 9.0,
									"patching_rect" : [ 527.0, 99.0, 47.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-9",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p refreshbuffer",
									"fontsize" : 12.0,
									"patching_rect" : [ 629.0, 268.0, 141.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-40",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "clear" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 67.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 67.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 9.0,
													"patching_rect" : [ 82.0, 98.0, 47.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-45",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.5, 207.0, 79.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l clear",
													"fontsize" : 9.0,
													"patching_rect" : [ 80.0, 124.0, 126.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-37",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl iter 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 231.0, 46.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-36",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 255.0, 87.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-34",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"fontsize" : 9.0,
													"patching_rect" : [ 82.0, 146.0, 87.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-30",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"fontsize" : 9.0,
													"patching_rect" : [ 54.0, 184.0, 98.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-29",
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 46.0, 42.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-33",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 82.0, 46.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-38",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 49.5, 332.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-39",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-37", 1 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p refreshfolder",
									"fontsize" : 12.0,
									"patching_rect" : [ 629.0, 168.0, 100.0, 20.0 ],
									"numinlets" : 2,
									"id" : "obj-32",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "clear" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 895.0, 218.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 895.0, 218.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0 dump l clear",
													"fontsize" : 9.0,
													"patching_rect" : [ 72.0, 140.0, 216.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-44",
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "dump", "", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 9.0,
													"patching_rect" : [ 140.0, 201.0, 90.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-28",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 9.0,
													"patching_rect" : [ 140.0, 227.0, 87.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-24",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend refer",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 100.0, 136.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-23",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 177.0, 98.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-7",
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 54.5, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-21",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 119.5, 40.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-22",
													"numoutlets" : 1,
													"outlettype" : [ "dump" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 18.0, 304.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-26",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 140.0, 306.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-31",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-44", 3 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 1 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 2 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p refreshbufferpool",
									"fontsize" : 12.0,
									"patching_rect" : [ 367.0, 52.0, 519.0, 20.0 ],
									"numinlets" : 0,
									"id" : "obj-20",
									"numoutlets" : 6,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "bang", "bang", "", "dump", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 478.0, 113.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 478.0, 113.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 152.0, 324.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear",
													"fontsize" : 9.0,
													"patching_rect" : [ 473.0, 157.0, 50.0, 15.0 ],
													"numinlets" : 2,
													"id" : "obj-52",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b b",
													"fontsize" : 9.0,
													"patching_rect" : [ 57.0, 172.0, 69.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-46",
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 50.0, 104.0, 20.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-21",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"fontsize" : 9.0,
													"patching_rect" : [ 233.0, 100.0, 100.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"fontsize" : 9.0,
													"patching_rect" : [ 216.5, 191.0, 90.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-17",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 9.0,
													"patching_rect" : [ 216.5, 215.0, 87.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-18",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b dump b",
													"fontsize" : 9.0,
													"patching_rect" : [ 74.5, 137.0, 417.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "dump", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r refresh_buffpools",
													"fontsize" : 9.0,
													"patching_rect" : [ 75.5, 104.0, 99.0, 17.0 ],
													"numinlets" : 0,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll buffpools 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 183.0, 167.0, 104.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 62.0, 323.5, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-1",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 96.0, 322.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 236.0, 323.5, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-10",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 350.0, 328.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-13",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 478.0, 323.5, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-19",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 2 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
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
													"midpoints" : [ 242.5, 128.0, 84.0, 128.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 713.0, 418.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-48",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"fontsize" : 9.0,
									"patching_rect" : [ 515.0, 218.0, 89.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-47",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 9.0,
									"patching_rect" : [ 539.0, 362.0, 72.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 9.0,
									"patching_rect" : [ 539.0, 340.0, 47.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-14",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontsize" : 9.0,
									"patching_rect" : [ 515.0, 178.0, 47.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-11",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 376.5, 336.0, 548.5, 336.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 4 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 3 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 760.5, 206.0, 616.0, 206.0, 616.0, 164.0, 552.5, 164.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 5 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 876.5, 245.0, 524.5, 245.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 719.5, 240.0, 524.5, 240.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [ 720.5, 323.0, 576.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 638.5, 384.0, 550.0, 384.0, 550.0, 383.0, 550.5, 383.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 5 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 876.5, 371.0, 637.0, 371.0, 637.0, 383.0, 550.5, 383.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-124", 0 ],
									"destination" : [ "obj-111", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-111", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.166664, 336.0, 548.5, 336.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 204.0, 737.0, 204.0, 737.0, 254.0, 760.5, 254.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-11", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.panelopen",
					"fontsize" : 12.0,
					"patching_rect" : [ 28.0, 367.0, 101.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-55",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 12.0,
					"patching_rect" : [ 28.0, 388.0, 59.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-87",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "input_inspector",
					"text" : "p gran_inspector",
					"fontsize" : 12.0,
					"patching_rect" : [ 27.0, 412.0, 121.0, 20.0 ],
					"numinlets" : 2,
					"id" : "obj-89",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 296.0, 183.0, 254.0, 115.0 ],
						"bglocked" : 0,
						"defrect" : [ 296.0, 183.0, 254.0, 115.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/buffername[3]",
									"text" : "jcom.parameter sound/bufferpool @type msg_list @priority 30",
									"fontsize" : 9.0,
									"hidden" : 1,
									"patching_rect" : [ 190.0, 40.0, 258.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "" ],
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ms",
									"presentation_rect" : [ 138.000031, 82.0, 25.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 68.0, 167.0, 38.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation" : 1,
									"id" : "obj-25",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"presentation_rect" : [ 160.000031, 82.0, 41.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 111.0, 166.0, 46.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-23",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"triangle" : 0,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay",
									"presentation_rect" : [ 96.0, 82.0, 37.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 24.0, 176.0, 38.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation" : 1,
									"id" : "obj-17",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter delay",
									"fontsize" : 10.0,
									"patching_rect" : [ 173.0, 166.0, 136.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"frozen_object_attributes" : 									{
										"dataspace" : "time",
										"ramp/drive" : "scheduler",
										"range/bounds" : [ 0.0, 10000.0 ],
										"ramp/function" : "linear",
										"type" : "msg_int",
										"name" : "delay",
										"range/clipmode" : "low"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "voices",
									"presentation_rect" : [ 115.0, 33.0, 42.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 39.0, 208.0, 42.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation" : 1,
									"id" : "obj-143",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"presentation_rect" : [ 163.0, 33.0, 41.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 84.0, 208.0, 46.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-139",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"triangle" : 0,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter voices",
									"fontsize" : 10.0,
									"patching_rect" : [ 137.0, 208.0, 136.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-140",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ParameterA[5]",
									"presentation_rect" : [ 66.0, 58.0, 42.0, 19.0 ],
									"fontsize" : 10.0,
									"triscale" : 0.9,
									"patching_rect" : [ 90.0, 320.0, 52.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-61",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jit",
									"presentation_rect" : [ 42.0, 58.0, 28.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 47.0, 320.0, 21.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation" : 1,
									"id" : "obj-65",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter amp/jit @type msg_float",
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 320.0, 230.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-66",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ParameterA[6]",
									"presentation_rect" : [ 65.0, 33.0, 42.0, 19.0 ],
									"fontsize" : 10.0,
									"triscale" : 0.9,
									"patching_rect" : [ 89.0, 300.0, 52.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-68",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "amp",
									"presentation_rect" : [ 34.0, 33.0, 39.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 46.0, 300.0, 32.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation" : 1,
									"id" : "obj-69",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter amp @type msg_float",
									"fontsize" : 10.0,
									"patching_rect" : [ 159.0, 300.0, 205.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-70",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ParameterA[3]",
									"presentation_rect" : [ 163.0, 58.0, 42.0, 19.0 ],
									"fontsize" : 10.0,
									"triscale" : 0.9,
									"patching_rect" : [ 90.0, 270.0, 52.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-50",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"triangle" : 0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch jit",
									"presentation_rect" : [ 116.0, 58.0, 49.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 47.0, 270.0, 49.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"presentation" : 1,
									"id" : "obj-51",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter detune/jit",
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 270.0, 144.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-53",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"frozen_object_attributes" : 									{
										"ramp/drive" : "scheduler",
										"ramp/function" : "linear",
										"type" : "msg_float",
										"name" : "pitch/jit",
										"range/clipmode" : "low"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"patching_rect" : [ 218.0, 14.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_tobpoolmenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 78.0, 18.0, 106.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-49",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frombpoolmenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 122.0, 62.0, 106.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-46",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "select a collection of buffers",
									"presentation_rect" : [ 62.0, 4.0, 186.0, 17.0 ],
									"items" : [  ],
									"fontsize" : 9.0,
									"types" : [  ],
									"patching_rect" : [ 80.0, 40.0, 100.0, 17.0 ],
									"arrowframe" : 0,
									"numinlets" : 1,
									"arrow" : 0,
									"presentation" : 1,
									"id" : "obj-15",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bufferpool :",
									"presentation_rect" : [ 4.0, 4.0, 58.0, 17.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 8.0, 40.0, 58.0, 17.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"presentation" : 1,
									"id" : "obj-2",
									"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"patching_rect" : [ 12.0, 123.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-140", 0 ],
									"destination" : [ "obj-139", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-139", 0 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p wfkeys",
					"fontsize" : 12.0,
					"patching_rect" : [ 518.0, 276.0, 63.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-58",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 40.0, 55.0, 238.0, 375.0 ],
						"bglocked" : 0,
						"defrect" : [ 40.0, 55.0, 238.0, 375.0 ],
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
									"maxclass" : "newobj",
									"text" : "int",
									"fontsize" : 9.0,
									"patching_rect" : [ 96.0, 202.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontsize" : 9.0,
									"patching_rect" : [ 131.0, 255.0, 53.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "" ],
									"coll_data" : 									{
										"count" : 3,
										"data" : [ 											{
												"key" : 1,
												"value" : [ "mode", "select" ]
											}
, 											{
												"key" : 0,
												"value" : [ "mode", "loop" ]
											}
, 											{
												"key" : 2,
												"value" : [ "mode", "move" ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 75.0, 117.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 74.0, 164.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : "waveform~ mode messages"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "<< 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 113.0, 88.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"fontsize" : 9.0,
									"patching_rect" : [ 96.0, 140.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 96.0, 164.0, 45.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "|",
									"fontsize" : 9.0,
									"patching_rect" : [ 96.0, 117.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-8",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 131.0, 284.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "modifiers 100",
									"fontsize" : 9.0,
									"patching_rect" : [ 45.0, 62.0, 78.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 5,
									"fontname" : "Arial",
									"outlettype" : [ "int", "int", "int", "int", "int" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-10", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 4 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation_rect" : [ 201.0, 41.0, 30.0, 15.0 ],
					"fontsize" : 9.0,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"texton" : "Rec",
					"patching_rect" : [ 494.0, 691.0, 42.0, 18.0 ],
					"numinlets" : 1,
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-141",
					"mode" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"text" : "Rec",
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"bgoveroncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[17]",
					"text" : "jcom.parameter record @type msg_int @description \"Start and stop to record.\"",
					"fontsize" : 9.0,
					"patching_rect" : [ 495.0, 713.0, 385.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-136",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Record",
					"fontsize" : 18.0,
					"patching_rect" : [ 537.0, 685.0, 95.0, 27.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.776471, 0.090196, 0.0, 1.0 ],
					"id" : "obj-137",
					"textcolor" : [ 0.776471, 0.090196, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"fontsize" : 9.0,
					"patching_rect" : [ 597.0, 630.0, 113.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-72",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p fillmenu",
					"fontsize" : 9.0,
					"patching_rect" : [ 489.0, 626.0, 106.0, 17.0 ],
					"numinlets" : 0,
					"id" : "obj-82",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "clear" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 29.0, 67.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 29.0, 67.0, 640.0, 480.0 ],
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
									"maxclass" : "newobj",
									"text" : "route symbol",
									"fontsize" : 9.0,
									"patching_rect" : [ 310.0, 308.0, 79.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dumpaudioinputlist",
									"fontsize" : 9.0,
									"patching_rect" : [ 238.0, 204.0, 103.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-2",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 276.0, 356.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontsize" : 9.0,
									"patching_rect" : [ 306.0, 332.0, 79.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-33",
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump clear",
									"fontsize" : 9.0,
									"patching_rect" : [ 238.0, 226.0, 66.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "dump", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll audioinputmapping 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 312.0, 286.0, 124.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"numoutlets" : 4,
									"fontname" : "Arial",
									"outlettype" : [ "", "", "", "" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 247.5, 254.0, 265.0, 254.0, 265.0, 254.0, 321.5, 254.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "select a sub-folder of buffers",
					"presentation_rect" : [ 231.0, 40.0, 68.0, 17.0 ],
					"items" : "ue",
					"fontsize" : 9.0,
					"types" : [  ],
					"patching_rect" : [ 489.0, 650.0, 100.0, 17.0 ],
					"arrowframe" : 0,
					"numinlets" : 1,
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-83",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[16]",
					"text" : "jcom.parameter input @type msg_list @description \"Select the input to record.\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 595.0, 650.0, 232.0, 27.0 ],
					"numinlets" : 1,
					"id" : "obj-108",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p randommenu",
					"fontsize" : 12.0,
					"patching_rect" : [ 499.0, 194.0, 100.0, 20.0 ],
					"numinlets" : 2,
					"id" : "obj-34",
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 663.0, 214.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 663.0, 214.0, 640.0, 480.0 ],
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
									"maxclass" : "newobj",
									"text" : "t 1 i",
									"fontsize" : 9.0,
									"patching_rect" : [ 144.0, 304.0, 61.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 144.0, 350.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_loc",
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 122.0, 60.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-32",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_loc",
									"fontsize" : 9.0,
									"patching_rect" : [ 210.0, 282.0, 60.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-31",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 140.0, 52.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-30",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"fontsize" : 9.0,
									"patching_rect" : [ 110.0, 160.0, 41.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"fontsize" : 9.0,
									"patching_rect" : [ 142.0, 260.0, 41.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-23",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"fontsize" : 9.0,
									"patching_rect" : [ 144.0, 282.0, 61.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-22",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "==",
									"fontsize" : 9.0,
									"patching_rect" : [ 142.0, 238.0, 42.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-14",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i i",
									"fontsize" : 9.0,
									"patching_rect" : [ 144.0, 214.0, 61.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tobuffermenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 188.0, 328.0, 98.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b count",
									"fontsize" : 9.0,
									"patching_rect" : [ 144.0, 100.0, 53.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-26",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "count" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tobuffermenu",
									"fontsize" : 9.0,
									"patching_rect" : [ 178.0, 120.0, 98.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.random 0 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 144.0, 192.0, 94.0, 17.0 ],
									"numinlets" : 3,
									"id" : "obj-19",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route count",
									"fontsize" : 9.0,
									"patching_rect" : [ 218.0, 170.0, 147.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 149.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-18",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 223.0, 40.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-33",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-19", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 119.5, 187.0, 153.5, 187.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_tobuffermenu",
					"fontsize" : 9.0,
					"patching_rect" : [ 387.0, 83.0, 113.0, 17.0 ],
					"numinlets" : 0,
					"id" : "obj-27",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_frombuffermenu",
					"fontsize" : 9.0,
					"patching_rect" : [ 479.0, 127.0, 113.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername[2]",
					"text" : "jcom.parameter sound/buffer @type msg_list @priority 32",
					"fontsize" : 9.0,
					"patching_rect" : [ 599.0, 105.0, 286.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-36",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "select a buffer",
					"presentation_rect" : [ 145.0, 22.0, 155.0, 17.0 ],
					"items" : [  ],
					"fontsize" : 9.0,
					"types" : [  ],
					"patching_rect" : [ 387.0, 105.0, 203.0, 17.0 ],
					"arrowframe" : 0,
					"numinlets" : 1,
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-38",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_tofoldermenu",
					"fontsize" : 9.0,
					"patching_rect" : [ 393.0, 17.0, 106.0, 17.0 ],
					"numinlets" : 0,
					"id" : "obj-39",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_fromfoldermenu",
					"fontsize" : 9.0,
					"patching_rect" : [ 435.0, 63.0, 113.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-62",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername[1]",
					"text" : "jcom.parameter sound/folder @type msg_list @priority 31",
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 43.0, 293.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-67",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "select a sub-folder of buffers",
					"presentation_rect" : [ 32.0, 22.0, 84.0, 17.0 ],
					"items" : [  ],
					"fontsize" : 9.0,
					"types" : [  ],
					"patching_rect" : [ 393.0, 43.0, 100.0, 17.0 ],
					"arrowframe" : 0,
					"numinlets" : 1,
					"arrow" : 0,
					"presentation" : 1,
					"id" : "obj-71",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"varname" : "wf",
					"presentation_rect" : [ 3.0, 80.0, 294.0, 77.0 ],
					"labelbgcolor" : [ 0.419608, 0.098039, 0.164706, 1.0 ],
					"clipdraw" : 1,
					"tickmarkcolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
					"patching_rect" : [ 519.0, 308.0, 156.0, 25.0 ],
					"vlabels" : 1,
					"numinlets" : 5,
					"presentation" : 1,
					"id" : "obj-127",
					"grid" : 500.0,
					"textcolor" : [  ],
					"setmode" : 2,
					"numoutlets" : 6,
					"bgcolor" : [ 0.384314, 0.462745, 0.65098, 1.0 ],
					"waveformcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"labeltextcolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"bordercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"buffername" : "P-seq_orge_gloc01.aif",
					"selectioncolor" : [ 0.019608, 0.0, 0.690196, 0.5 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[5]",
					"text" : "jcom.parameter continuous @type msg_int @repetitions/allow 1 @description \"One shot/ continuous play mode.\" @priority 28",
					"linecount" : 3,
					"fontsize" : 9.0,
					"patching_rect" : [ 135.0, 618.0, 252.0, 38.0 ],
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "name gran",
					"fontsize" : 10.0,
					"patching_rect" : [ 295.0, 248.0, 65.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-10",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"presentation_rect" : [ 203.0, 335.0, 45.0, 45.0 ],
					"patching_rect" : [ 159.0, 461.0, 45.0, 45.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"id" : "obj-81",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter length/jit @type msg_int",
					"linecount" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 554.0, 557.0, 146.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-77",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter length @type msg_int",
					"fontsize" : 10.0,
					"patching_rect" : [ 574.0, 390.0, 255.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-79",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA[4]",
					"presentation_rect" : [ 91.0, 40.0, 32.0, 19.0 ],
					"fontsize" : 10.0,
					"triscale" : 0.9,
					"patching_rect" : [ 89.0, 586.0, 52.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-56",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter detune",
					"fontsize" : 10.0,
					"patching_rect" : [ 159.0, 586.0, 136.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-59",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"frozen_object_attributes" : 					{
						"ramp/drive" : "scheduler",
						"range/bounds" : [ 0.0, 1.0 ],
						"ramp/function" : "linear",
						"type" : "msg_float",
						"name" : "pitch",
						"range/clipmode" : "none",
						"repetitions/allow" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter begin/jit",
					"fontsize" : 10.0,
					"patching_rect" : [ 394.0, 454.0, 136.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-49",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"frozen_object_attributes" : 					{
						"ramp/drive" : "scheduler",
						"range/bounds" : [ 0.0, 1.0 ],
						"ramp/function" : "linear",
						"type" : "msg_float",
						"range/clipmode" : "low",
						"repetitions/allow" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter begin",
					"fontsize" : 10.0,
					"patching_rect" : [ 687.0, 311.0, 167.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-43",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"frozen_object_attributes" : 					{
						"ramp/drive" : "scheduler",
						"range/bounds" : [ 0.0, 1.0 ],
						"ramp/function" : "linear",
						"type" : "msg_float",
						"range/clipmode" : "low",
						"repetitions/allow" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter delay/jit",
					"fontsize" : 10.0,
					"patching_rect" : [ 571.0, 523.0, 136.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"frozen_object_attributes" : 					{
						"dataspace" : "time",
						"ramp/drive" : "scheduler",
						"range/bounds" : [ 0.0, 1.0 ],
						"ramp/function" : "linear",
						"type" : "msg_int",
						"name" : "delay/jit",
						"range/clipmode" : "low"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "trig",
					"presentation_rect" : [ 322.000031, 109.0, 28.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 556.0, 38.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message play",
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 558.0, 133.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/trig/freq 11 ramp 1000",
					"fontsize" : 10.0,
					"patching_rect" : [ 227.0, 193.0, 137.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-2",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p params",
					"fontsize" : 10.0,
					"patching_rect" : [ 278.0, 332.0, 100.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-64",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 601.0, 626.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 601.0, 626.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for jcom.return only",
									"fontsize" : 10.0,
									"patching_rect" : [ 55.0, 440.0, 113.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-38",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@enable",
									"fontsize" : 10.0,
									"patching_rect" : [ 68.0, 459.0, 77.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-42",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1/0 : enables the send of data (on by default)",
									"fontsize" : 10.0,
									"patching_rect" : [ 175.0, 460.0, 302.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-40",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/scheduler",
									"fontsize" : 10.0,
									"patching_rect" : [ 77.0, 345.0, 105.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-20",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "scheduler/queue...",
									"fontsize" : 10.0,
									"patching_rect" : [ 184.0, 344.0, 105.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-21",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@description",
									"fontsize" : 10.0,
									"patching_rect" : [ 77.0, 410.0, 75.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@repetitions/allow",
									"fontsize" : 10.0,
									"patching_rect" : [ 77.0, 365.0, 105.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-11",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/function",
									"fontsize" : 10.0,
									"patching_rect" : [ 77.0, 325.0, 92.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-12",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/clipmode",
									"fontsize" : 10.0,
									"patching_rect" : [ 77.0, 395.0, 101.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-48",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/bounds",
									"fontsize" : 10.0,
									"patching_rect" : [ 77.0, 380.0, 91.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-49",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@type",
									"fontsize" : 10.0,
									"patching_rect" : [ 77.0, 307.0, 44.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-50",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
									"linecount" : 3,
									"fontsize" : 10.0,
									"patching_rect" : [ 75.0, 237.0, 370.0, 43.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-13",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.return:",
									"fontsize" : 10.0,
									"patching_rect" : [ 53.0, 217.0, 380.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-14",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
									"linecount" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 70.0, 183.0, 342.0, 31.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-15",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.message:",
									"fontsize" : 10.0,
									"patching_rect" : [ 51.0, 167.0, 366.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-16",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
									"linecount" : 2,
									"fontsize" : 10.0,
									"patching_rect" : [ 70.0, 119.0, 363.0, 31.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-22",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.parameter:",
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 100.0, 293.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-23",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for html autodoc of module",
									"fontsize" : 10.0,
									"patching_rect" : [ 184.0, 411.0, 149.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-24",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
									"fontsize" : 10.0,
									"patching_rect" : [ 184.0, 366.0, 282.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-25",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none/linear/cosine/power/tanh/lowpass...",
									"fontsize" : 10.0,
									"patching_rect" : [ 185.0, 325.0, 221.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-26",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none, low, high, both (default)",
									"fontsize" : 10.0,
									"patching_rect" : [ 184.0, 396.0, 166.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-27",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "minimum and maximum values for this parameter/message",
									"fontsize" : 10.0,
									"patching_rect" : [ 184.0, 381.0, 314.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-28",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "generic (default), msg_int, msg_float, menu, toggle",
									"fontsize" : 10.0,
									"patching_rect" : [ 184.0, 308.0, 273.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-36",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attributes for jcom.parameter and jcom.message:",
									"fontsize" : 10.0,
									"patching_rect" : [ 54.0, 292.0, 295.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-51",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontsize" : 9.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p buffers",
					"fontsize" : 10.0,
					"patching_rect" : [ 616.0, 252.0, 55.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-63",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -474.0, 348.0, 472.0, 365.0 ],
						"bglocked" : 0,
						"defrect" : [ -474.0, 348.0, 472.0, 365.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
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
									"maxclass" : "message",
									"text" : "6575env",
									"fontsize" : 10.0,
									"patching_rect" : [ 335.0, 265.0, 54.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-134",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "setenv 0 6575env",
									"fontsize" : 9.0,
									"patching_rect" : [ 270.0, 300.0, 143.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-14",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 300.0, 80.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend replace",
									"fontsize" : 9.0,
									"patching_rect" : [ 300.0, 120.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "setenv 0 #0_bufgranul.env1",
									"fontsize" : 9.0,
									"patching_rect" : [ 84.0, 302.0, 143.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-3",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_to.bufgranul",
									"fontsize" : 9.0,
									"patching_rect" : [ 90.0, 329.0, 115.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pipe 50",
									"fontsize" : 9.0,
									"hidden" : 1,
									"patching_rect" : [ 88.0, 220.0, 42.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-5",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 9.0,
									"hidden" : 1,
									"patching_rect" : [ 81.0, 197.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 0 #0_bufgranul.snd1",
									"fontsize" : 9.0,
									"patching_rect" : [ 120.0, 270.0, 143.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ #0_bufgranul.env1 gmu.env.trapez20.aif",
									"fontsize" : 9.0,
									"patching_rect" : [ 54.0, 158.0, 253.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "trapeze",
									"fontsize" : 9.0,
									"patching_rect" : [ 54.0, 143.0, 64.0, 17.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-8",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Load a sound file",
									"fontsize" : 9.0,
									"patching_rect" : [ 101.0, 70.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace",
									"fontsize" : 9.0,
									"patching_rect" : [ 52.0, 68.0, 43.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-11",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ #0_bufgranul.snd1 vibes-a1.aif",
									"fontsize" : 9.0,
									"patching_rect" : [ 52.0, 89.0, 191.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Envelope buffer",
									"fontsize" : 12.0,
									"patching_rect" : [ 54.0, 118.0, 111.0, 21.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-85",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sound Buffer",
									"fontsize" : 12.0,
									"patching_rect" : [ 52.0, 45.0, 100.0, 21.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-100",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 309.5, 186.0, 51.0, 186.0, 51.0, 153.0, 63.5, 153.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontsize" : 9.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"fontsize" : 10.0,
					"patching_rect" : [ 166.0, 334.0, 61.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-60",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.bufgranul",
					"fontsize" : 10.0,
					"patching_rect" : [ 164.0, 365.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-57",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -1226.0, 377.0, 1144.0, 308.0 ],
						"bglocked" : 0,
						"defrect" : [ -1226.0, 377.0, 1144.0, 308.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
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
									"text" : "jcom.oscroute /voices /density /continuous",
									"fontsize" : 9.0,
									"patching_rect" : [ 195.0, 50.0, 206.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-24",
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend nvoices",
									"fontsize" : 9.0,
									"patching_rect" : [ 195.0, 95.0, 84.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-22",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 367.0, 139.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 652.0, 259.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "poll 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 139.0, 36.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grain 28 2471. -1.7 0.499 415. 1. 1. 1. 0.",
									"fontsize" : 9.0,
									"patching_rect" : [ 501.0, 210.0, 579.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-21",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 9.0,
									"patching_rect" : [ 1066.0, 137.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 9.0,
									"patching_rect" : [ 982.0, 136.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p length",
									"fontsize" : 9.0,
									"patching_rect" : [ 743.0, 128.0, 51.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-46",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ -821.0, -2.0, 306.0, 336.0 ],
										"bglocked" : 0,
										"defrect" : [ -821.0, -2.0, 306.0, 336.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "random between length-jit and length+jit",
													"fontsize" : 9.0,
													"patching_rect" : [ 60.0, 289.0, 213.0, 17.0 ],
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-10",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend uniform",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 183.0, 92.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 161.0, 63.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-15",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 136.0, 38.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-13",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 204.0, 30.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 181.0, 87.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $f1 == 0. then 1 else 2",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 23.0, 136.0, 71.0, 28.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "randdist uniform 0. 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 90.0, 211.0, 121.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 263.0, 224.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-3",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit",
													"fontsize" : 9.0,
													"patching_rect" : [ 90.0, 72.0, 154.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 22.0, 287.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 117.0, 99.5, 117.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-4", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 99.5, 106.0, 124.5, 106.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [ 99.5, 99.0, 168.5, 99.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p amp",
									"fontsize" : 9.0,
									"patching_rect" : [ 664.0, 130.0, 51.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-45",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 521.0, 225.0, 306.0, 336.0 ],
										"bglocked" : 0,
										"defrect" : [ 521.0, 225.0, 306.0, 336.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "random between amp-/jit and amp",
													"fontsize" : 9.0,
													"patching_rect" : [ 60.0, 289.0, 175.0, 17.0 ],
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-10",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend uniform",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 183.0, 92.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 161.0, 63.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-15",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 136.0, 38.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-13",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 204.0, 30.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 181.0, 87.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $f1 == 0. then 1 else 2",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 23.0, 136.0, 71.0, 28.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "randdist uniform 0. 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 90.0, 211.0, 121.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 263.0, 224.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-3",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit",
													"fontsize" : 9.0,
													"patching_rect" : [ 90.0, 72.0, 154.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 22.0, 287.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-15", 0 ],
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
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-3", 1 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-4", 0 ],
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
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 117.0, 99.5, 117.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p detune",
									"fontsize" : 9.0,
									"patching_rect" : [ 584.0, 130.0, 51.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-40",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 61.0, 381.0, 306.0, 336.0 ],
										"bglocked" : 0,
										"defrect" : [ 61.0, 381.0, 306.0, 336.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
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
													"text" : "prepend uniform",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 183.0, 92.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 161.0, 63.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-15",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 115.0, 136.0, 38.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-13",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 204.0, 30.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 181.0, 87.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $f1 == 0. then 1 else 2",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 23.0, 136.0, 71.0, 28.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "randdist uniform 0. 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 90.0, 211.0, 121.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 263.0, 224.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-3",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit",
													"fontsize" : 9.0,
													"patching_rect" : [ 90.0, 72.0, 154.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 22.0, 287.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-4", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 117.0, 99.5, 117.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-4", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-3", 1 ],
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
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [ 99.5, 97.0, 168.5, 97.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p begin",
									"fontsize" : 9.0,
									"patching_rect" : [ 505.0, 131.0, 51.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-39",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ -600.0, 250.0, 492.0, 383.0 ],
										"bglocked" : 0,
										"defrect" : [ -600.0, 250.0, 492.0, 383.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
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
													"text" : "* -1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 110.0, 205.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-11",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 2.",
													"fontsize" : 9.0,
													"patching_rect" : [ 135.0, 180.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-9",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "scaled 0. 1. --> sample length",
													"fontsize" : 9.0,
													"patching_rect" : [ 180.0, 290.0, 150.0, 17.0 ],
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-10",
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 204.0, 30.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 22.0, 181.0, 87.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1 == 0 then 1 else 2",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 23.0, 136.0, 71.0, 28.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.random 0",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 90.0, 235.0, 75.0, 28.0 ],
													"numinlets" : 3,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 30.0, 285.0, 173.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-3",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit",
													"fontsize" : 9.0,
													"patching_rect" : [ 90.0, 72.0, 105.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 30.0, 309.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 117.0, 99.5, 117.0 ]
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-4", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-4", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p delay",
									"fontsize" : 9.0,
									"patching_rect" : [ 425.0, 131.0, 51.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-38",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ -459.0, 255.0, 224.0, 318.0 ],
										"bglocked" : 0,
										"defrect" : [ -459.0, 255.0, 224.0, 318.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 30.0, 227.0, 30.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 30.0, 165.0, 87.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1 == 0 then 1 else 2",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 30.0, 135.0, 71.0, 28.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-5",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "random 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 98.0, 224.0, 66.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 30.0, 255.0, 173.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-3",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit",
													"fontsize" : 9.0,
													"patching_rect" : [ 90.0, 72.0, 105.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 30.0, 279.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p trig",
									"fontsize" : 9.0,
									"patching_rect" : [ 285.0, 95.0, 144.0, 17.0 ],
									"numinlets" : 4,
									"id" : "obj-35",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ -1304.0, -70.0, 217.0, 573.0 ],
										"bglocked" : 0,
										"defrect" : [ -1304.0, -70.0, 217.0, 573.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
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
													"text" : "t 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 40.0, 177.0, 30.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 40.0, 120.0, 87.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-7",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1 == 0 then 1 else 2",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 40.0, 90.0, 71.0, 28.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 40.0, 205.0, 106.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-17",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 150.0, 205.0, 19.0, 19.0 ],
													"numinlets" : 0,
													"id" : "obj-13",
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 90.0, 495.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-11",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"fontsize" : 10.0,
													"patching_rect" : [ 110.0, 230.0, 31.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-107",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1000.",
													"fontsize" : 10.0,
													"patching_rect" : [ 40.0, 235.0, 49.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-10",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1.",
													"fontsize" : 10.0,
													"patching_rect" : [ 40.0, 260.0, 101.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-102",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"fontsize" : 9.0,
													"patching_rect" : [ 95.0, 305.0, 37.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 35.0, 330.0, 100.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-5",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.random",
													"fontsize" : 9.0,
													"patching_rect" : [ 55.0, 150.0, 70.0, 17.0 ],
													"numinlets" : 3,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 55.0, 430.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-2",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 55.0, 475.0, 100.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-1",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 40.0, 28.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-15",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit",
													"fontsize" : 9.0,
													"patching_rect" : [ 40.0, 65.0, 106.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-14",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 140.0, 430.0, 20.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-104",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">~ 0.",
													"fontsize" : 11.595187,
													"patching_rect" : [ 38.0, 380.0, 50.0, 20.0 ],
													"numinlets" : 2,
													"id" : "obj-105",
													"numoutlets" : 1,
													"fontname" : "Arial",
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "edge~",
													"fontsize" : 11.595187,
													"patching_rect" : [ 37.0, 404.0, 57.0, 20.0 ],
													"numinlets" : 1,
													"id" : "obj-106",
													"numoutlets" : 2,
													"fontname" : "Arial",
													"outlettype" : [ "bang", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 55.0, 530.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-12",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 10.0,
													"triscale" : 0.9,
													"patching_rect" : [ 50.0, 295.0, 50.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-61",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cycle~",
													"fontsize" : 9.0,
													"patching_rect" : [ 37.0, 359.0, 39.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-63",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-104", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-105", 0 ],
													"destination" : [ "obj-106", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-106", 0 ],
													"destination" : [ "obj-104", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-105", 0 ],
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
													"source" : [ "obj-61", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-107", 0 ],
													"destination" : [ "obj-102", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-107", 1 ],
													"destination" : [ "obj-102", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-107", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-16", 0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-4", 2 ],
													"hidden" : 0,
													"midpoints" : [ 49.5, 84.0, 130.0, 84.0, 130.0, 147.0, 115.5, 147.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-104", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-102", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-102", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_to.bufgranul",
									"fontsize" : 9.0,
									"patching_rect" : [ 361.0, 202.0, 115.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-12",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_from.bufgranul",
									"fontsize" : 9.0,
									"patching_rect" : [ 674.0, 259.0, 115.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p set_buffer",
									"fontsize" : 9.0,
									"patching_rect" : [ 1102.0, 109.0, 100.0, 17.0 ],
									"numinlets" : 0,
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 788.0, 378.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 788.0, 378.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "number",
													"fontsize" : 9.0,
													"patching_rect" : [ 315.0, 345.0, 50.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route voices buffer active_env envbuffer",
													"fontsize" : 9.0,
													"patching_rect" : [ 300.0, 315.0, 195.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"numoutlets" : 5,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_from.bufgranul",
													"fontsize" : 9.0,
													"patching_rect" : [ 198.0, 293.0, 115.0, 17.0 ],
													"numinlets" : 0,
													"id" : "obj-4",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route buffer",
													"fontsize" : 9.0,
													"patching_rect" : [ 198.0, 313.0, 84.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-69",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontsize" : 9.0,
													"patching_rect" : [ 167.0, 178.0, 100.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-3",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 0 help.snd2",
													"fontsize" : 9.0,
													"patching_rect" : [ 192.0, 150.0, 108.0, 15.0 ],
													"numinlets" : 2,
													"id" : "obj-44",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 0 help.snd1",
													"fontsize" : 9.0,
													"patching_rect" : [ 180.0, 127.0, 108.0, 15.0 ],
													"numinlets" : 2,
													"id" : "obj-45",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_to.bufgranul",
													"fontsize" : 9.0,
													"patching_rect" : [ 166.0, 227.0, 115.0, 17.0 ],
													"numinlets" : 1,
													"id" : "obj-43",
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "poll 1, info -1, poll 0",
													"fontsize" : 9.0,
													"patching_rect" : [ 167.0, 201.0, 117.0, 15.0 ],
													"numinlets" : 2,
													"id" : "obj-42",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-42", 0 ],
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
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-69", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /play /delay /begin /pitch /amp /length /pan /dist /buffer /envbuffer",
									"fontsize" : 9.0,
									"patching_rect" : [ 380.0, 70.0, 774.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 11,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envbuffer",
									"fontsize" : 10.0,
									"patching_rect" : [ 1062.0, 160.0, 58.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-44",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "buffer",
									"fontsize" : 10.0,
									"patching_rect" : [ 975.0, 159.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-43",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "dist",
									"fontsize" : 10.0,
									"patching_rect" : [ 894.0, 157.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-37",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pan",
									"fontsize" : 10.0,
									"patching_rect" : [ 806.0, 157.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-4",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "length",
									"fontsize" : 10.0,
									"patching_rect" : [ 722.0, 157.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-15",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "amp",
									"fontsize" : 10.0,
									"patching_rect" : [ 647.0, 157.0, 37.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-13",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch",
									"fontsize" : 10.0,
									"patching_rect" : [ 569.0, 157.0, 37.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-14",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "begin",
									"fontsize" : 10.0,
									"patching_rect" : [ 496.0, 157.0, 37.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay",
									"fontsize" : 10.0,
									"patching_rect" : [ 418.0, 157.0, 37.0, 19.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-6",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack grain 0 0. 1. 1. 20000. 1. 1. 1. 0.",
									"fontsize" : 9.0,
									"patching_rect" : [ 346.0, 180.0, 734.0, 17.0 ],
									"numinlets" : 10,
									"id" : "obj-7",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grain <delay(sample)> <begin> <detune> <amp> <length> <pan> <dist> <buffer> <envbuffer>",
									"fontsize" : 9.0,
									"patching_rect" : [ 581.0, 94.0, 464.0, 17.0 ],
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-8",
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tellme",
									"fontsize" : 9.0,
									"patching_rect" : [ 266.0, 184.0, 36.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-41",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "panic",
									"fontsize" : 9.0,
									"patching_rect" : [ 308.0, 184.0, 32.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-42",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bufGranul~ #0_bufgranul.snd1 #0_bufgranul.env1 1",
									"fontsize" : 9.0,
									"patching_rect" : [ 346.0, 236.0, 347.0, 17.0 ],
									"numinlets" : 8,
									"id" : "obj-81",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 346.0, 259.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 105.0, 20.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-7", 8 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-7", 9 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-7", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-7", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 7 ],
									"destination" : [ "obj-7", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 6 ],
									"destination" : [ "obj-7", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-35", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 3 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 4 ],
									"destination" : [ "obj-45", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 5 ],
									"destination" : [ "obj-46", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 8 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 9 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 223.0, 355.5, 223.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 275.5, 216.0, 355.5, 216.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 317.5, 224.0, 355.5, 224.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-35", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontsize" : 9.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"fontsize" : 10.0,
					"patching_rect" : [ 217.0, 459.0, 121.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-52",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 152.0, 7.0, 91.0, 7.0 ],
					"patching_rect" : [ 217.0, 484.0, 80.0, 4.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-54",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 223.0, 247.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-6",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 1",
					"fontsize" : 10.0,
					"patching_rect" : [ 164.0, 390.0, 80.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 243.0, 140.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"bufgranul~ mono\"",
					"fontsize" : 10.0,
					"patching_rect" : [ 5.0, 278.0, 354.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 193.0, 99.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-31",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 5.0, 193.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"id" : "obj-32",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 10.0,
					"patching_rect" : [ 275.0, 223.0, 41.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-33",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 164.0, 421.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 5.0, 323.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"id" : "obj-45",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"fontsize" : 10.0,
					"patching_rect" : [ 224.0, 425.0, 106.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-47",
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pitch",
					"presentation_rect" : [ 62.0, 41.0, 62.0, 17.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 49.0, 588.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-84",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.396078 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 175.0 ],
					"has_panel" : 1,
					"prefix" : "audio",
					"patching_rect" : [ 0.0, 0.0, 300.0, 175.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-37",
					"has_meters" : 1,
					"numoutlets" : 1,
					"has_gain" : 1,
					"outlettype" : [ "" ],
					"has_mute" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 477.0, 617.0, 412.0, 129.0 ],
					"numinlets" : 1,
					"id" : "obj-122",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-136", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 732.0, 478.0, 732.0, 478.0, 687.0, 503.5, 687.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 360.0, 283.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 360.0, 37.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-81", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 264.0, 14.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 264.0, 14.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 264.0, 14.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 360.0, 173.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 2 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 1 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 1 ],
					"destination" : [ "obj-98", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [ 717.5, 510.0, 725.5, 510.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 701.5, 420.0, 717.5, 420.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-127", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 1 ],
					"destination" : [ "obj-113", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-127", 3 ],
					"hidden" : 0,
					"midpoints" : [ 844.5, 510.0, 922.0, 510.0, 922.0, 294.0, 631.25, 294.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 3 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 2 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 2 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [ 717.5, 510.0, 711.0, 510.0, 711.0, 558.0, 714.5, 558.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 647.0, 126.0, 647.0, 126.0, 620.0, 91.5, 620.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 91.5, 644.0, 132.0, 644.0, 132.0, 614.0, 144.5, 614.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 1 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [ 770.5, 375.0, 865.5, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 701.5, 421.0, 844.5, 421.0 ]
				}

			}
 ]
	}

}
