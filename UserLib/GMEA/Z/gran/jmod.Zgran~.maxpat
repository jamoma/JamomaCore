{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 73.0, 44.0, 1044.0, 802.0 ],
		"bglocked" : 0,
		"defrect" : [ 73.0, 44.0, 1044.0, 802.0 ],
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
					"maxclass" : "flonum",
					"id" : "obj-14",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 775.0, 440.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-8",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 625.0, 605.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return buffersize @type msg_float",
					"id" : "obj-5",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 320.0, 390.0, 211.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p size",
					"id" : "obj-1",
					"outlettype" : [ "", "", "", "float" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 3,
					"numoutlets" : 4,
					"patching_rect" : [ 520.0, 340.0, 44.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 7.0, 44.0, 425.0, 224.0 ],
						"bglocked" : 0,
						"defrect" : [ 7.0, 44.0, 425.0, 224.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 240.0, 185.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak range/bounds 5. 5.",
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 240.0, 160.0, 119.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 365.0, 145.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0 f",
									"id" : "obj-12",
									"outlettype" : [ "int", "float" ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 15.0, 60.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-10",
									"outlettype" : [ "float" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 15.0, 30.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-22",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 205.0, 160.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 165.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak range/bounds 0. 0.",
									"id" : "obj-20",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 205.0, 135.0, 119.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b f",
									"id" : "obj-17",
									"outlettype" : [ "bang", "float" ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 65.0, 90.0, 32.5, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 0.",
									"id" : "obj-16",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 165.0, 110.0, 28.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-11",
									"outlettype" : [ "float" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 175.0, 35.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack range/bounds 0. 0.",
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 65.0, 135.0, 119.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"outlettype" : [ "float" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 65.0, 35.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-20", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-17", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-20", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-3", 2 ],
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
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername[3]",
					"text" : "jcom.parameter sound/enveloppe @type msg_symbol @priority 31",
					"linecount" : 2,
					"id" : "obj-128",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 385.0, 222.0, 154.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle[1]",
					"text" : "jcom.message sound/random @repetitions/allow 1 @description \"message to trigger menu change\"",
					"linecount" : 2,
					"id" : "obj-22",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 357.0, 159.0, 304.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "length random",
					"presentation" : 1,
					"id" : "obj-117",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"frgb" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"fontsize" : 9.0,
					"presentation_rect" : [ 133.0, 60.0, 83.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 745.0, 563.0, 77.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.textslider",
					"presentation" : 1,
					"range" : [ 0.0, 158.0 ],
					"id" : "obj-118",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"bgcolor" : [ 0.090196, 0.090196, 0.090196, 0.698039 ],
					"presentation_rect" : [ 124.0, 65.0, 98.0, 9.0 ],
					"text" : "length_randomness",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 705.0, 562.0, 153.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "random delay",
					"presentation" : 1,
					"id" : "obj-116",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"frgb" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"fontsize" : 9.0,
					"presentation_rect" : [ 12.0, 60.0, 105.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 724.0, 526.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "position randomness",
					"presentation" : 1,
					"id" : "obj-110",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"frgb" : [ 1.0, 0.027451, 0.027451, 1.0 ],
					"fontsize" : 9.0,
					"presentation_rect" : [ 96.0, 156.0, 104.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 561.0, 458.0, 104.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-115",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 835.0, 480.0, 70.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b f",
					"id" : "obj-104",
					"outlettype" : [ "bang", "float" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 856.0, 428.0, 32.5, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.",
					"id" : "obj-113",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 835.0, 455.0, 52.5, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend range 0.",
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 708.0, 457.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.textslider",
					"presentation" : 1,
					"range" : [ 0.0, 158.0 ],
					"id" : "obj-103",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"bgcolor" : [ 0.090196, 0.090196, 0.090196, 0.698039 ],
					"presentation_rect" : [ 4.0, 65.0, 117.0, 9.0 ],
					"text" : "random_delay",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 716.0, 524.0, 153.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend range 0.",
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 545.0, 427.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.textslider",
					"presentation" : 1,
					"range" : [ 0.0, 10491.5625 ],
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.698039 ],
					"presentation_rect" : [ 4.0, 160.0, 293.0, 11.0 ],
					"text" : "position_randomness",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 548.0, 457.0, 149.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dispstart[1]",
					"text" : "jcom.parameter density @type msg_float @range/bounds 0. 512. @range/clipmode both @ramp/function linear @repetitions/allow 0 @description \"desired grain density\" @priority 24",
					"linecount" : 3,
					"id" : "obj-142",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 145.0, 663.0, 279.0, 38.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation" : 1,
					"id" : "obj-85",
					"outlettype" : [ "", "", "int" ],
					"texton" : "Play",
					"fontname" : "Arial",
					"rounded" : 5.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 0.121569, 0.709804, 0.207843, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.0,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 3.0, 41.0, 25.0, 15.0 ],
					"text" : "play",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 89.0, 556.0, 42.0, 18.0 ],
					"bgoveroncolor" : [ 0.121569, 0.709804, 0.207843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation" : 1,
					"id" : "obj-138",
					"outlettype" : [ "", "", "int" ],
					"texton" : "cont",
					"fontname" : "Arial",
					"rounded" : 5.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 0.0, 0.0, 1.0, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 29.0, 41.0, 32.0, 15.0 ],
					"text" : "1shot",
					"numinlets" : 1,
					"bgovercolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 82.0, 624.0, 42.0, 18.0 ],
					"bgoveroncolor" : [ 0.0, 0.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "density :",
					"presentation" : 1,
					"id" : "obj-134",
					"fontname" : "Arial",
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"fontsize" : 9.0,
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.0 ],
					"presentation_rect" : [ 124.0, 42.0, 43.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 664.0, 44.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "buffer :",
					"presentation" : 1,
					"id" : "obj-123",
					"fontname" : "Arial",
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"fontsize" : 9.0,
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.0 ],
					"presentation_rect" : [ 114.0, 23.0, 39.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 103.0, 40.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "folder :",
					"presentation" : 1,
					"id" : "obj-132",
					"fontname" : "Arial",
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"fontsize" : 9.0,
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.0 ],
					"presentation_rect" : [ 3.0, 22.0, 39.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 205.0, 40.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b f",
					"id" : "obj-99",
					"outlettype" : [ "bang", "float" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 601.0, 337.0, 32.5, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!- 0.",
					"id" : "obj-98",
					"outlettype" : [ "float" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 574.0, 365.0, 59.5, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"presentation" : 1,
					"id" : "obj-88",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"arrow" : 0,
					"autopopulate" : 1,
					"fontsize" : 9.0,
					"presentation_rect" : [ 223.0, 60.0, 75.0, 17.0 ],
					"items" : [ "blackman.aif", ",", "expdec.aif", ",", "expmod.aif", ",", "gauss.aif", ",", "hanning.aif", ",", "trapez10.aif", ",", "trapez20.aif", ",", "trapez30.aif", ",", "tri.aif" ],
					"numinlets" : 1,
					"prefix_mode" : 2,
					"numoutlets" : 3,
					"prefix" : "Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/UserLib/GMEA/Z/jmod.Zgran.enveloppes/",
					"types" : [  ],
					"patching_rect" : [ 548.0, 228.0, 155.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"presentation" : 1,
					"id" : "obj-109",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"presentation_rect" : [ 162.0, 40.0, 39.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 86.0, 664.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p selectit",
					"id" : "obj-97",
					"outlettype" : [ "", "", "float" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 274.0, 364.0, 65.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 430.0, 356.0, 621.0, 338.0 ],
						"bglocked" : 0,
						"defrect" : [ 430.0, 356.0, 621.0, 338.0 ],
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
									"text" : "t b l",
									"id" : "obj-7",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 100.0, 185.0, 30.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 195.0, 290.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "info~ #0_buff ",
									"id" : "obj-4",
									"outlettype" : [ "float", "list", "float", "float", "float", "float", "float", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 8,
									"patching_rect" : [ 90.0, 245.0, 139.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-5",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 435.0, 130.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ #0_buff 10000",
									"id" : "obj-30",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 10.0, 285.0, 139.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p buffers",
									"id" : "obj-27",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 25.0, 120.0, 57.0, 20.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 645.0, 251.0, 748.0, 607.0 ],
										"bglocked" : 0,
										"defrect" : [ 645.0, 251.0, 748.0, 607.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 502.0, 391.0, 72.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set 0",
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 432.0, 436.0, 72.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 0 #0_bufgranul.snd1",
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 517.0, 436.0, 143.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_to.bufgranul",
													"id" : "obj-4",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 457.0, 476.0, 115.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_tobuffermenu",
													"id" : "obj-56",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 224.0, 442.0, 113.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_frombuffermenu",
													"id" : "obj-54",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 394.0, 352.0, 118.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_tofoldermenu",
													"id" : "obj-52",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 198.0, 298.0, 106.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_fromfoldermenu",
													"id" : "obj-50",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 434.0, 236.0, 117.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_frombpoolmenu",
													"id" : "obj-45",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 338.0, 130.0, 115.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_tobpoolmenu",
													"id" : "obj-44",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 210.0, 192.0, 106.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 210.0, 168.0, 82.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"id" : "obj-9",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 210.0, 147.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p refreshbuffer",
													"id" : "obj-40",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 312.0, 316.0, 141.0, 20.0 ],
													"patcher" : 													{
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl reg",
																	"id" : "obj-45",
																	"outlettype" : [ "", "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 82.0, 98.0, 47.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route symbol",
																	"id" : "obj-4",
																	"outlettype" : [ "", "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 50.5, 207.0, 79.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l clear",
																	"id" : "obj-37",
																	"outlettype" : [ "", "clear" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 80.0, 124.0, 126.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl iter 1",
																	"id" : "obj-36",
																	"outlettype" : [ "", "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 50.0, 231.0, 46.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend append",
																	"id" : "obj-34",
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 255.0, 87.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend symbol",
																	"id" : "obj-30",
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 82.0, 146.0, 87.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll",
																	"id" : "obj-29",
																	"outlettype" : [ "", "", "", "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"patching_rect" : [ 54.0, 184.0, 98.0, 17.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-33",
																	"outlettype" : [ "" ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 46.0, 42.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-38",
																	"outlettype" : [ "" ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 82.0, 46.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-39",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 49.5, 332.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-45", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-38", 0 ],
																	"destination" : [ "obj-45", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 1 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Arial",
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p refreshfolder",
													"id" : "obj-32",
													"outlettype" : [ "", "int" ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 312.0, 216.0, 100.0, 20.0 ],
													"patcher" : 													{
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0 dump l clear",
																	"id" : "obj-44",
																	"outlettype" : [ "int", "dump", "", "clear" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"patching_rect" : [ 72.0, 140.0, 216.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route symbol",
																	"id" : "obj-28",
																	"outlettype" : [ "", "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 140.0, 201.0, 90.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend append",
																	"id" : "obj-24",
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 140.0, 227.0, 87.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend refer",
																	"id" : "obj-23",
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 100.0, 136.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll",
																	"id" : "obj-7",
																	"outlettype" : [ "", "", "", "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"patching_rect" : [ 115.0, 177.0, 98.0, 17.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-21",
																	"outlettype" : [ "" ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 54.5, 40.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-22",
																	"outlettype" : [ "dump" ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 119.5, 40.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-26",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 18.0, 304.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-31",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 140.0, 306.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-44", 2 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-44", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 1 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-44", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-44", 3 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Arial",
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p refreshbufferpool",
													"id" : "obj-20",
													"outlettype" : [ "bang", "bang", "bang", "", "dump", "" ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 0,
													"numoutlets" : 6,
													"patching_rect" : [ 50.0, 100.0, 519.0, 20.0 ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 478.0, 113.0, 562.0, 300.0 ],
														"bglocked" : 0,
														"defrect" : [ 478.0, 113.0, 562.0, 300.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 137.5, 241.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "clear",
																	"id" : "obj-52",
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 458.5, 74.0, 50.0, 15.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b b b 0",
																	"id" : "obj-46",
																	"outlettype" : [ "bang", "bang", "bang", "int" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"patching_rect" : [ 42.5, 89.0, 69.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"id" : "obj-21",
																	"outlettype" : [ "bang" ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 35.5, 21.0, 20.0, 20.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"id" : "obj-2",
																	"outlettype" : [ "bang" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 218.5, 17.0, 100.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route symbol",
																	"id" : "obj-17",
																	"outlettype" : [ "", "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 202.0, 108.0, 90.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend append",
																	"id" : "obj-18",
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 202.0, 132.0, 87.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b dump b",
																	"id" : "obj-16",
																	"outlettype" : [ "bang", "dump", "bang" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"patching_rect" : [ 60.0, 54.0, 417.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r refresh_buffpools",
																	"id" : "obj-8",
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 61.0, 21.0, 99.0, 17.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "coll buffpools 1",
																	"id" : "obj-6",
																	"outlettype" : [ "", "", "", "" ],
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"patching_rect" : [ 168.5, 84.0, 104.0, 17.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-1",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 47.5, 240.5, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 81.5, 239.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-10",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 221.5, 240.5, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-13",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 335.5, 245.0, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-19",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 463.5, 240.5, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 228.0, 45.0, 69.5, 45.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 2 ],
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 1 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-46", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-46", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-46", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-46", 2 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-46", 3 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"fontname" : "Arial",
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontface" : 0,
														"fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"id" : "obj-47",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 198.0, 266.0, 89.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"id" : "obj-12",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 222.0, 410.0, 72.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"id" : "obj-14",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 222.0, 388.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"id" : "obj-11",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 198.0, 226.0, 47.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-21",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 250.0, 40.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-22",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 256.0, 40.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-23",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 222.0, 40.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-25",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 394.0, 553.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-26",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 502.0, 553.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-40", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 5 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [ 559.5, 419.0, 320.0, 419.0, 320.0, 431.0, 233.5, 431.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [ 321.5, 432.0, 233.0, 432.0, 233.0, 431.0, 233.5, 431.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [ 403.5, 371.0, 259.5, 371.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [ 402.5, 288.0, 207.5, 288.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 5 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [ 559.5, 293.0, 207.5, 293.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [ 443.5, 254.0, 299.0, 254.0, 299.0, 212.0, 235.5, 212.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-40", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 3 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 2 ],
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
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 4 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 384.0, 231.5, 384.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"id" : "obj-29",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 399.0, 186.0, 40.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"id" : "obj-28",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 371.0, 154.0, 46.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i i",
									"id" : "obj-24",
									"outlettype" : [ "int", "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 289.0, 132.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set #0_buff",
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 413.0, 248.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t reset b s",
									"id" : "obj-15",
									"outlettype" : [ "reset", "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 397.0, 222.0, 50.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend send",
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 427.0, 272.0, 106.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "forward",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 300.0, 106.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_to.bufgranul",
									"id" : "obj-42",
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 238.0, 244.0, 114.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /active /input",
									"id" : "obj-18",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 297.0, 77.0, 183.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"id" : "obj-19",
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 277.0, 104.0, 62.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 0 #0_buff",
									"linecount" : 2,
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 239.0, 210.0, 63.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"id" : "obj-35",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 277.0, 172.0, 60.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set #0_buff",
									"id" : "obj-36",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 155.0, 205.0, 75.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 215.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /sound /record",
									"id" : "obj-3",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 15.0, 40.0, 579.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /folder /buffer /bufferpool",
									"id" : "obj-2",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 15.0, 75.0, 195.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 16.0, 13.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-48",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 215.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 6 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 339.0, 161.0, 400.0, 161.0, 400.0, 194.0, 427.0, 194.0, 427.0, 287.0, 409.5, 287.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 422.5, 285.0, 409.5, 285.0 ]
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
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 196.0, 164.5, 196.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 196.0, 248.5, 196.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 2 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 406.5, 285.0, 409.5, 285.0 ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-27", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 306.5, 97.0, 286.5, 97.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.panelopen",
					"id" : "obj-55",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 28.0, 362.0, 95.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-87",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 28.0, 388.0, 59.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "input_inspector",
					"text" : "p gran_inspector",
					"id" : "obj-89",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 412.0, 100.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 8.0, 548.0, 256.0, 146.0 ],
						"bglocked" : 0,
						"defrect" : [ 8.0, 548.0, 256.0, 146.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "density jit",
									"presentation" : 1,
									"id" : "obj-86",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"presentation_rect" : [ 100.0, 110.0, 68.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 95.0, 358.0, 68.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"presentation" : 1,
									"id" : "obj-94",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"triangle" : 0,
									"fontsize" : 10.0,
									"presentation_rect" : [ 163.0, 109.0, 39.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 355.0, 50.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "dispstart[2]",
									"text" : "jcom.parameter density/jit @type msg_float @range/bounds 0. 512. @range/clipmode both @ramp/function linear @repetitions/allow 0 @description \"jitterr around grain density\" @priority 24",
									"linecount" : 3,
									"id" : "obj-3",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
									"numoutlets" : 3,
									"patching_rect" : [ 140.0, 355.0, 280.0, 38.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/buffername[3]",
									"text" : "jcom.parameter sound/bufferpool @type msg_list @priority 1",
									"id" : "obj-19",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
									"numoutlets" : 3,
									"patching_rect" : [ 190.0, 40.0, 258.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ms",
									"presentation" : 1,
									"id" : "obj-25",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"presentation_rect" : [ 138.000031, 85.0, 25.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 68.0, 167.0, 38.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"presentation" : 1,
									"id" : "obj-23",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"triangle" : 0,
									"fontsize" : 10.0,
									"presentation_rect" : [ 163.0, 85.0, 41.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 111.0, 166.0, 46.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay",
									"presentation" : 1,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"presentation_rect" : [ 100.0, 85.0, 37.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 176.0, 38.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter delay",
									"id" : "obj-18",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 173.0, 166.0, 136.0, 19.0 ],
									"frozen_object_attributes" : 									{
										"type" : "msg_int",
										"name" : "delay",
										"dataspace" : "time",
										"ramp/drive" : "scheduler",
										"range/bounds" : [ 0.0, 10000.0 ],
										"ramp/function" : "linear",
										"range/clipmode" : "low"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "voices",
									"presentation" : 1,
									"id" : "obj-143",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"presentation_rect" : [ 115.0, 38.0, 42.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 208.0, 42.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"presentation" : 1,
									"id" : "obj-139",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"triangle" : 0,
									"fontsize" : 10.0,
									"presentation_rect" : [ 163.0, 38.0, 41.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 84.0, 208.0, 46.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter voices",
									"id" : "obj-140",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 137.0, 208.0, 136.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ParameterA[5]",
									"presentation" : 1,
									"id" : "obj-61",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"triangle" : 0,
									"fontsize" : 10.0,
									"presentation_rect" : [ 66.0, 63.0, 42.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 90.0, 320.0, 52.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jit",
									"presentation" : 1,
									"id" : "obj-65",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"presentation_rect" : [ 42.0, 63.0, 28.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 320.0, 21.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter amp/jit @type msg_float",
									"id" : "obj-66",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 320.0, 230.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ParameterA[6]",
									"presentation" : 1,
									"id" : "obj-68",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"triangle" : 0,
									"fontsize" : 10.0,
									"presentation_rect" : [ 65.0, 38.0, 42.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 89.0, 300.0, 52.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "amp",
									"presentation" : 1,
									"id" : "obj-69",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"presentation_rect" : [ 34.0, 38.0, 39.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 46.0, 300.0, 32.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter amp @type msg_float",
									"id" : "obj-70",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 159.0, 300.0, 205.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ParameterA[3]",
									"presentation" : 1,
									"id" : "obj-50",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"triangle" : 0,
									"fontsize" : 10.0,
									"presentation_rect" : [ 163.0, 63.0, 42.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 90.0, 270.0, 52.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch jit",
									"presentation" : 1,
									"id" : "obj-51",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"presentation_rect" : [ 116.0, 63.0, 49.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 270.0, 49.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter detune/jit",
									"id" : "obj-53",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 270.0, 144.0, 19.0 ],
									"frozen_object_attributes" : 									{
										"type" : "msg_float",
										"name" : "pitch/jit",
										"ramp/drive" : "scheduler",
										"ramp/function" : "linear",
										"range/clipmode" : "low"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 218.0, 14.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_tobpoolmenu",
									"id" : "obj-49",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 78.0, 18.0, 106.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_frombpoolmenu",
									"id" : "obj-46",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 122.0, 62.0, 116.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "select a collection of buffers",
									"presentation" : 1,
									"id" : "obj-15",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Verdana",
									"arrowframe" : 0,
									"arrow" : 0,
									"fontsize" : 9.0,
									"presentation_rect" : [ 62.0, 4.0, 186.0, 17.0 ],
									"items" : [ "/bufferpool", ",", "/nutherpool" ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"patching_rect" : [ 80.0, 40.0, 100.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bufferpool :",
									"presentation" : 1,
									"id" : "obj-2",
									"fontname" : "Arial",
									"textcolor" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"frgb" : [ 0.839216, 0.839216, 0.839216, 1.0 ],
									"fontsize" : 9.0,
									"presentation_rect" : [ 4.0, 4.0, 58.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 40.0, 58.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 12.0, 123.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 0 ],
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
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p wfkeys",
					"id" : "obj-58",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 518.0, 276.0, 63.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 49.0, 320.0, 238.0, 375.0 ],
						"bglocked" : 0,
						"defrect" : [ 49.0, 320.0, 238.0, 375.0 ],
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
									"maxclass" : "button",
									"id" : "obj-12",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 40.0, 254.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_frombuffermenu",
									"id" : "obj-28",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 28.0, 230.0, 119.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"id" : "obj-1",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 96.0, 202.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"id" : "obj-2",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 131.0, 255.0, 53.0, 17.0 ],
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
									"id" : "obj-3",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 75.0, 117.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 74.0, 164.0, 15.0, 15.0 ],
									"comment" : "waveform~ mode messages"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "<< 1",
									"id" : "obj-5",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 113.0, 88.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"id" : "obj-6",
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 96.0, 140.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 0",
									"id" : "obj-7",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 96.0, 164.0, 45.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "|",
									"id" : "obj-8",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 96.0, 117.0, 27.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 284.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "modifiers 100",
									"id" : "obj-10",
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 5,
									"patching_rect" : [ 45.0, 62.0, 78.0, 17.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-12", 0 ],
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
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"presentation" : 1,
					"id" : "obj-141",
					"outlettype" : [ "", "", "int" ],
					"texton" : "Rec",
					"fontname" : "Arial",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"fontsize" : 9.0,
					"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 201.0, 41.0, 30.0, 15.0 ],
					"text" : "Rec",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 494.0, 691.0, 42.0, 18.0 ],
					"bgoveroncolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[17]",
					"text" : "jcom.parameter record/active @type msg_int @description \"Start and stop to record.\"",
					"id" : "obj-136",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 495.0, 713.0, 385.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Record",
					"id" : "obj-137",
					"fontname" : "Arial",
					"textcolor" : [ 0.776471, 0.090196, 0.0, 1.0 ],
					"frgb" : [ 0.776471, 0.090196, 0.0, 1.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 537.0, 685.0, 95.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"id" : "obj-72",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 597.0, 630.0, 113.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p fillmenu",
					"id" : "obj-82",
					"outlettype" : [ "clear" ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 489.0, 626.0, 106.0, 17.0 ],
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
									"id" : "obj-3",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 310.0, 308.0, 79.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dumpaudioinputlist",
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 238.0, 204.0, 103.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 276.0, 356.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 306.0, 332.0, 79.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump clear",
									"id" : "obj-29",
									"outlettype" : [ "dump", "clear" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 238.0, 226.0, 66.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll audioinputmapping 1",
									"id" : "obj-28",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 312.0, 286.0, 124.0, 17.0 ],
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
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "select a sub-folder of buffers",
					"presentation" : 1,
					"id" : "obj-83",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"arrowframe" : 0,
					"arrow" : 0,
					"fontsize" : 9.0,
					"presentation_rect" : [ 231.0, 40.0, 68.0, 17.0 ],
					"items" : "Lie",
					"numinlets" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 489.0, 650.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[16]",
					"text" : "jcom.parameter record/input @type msg_list @description \"Select the input to record.\"",
					"linecount" : 2,
					"id" : "obj-108",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 595.0, 650.0, 232.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p randommenu",
					"id" : "obj-34",
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 499.0, 194.0, 100.0, 20.0 ],
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
									"id" : "obj-2",
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 144.0, 304.0, 61.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 144.0, 350.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_loc",
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 122.0, 60.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_loc",
									"id" : "obj-31",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 210.0, 282.0, 60.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 140.0, 52.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"id" : "obj-29",
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 110.0, 160.0, 41.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"id" : "obj-23",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 142.0, 260.0, 41.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"id" : "obj-22",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 144.0, 282.0, 61.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "==",
									"id" : "obj-14",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 142.0, 238.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i i",
									"id" : "obj-4",
									"outlettype" : [ "int", "int", "int" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 144.0, 214.0, 61.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tobuffermenu",
									"id" : "obj-28",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 188.0, 328.0, 106.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b count",
									"id" : "obj-26",
									"outlettype" : [ "bang", "count" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 144.0, 100.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_tobuffermenu",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 178.0, 120.0, 106.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.random 0 1",
									"id" : "obj-19",
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 144.0, 192.0, 94.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route count",
									"id" : "obj-21",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 218.0, 170.0, 147.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 149.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 223.0, 40.0, 25.0, 25.0 ],
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
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_tobuffermenu",
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 387.0, 83.0, 113.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_frombuffermenu",
					"id" : "obj-28",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 479.0, 127.0, 119.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername[2]",
					"text" : "jcom.parameter sound/buffer @type msg_list @priority 3",
					"id" : "obj-36",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 599.0, 105.0, 286.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "select a buffer",
					"presentation" : 1,
					"id" : "obj-38",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"arrowframe" : 0,
					"arrow" : 0,
					"fontsize" : 9.0,
					"presentation_rect" : [ 145.0, 22.0, 154.0, 17.0 ],
					"items" : [ "P-(eu)_souffle_retour01  .aif", ",", "P-blip_click01.aif", ",", "P-bouche_blip01.aif", ",", "P-bouche_blip02.aif", ",", "P-bouche_blip03.aif", ",", "P-bouche_blip04.aif", ",", "P-bouche_blip05.aif", ",", "P-bouche_blip06.aif", ",", "P-bouche_blip07.aif", ",", "P-bouche_flip01.aif", ",", "P-seq_orge_gloc01.aif", ",", "P-seq_orge_gloc02.aif", ",", "Q-souff_acharnement.aif", ",", "S-(eu)_attaque01.aif", ",", "S-(eu)_trainé_péripétie01.aif", ",", "S-(fle)motif_boucle01.aif", ",", "S-(fle-â)_timbré.aif", ",", "S-(le)_siffl_fin.aif", ",", "S-(si)_intensif01.aif", ",", "S-(si)_siffle_parasite01.aif", ",", "S-(si)_sifflement01.aif", ",", "S-ample_long01.aif", ",", "S-aspiration(ô).aif", ",", "S-aspiration01.aif", ",", "S-aspiration02.aif", ",", "S-aspiration03.aif", ",", "S-aspiration_inversée01.aif", ",", "S-descente_apnée01.aif", ",", "S-doux_long01.aif", ",", "S-gorge_(i)01.aif", ",", "S-gorge_raclé_(i)01.aif", ",", "S-gorge_raclé_(i)02.aif", ",", "S-issement02.aif", ",", "S-issement_bruisssement01.aif", ",", "S-long_(i)_(u-i)01.aif", ",", "S-mot_sillon01.aif", ",", "S-mot_sillon02.aif", ",", "S-mot_sillon03.aif", ",", "S-mot_sillon04.aif", ",", "S-ô_attaque(ô)01.aif", ",", "S-ô_caverneux_siffle01.aif", ",", "S-profond_(an)01.aif", ",", "S-raclé_doux02.aif", ",", "S-raclé_doux_trainé01.aif", ",", "S-raclé_péripétie01.aif", ",", "S-ressac_long_buté01.aif", ",", "S-ressac_mer01.aif", ",", "S-ressac_transition01.aif", ",", "S-résonance(fle)01.aif", ",", "S-résonance01.aif", ",", "S-résonance02.aif", ",", "S-résonance03.aif", ",", "S-résonance_raclé01.aif", ",", "S-résonnance_(i)_attaque01.aif", ",", "S-sifflement_vent01.aif", ",", "S-tenu_longue01.aif", ",", "T-(bre)infra_voix01.aif", ",", "V-(bre)_boucle01.aif", ",", "V-(bre)_boucle02.aif", ",", "V-(bre)_boucle_scansion01.aif", ",", "V-(bre)_siffle_racle_fin01.aif", ",", "V-(bre)_siffle_racle_fin02.aif", ",", "V-(fre)_boucle01.aif", ",", "V-issement01.aif" ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 387.0, 105.0, 203.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_tofoldermenu",
					"id" : "obj-39",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 393.0, 17.0, 106.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_fromfoldermenu",
					"id" : "obj-62",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 435.0, 63.0, 118.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername[1]",
					"text" : "jcom.parameter sound/folder @type msg_list @priority 2",
					"id" : "obj-67",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 497.0, 43.0, 293.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "select a sub-folder of buffers",
					"presentation" : 1,
					"id" : "obj-71",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"arrowframe" : 0,
					"arrow" : 0,
					"fontsize" : 9.0,
					"presentation_rect" : [ 32.0, 22.0, 84.0, 17.0 ],
					"items" : "découp-voix",
					"numinlets" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 393.0, 43.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"varname" : "wf",
					"presentation" : 1,
					"id" : "obj-127",
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"waveformcolor" : [ 0.866667, 0.905882, 0.964706, 1.0 ],
					"vlabels" : 1,
					"grid" : 500.0,
					"textcolor" : [  ],
					"bordercolor" : [ 0.831373, 0.05098, 0.031373, 1.0 ],
					"clipdraw" : 1,
					"selectioncolor" : [ 0.019608, 0.0, 0.690196, 0.5 ],
					"setmode" : 2,
					"tickmarkcolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
					"bgcolor" : [ 0.384314, 0.462745, 0.65098, 1.0 ],
					"presentation_rect" : [ 4.0, 80.0, 293.0, 77.0 ],
					"numinlets" : 5,
					"labeltextcolor" : [ 0.286275, 0.494118, 0.733333, 1.0 ],
					"labelbgcolor" : [ 0.419608, 0.098039, 0.164706, 1.0 ],
					"numoutlets" : 6,
					"buffername" : "V-(bre)_boucle02.aif",
					"patching_rect" : [ 519.0, 308.0, 156.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.parameter.mxb[5]",
					"text" : "jcom.parameter continuous @type msg_int @repetitions/allow 1 @description \"One shot/ continuous play mode.\" @priority 28",
					"linecount" : 3,
					"id" : "obj-40",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 135.0, 618.0, 252.0, 38.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "name gran",
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 295.0, 248.0, 65.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter length/jit",
					"id" : "obj-77",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 554.0, 557.0, 146.0, 19.0 ],
					"frozen_object_attributes" : 					{
						"type" : "msg_float",
						"ramp/drive" : "scheduler",
						"ramp/function" : "linear",
						"range/clipmode" : "low"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter length @type msg_int",
					"id" : "obj-79",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 574.0, 390.0, 255.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA[4]",
					"presentation" : 1,
					"id" : "obj-56",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"triangle" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 91.0, 40.0, 32.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 89.0, 586.0, 52.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter detune",
					"id" : "obj-59",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 159.0, 586.0, 136.0, 19.0 ],
					"frozen_object_attributes" : 					{
						"type" : "msg_float",
						"name" : "pitch",
						"ramp/drive" : "scheduler",
						"range/bounds" : [ 0.0, 1.0 ],
						"ramp/function" : "linear",
						"range/clipmode" : "none",
						"repetitions/allow" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter position/jit",
					"id" : "obj-49",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 390.0, 455.0, 148.0, 19.0 ],
					"frozen_object_attributes" : 					{
						"ramp/drive" : "scheduler",
						"priority" : 5,
						"ramp/function" : "linear",
						"range/clipmode" : "both",
						"repetitions/allow" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter position",
					"id" : "obj-43",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 687.0, 311.0, 167.0, 19.0 ],
					"frozen_object_attributes" : 					{
						"type" : "msg_float",
						"ramp/drive" : "scheduler",
						"priority" : 4,
						"ramp/function" : "linear",
						"range/clipmode" : "both"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter delay/jit",
					"id" : "obj-21",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 571.0, 523.0, 136.0, 19.0 ],
					"frozen_object_attributes" : 					{
						"type" : "msg_int",
						"name" : "delay/jit",
						"dataspace" : "time",
						"ramp/drive" : "scheduler",
						"range/bounds" : [ 0.0, 1.0 ],
						"ramp/function" : "linear",
						"range/clipmode" : "low"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "trig",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 556.0, 38.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message play",
					"id" : "obj-13",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 135.0, 558.0, 133.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p params",
					"id" : "obj-64",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 445.0, 58.0, 19.0 ],
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
									"id" : "obj-38",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 440.0, 113.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@enable",
									"id" : "obj-42",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 68.0, 459.0, 77.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1/0 : enables the send of data (on by default)",
									"id" : "obj-40",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 175.0, 460.0, 302.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/scheduler",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 345.0, 105.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "scheduler/queue...",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 344.0, 105.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@description",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 410.0, 75.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@repetitions/allow",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 365.0, 105.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/function",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 325.0, 92.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/clipmode",
									"id" : "obj-48",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 395.0, 101.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/bounds",
									"id" : "obj-49",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 380.0, 91.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@type",
									"id" : "obj-50",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 307.0, 44.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
									"linecount" : 3,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 75.0, 237.0, 370.0, 43.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.return:",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 53.0, 217.0, 380.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
									"linecount" : 2,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 183.0, 342.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.message:",
									"id" : "obj-16",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 167.0, 366.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
									"linecount" : 2,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 119.0, 363.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.parameter:",
									"id" : "obj-23",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 100.0, 293.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for html autodoc of module",
									"id" : "obj-24",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 411.0, 149.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 (default)/0 --- 1 means that repetitions are allowed",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 366.0, 282.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none/linear/cosine/power/tanh/lowpass...",
									"id" : "obj-26",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 185.0, 325.0, 221.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none, low, high, both (default)",
									"id" : "obj-27",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 396.0, 166.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "minimum and maximum values for this parameter/message",
									"id" : "obj-28",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 381.0, 314.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "generic (default), msg_int, msg_float, menu, toggle",
									"id" : "obj-36",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 184.0, 308.0, 273.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attributes for jcom.parameter and jcom.message:",
									"id" : "obj-51",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 292.0, 295.0, 19.0 ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p buffers",
					"id" : "obj-63",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 616.0, 252.0, 55.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 390.0, 345.0, 472.0, 365.0 ],
						"bglocked" : 0,
						"defrect" : [ 390.0, 345.0, 472.0, 365.0 ],
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
									"id" : "obj-134",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 335.0, 265.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "setenv 0 6575env",
									"id" : "obj-14",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 270.0, 300.0, 143.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 245.0, 75.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend replace",
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 245.0, 115.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "setenv 0 #0_bufgranul.env1",
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 84.0, 302.0, 147.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_to.bufgranul",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 329.0, 115.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pipe 50",
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 88.0, 220.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-6",
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 81.0, 197.0, 50.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 0 #0_bufgranul.snd1",
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 270.0, 143.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ #0_bufgranul.env1 gmu.env.trapez20.aif",
									"id" : "obj-7",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 54.0, 158.0, 253.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "trapeze",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 135.0, 64.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Load a sound file",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.0, 70.0, 100.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace",
									"id" : "obj-11",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 52.0, 68.0, 43.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ #0_bufgranul.snd1",
									"id" : "obj-12",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 52.0, 89.0, 142.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Envelope buffer",
									"id" : "obj-85",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 110.0, 111.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sound Buffer",
									"id" : "obj-100",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 45.0, 100.0, 21.0 ]
								}

							}
 ],
						"lines" : [ 							{
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
									"midpoints" : [ 254.5, 153.0, 177.0, 153.0, 177.0, 153.0, 120.0, 153.0, 120.0, 153.0, 63.5, 153.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"id" : "obj-60",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 166.0, 334.0, 61.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.bufgranul",
					"id" : "obj-57",
					"outlettype" : [ "signal", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 164.0, 365.0, 100.0, 19.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -1326.0, 440.0, 1052.0, 307.0 ],
						"bglocked" : 0,
						"defrect" : [ -1326.0, 440.0, 1052.0, 307.0 ],
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
									"id" : "obj-24",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 25.0, 50.0, 206.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend nvoices",
									"id" : "obj-22",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 25.0, 95.0, 84.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-23",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 197.0, 139.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 482.0, 259.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "poll 1",
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 107.0, 139.0, 36.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "grain 11 4685. 1. 1.206784 436.175934 1. 1. 1. 0.",
									"id" : "obj-21",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 331.0, 210.0, 579.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-19",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 896.0, 137.0, 50.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-17",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 812.0, 136.0, 50.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p length",
									"id" : "obj-46",
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 573.0, 128.0, 51.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ -1251.0, -67.0, 279.0, 362.0 ],
										"bglocked" : 0,
										"defrect" : [ -1251.0, -67.0, 279.0, 362.0 ],
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
													"text" : "split 5. 214374444",
													"id" : "obj-9",
													"outlettype" : [ "float", "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 3,
													"numoutlets" : 2,
													"patching_rect" : [ 23.0, 280.0, 96.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "random between length-jit and length+jit",
													"id" : "obj-10",
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 70.0, 310.0, 213.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend uniform",
													"id" : "obj-16",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 183.0, 92.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"id" : "obj-15",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 161.0, 63.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"id" : "obj-13",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 136.0, 38.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"id" : "obj-8",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 23.0, 204.0, 30.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"id" : "obj-7",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 23.0, 181.0, 87.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $f1 == 0. then 1 else 2",
													"linecount" : 2,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 23.0, 136.0, 71.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "randdist uniform 0. 0.",
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 90.0, 211.0, 121.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"id" : "obj-3",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 23.0, 250.0, 224.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit /jit:",
													"id" : "obj-14",
													"outlettype" : [ "", "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 90.0, 72.0, 154.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 23.0, 305.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 117.0, 100.5, 117.0 ]
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-9", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 9.0,
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p amp",
									"id" : "obj-45",
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 494.0, 130.0, 51.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 722.0, 212.0, 306.0, 336.0 ],
										"bglocked" : 0,
										"defrect" : [ 722.0, 212.0, 306.0, 336.0 ],
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
													"id" : "obj-10",
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 289.0, 175.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend uniform",
													"id" : "obj-16",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 183.0, 92.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"id" : "obj-15",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 161.0, 63.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"id" : "obj-13",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 136.0, 38.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"id" : "obj-8",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 22.0, 204.0, 30.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"id" : "obj-7",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 22.0, 181.0, 87.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $f1 == 0. then 1 else 2",
													"linecount" : 2,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 23.0, 136.0, 71.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "randdist uniform 0. 0.",
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 90.0, 211.0, 121.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"id" : "obj-3",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 22.0, 263.0, 224.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit /jit:",
													"id" : "obj-14",
													"outlettype" : [ "", "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 90.0, 72.0, 154.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 287.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-15", 1 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 9.0,
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p detune",
									"id" : "obj-40",
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 414.0, 130.0, 51.0, 17.0 ],
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
													"id" : "obj-16",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 183.0, 92.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"id" : "obj-15",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 161.0, 63.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"id" : "obj-13",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 115.0, 136.0, 38.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"id" : "obj-8",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 22.0, 204.0, 30.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"id" : "obj-7",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 22.0, 181.0, 87.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $f1 == 0. then 1 else 2",
													"linecount" : 2,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 23.0, 136.0, 71.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "randdist uniform 0. 0.",
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 90.0, 211.0, 121.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"id" : "obj-3",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 22.0, 263.0, 224.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit /jit:",
													"id" : "obj-14",
													"outlettype" : [ "", "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 90.0, 72.0, 154.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 22.0, 287.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 9.0,
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p begin",
									"id" : "obj-39",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 335.0, 131.0, 51.0, 17.0 ],
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
													"id" : "obj-11",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 110.0, 205.0, 32.5, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 2.",
													"id" : "obj-9",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 135.0, 180.0, 32.5, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "scaled 0. 1. --> sample length",
													"id" : "obj-10",
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 180.0, 290.0, 150.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"id" : "obj-8",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 22.0, 204.0, 30.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"id" : "obj-7",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 22.0, 181.0, 87.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1 == 0 then 1 else 2",
													"linecount" : 2,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 23.0, 136.0, 71.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.random 0",
													"linecount" : 2,
													"id" : "obj-4",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 3,
													"numoutlets" : 1,
													"patching_rect" : [ 90.0, 235.0, 75.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0",
													"id" : "obj-3",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 30.0, 285.0, 173.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit /jit:",
													"id" : "obj-14",
													"outlettype" : [ "", "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 90.0, 72.0, 110.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 30.0, 309.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 0 ],
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
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 9.0,
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p delay",
									"id" : "obj-38",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 255.0, 131.0, 51.0, 17.0 ],
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
													"id" : "obj-8",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 30.0, 227.0, 30.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"id" : "obj-7",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 30.0, 165.0, 87.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1 == 0 then 1 else 2",
													"linecount" : 2,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 30.0, 135.0, 71.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 43.0, 39.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "random 0",
													"id" : "obj-4",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 98.0, 224.0, 66.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0",
													"id" : "obj-3",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 30.0, 255.0, 173.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit /jit:",
													"linecount" : 2,
													"id" : "obj-14",
													"outlettype" : [ "", "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 90.0, 72.0, 105.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 30.0, 279.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 90.0, 39.0, 25.0, 25.0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-4", 1 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 9.0,
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p trig",
									"id" : "obj-35",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 4,
									"numoutlets" : 1,
									"patching_rect" : [ 115.0, 95.0, 144.0, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 106.0, 233.0, 223.0, 558.0 ],
										"bglocked" : 0,
										"defrect" : [ 106.0, 233.0, 223.0, 558.0 ],
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
													"text" : "sel 0.",
													"id" : "obj-23",
													"outlettype" : [ "bang", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 45.0, 285.0, 35.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"id" : "obj-8",
													"outlettype" : [ "bang" ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 15.0, 95.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"id" : "obj-16",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 40.0, 177.0, 30.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"id" : "obj-7",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 40.0, 120.0, 87.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $f1 == 0. then 1 else 2",
													"linecount" : 2,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 40.0, 90.0, 71.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 0.",
													"id" : "obj-17",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 40.0, 205.0, 106.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-13",
													"outlettype" : [ "float" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 150.0, 205.0, 19.0, 19.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-11",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 95.0, 450.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"id" : "obj-107",
													"outlettype" : [ "bang", "float" ],
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 110.0, 230.0, 31.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1000.",
													"id" : "obj-10",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 40.0, 235.0, 49.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1.",
													"id" : "obj-102",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 40.0, 260.0, 101.0, 19.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.random 0. 0.1",
													"id" : "obj-4",
													"outlettype" : [ "float" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 3,
													"numoutlets" : 1,
													"patching_rect" : [ 65.0, 150.0, 100.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 385.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 430.0, 100.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-15",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 40.0, 28.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /jit /jit:",
													"id" : "obj-14",
													"outlettype" : [ "", "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 40.0, 65.0, 111.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"id" : "obj-104",
													"outlettype" : [ "bang" ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 145.0, 385.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : ">~ 0.",
													"id" : "obj-105",
													"outlettype" : [ "signal" ],
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 43.0, 335.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "edge~",
													"id" : "obj-106",
													"outlettype" : [ "bang", "bang" ],
													"fontname" : "Arial",
													"fontsize" : 11.595187,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 42.0, 359.0, 57.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 60.0, 485.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "cycle~",
													"id" : "obj-63",
													"outlettype" : [ "signal" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 42.0, 314.0, 39.0, 17.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-4", 2 ],
													"hidden" : 0,
													"midpoints" : [ 49.5, 84.0, 130.0, 84.0, 130.0, 147.0, 155.5, 147.0 ]
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
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
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
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-12", 0 ],
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
													"source" : [ "obj-104", 0 ],
													"destination" : [ "obj-7", 1 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-102", 0 ],
													"destination" : [ "obj-23", 0 ],
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
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 9.0,
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_to.bufgranul",
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numoutlets" : 1,
									"patching_rect" : [ 191.0, 202.0, 115.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_from.bufgranul",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 504.0, 259.0, 115.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p set_buffer",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"numoutlets" : 0,
									"patching_rect" : [ 932.0, 109.0, 100.0, 17.0 ],
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
													"id" : "obj-2",
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 315.0, 345.0, 50.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route voices buffer active_env envbuffer",
													"id" : "obj-5",
													"outlettype" : [ "", "", "", "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 5,
													"patching_rect" : [ 300.0, 315.0, 195.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_from.bufgranul",
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 0,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numoutlets" : 1,
													"patching_rect" : [ 198.0, 293.0, 115.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route buffer",
													"id" : "obj-69",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 198.0, 313.0, 84.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"id" : "obj-3",
													"outlettype" : [ "bang", "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 167.0, 178.0, 100.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 0 help.snd2",
													"id" : "obj-44",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 192.0, 150.0, 108.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 0 help.snd1",
													"id" : "obj-45",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 180.0, 127.0, 108.0, 15.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_to.bufgranul",
													"id" : "obj-43",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 166.0, 227.0, 115.0, 17.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "poll 1, info -1, poll 0",
													"id" : "obj-42",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 167.0, 201.0, 117.0, 15.0 ]
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
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 9.0,
										"fontface" : 0,
										"fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /play /delay /position /pitch /amp /length /pan /dist /buffer /envbuffer",
									"id" : "obj-9",
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 11,
									"patching_rect" : [ 210.0, 70.0, 774.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "envbuffer",
									"id" : "obj-44",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 892.0, 160.0, 58.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "buffer",
									"id" : "obj-43",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 805.0, 159.0, 45.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "dist",
									"id" : "obj-37",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 724.0, 157.0, 45.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pan",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 636.0, 157.0, 45.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "length",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 552.0, 157.0, 45.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "amp",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 477.0, 157.0, 37.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pitch",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 399.0, 157.0, 37.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "begin",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 326.0, 157.0, 37.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 248.0, 157.0, 37.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack grain 0 0. 1. 1. 20000. 1. 1. 1. 0.",
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 10,
									"numoutlets" : 1,
									"patching_rect" : [ 176.0, 180.0, 734.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grain <delay(sample)> <begin> <detune> <amp> <length> <pan> <dist> <buffer> <envbuffer>",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 411.0, 94.0, 464.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tellme",
									"id" : "obj-41",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 96.0, 184.0, 36.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "panic",
									"id" : "obj-42",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 138.0, 184.0, 32.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bufGranul~ #0_bufgranul.snd1 #0_bufgranul.env1 1",
									"id" : "obj-81",
									"outlettype" : [ "signal", "" ],
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 8,
									"numoutlets" : 2,
									"patching_rect" : [ 176.0, 236.0, 347.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 176.0, 259.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 25.0, 20.0, 25.0, 25.0 ],
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
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 34.5, 223.0, 185.5, 223.0 ]
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
									"midpoints" : [ 105.5, 216.0, 185.5, 216.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 147.5, 224.0, 185.5, 224.0 ]
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
									"source" : [ "obj-9", 8 ],
									"destination" : [ "obj-17", 0 ],
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
									"source" : [ "obj-9", 4 ],
									"destination" : [ "obj-45", 1 ],
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
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-39", 1 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-35", 2 ],
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
									"source" : [ "obj-9", 6 ],
									"destination" : [ "obj-7", 6 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"id" : "obj-52",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 200.0, 420.0, 121.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation" : 1,
					"id" : "obj-54",
					"presentation_rect" : [ 152.0, 7.0, 91.0, 7.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 445.0, 80.0, 4.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 223.0, 247.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 1",
					"id" : "obj-7",
					"outlettype" : [ "signal", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 164.0, 390.0, 80.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 243.0, 140.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"bufgranul~ mono\"",
					"id" : "obj-30",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 5.0, 278.0, 354.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-31",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 193.0, 99.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 5.0, 193.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-33",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 275.0, 223.0, 41.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 164.0, 421.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-45",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 323.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"id" : "obj-47",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 225.0, 450.0, 106.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pitch",
					"presentation" : 1,
					"id" : "obj-84",
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"bgcolor" : [ 1.0, 0.223529, 0.223529, 0.396078 ],
					"presentation_rect" : [ 62.0, 41.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 588.0, 40.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"has_meters" : 1,
					"has_gain" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 175.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"prefix" : "audio",
					"has_mute" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 175.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-36", 0 ],
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
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-67", 0 ],
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
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 537.833313, 414.0, 399.5, 414.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 529.5, 374.0, 504.0, 374.0, 504.0, 261.0, 603.0, 261.0, 603.0, 280.0, 696.5, 280.0 ]
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
					"source" : [ "obj-127", 2 ],
					"destination" : [ "obj-43", 0 ],
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
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 1 ],
					"destination" : [ "obj-128", 0 ],
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
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 358.0, 283.5, 358.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 357.0, 37.5, 357.0 ]
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
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [ 717.5, 510.0, 711.0, 510.0, 711.0, 558.0, 714.5, 558.0 ]
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
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 701.5, 421.0, 844.5, 421.0 ]
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
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-108", 0 ],
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
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-136", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 1 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
