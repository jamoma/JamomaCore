{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 118.0, 49.0, 1162.0, 706.0 ],
		"bglocked" : 0,
		"defrect" : [ 118.0, 49.0, 1162.0, 706.0 ],
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
					"maxclass" : "comment",
					"varname" : "Text_z",
					"text" : "z",
					"id" : "obj-116",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 351.0, 140.0, 17.0, 19.0 ],
					"presentation" : 1,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 275.0, 97.0, 17.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y",
					"id" : "obj-114",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 327.0, 140.0, 17.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 237.0, 97.0, 17.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"id" : "obj-113",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 301.0, 140.0, 17.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 203.0, 97.0, 17.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reference Point",
					"linecount" : 2,
					"id" : "obj-112",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 308.0, 181.0, 73.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 199.0, 88.0, 88.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"rounded" : 10,
					"id" : "obj-108",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 371.0, 403.0, 45.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"items" : [ "bypass", ",", "add", "to", "position", ",", "replace", "position" ],
					"presentation_rect" : [ 86.0, 169.0, 82.0, 18.0 ],
					"types" : [  ],
					"arrow" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"id" : "obj-110",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 526.0, 434.0, 67.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
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
									"id" : "obj-15",
									"numoutlets" : 1,
									"patching_rect" : [ 106.0, 88.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-14",
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 317.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t xyz",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 184.0, 173.0, 35.0, 19.0 ],
									"outlettype" : [ "xyz" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t xy",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 153.0, 172.0, 30.0, 19.0 ],
									"outlettype" : [ "xy" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "xy",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 267.0, 50.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numoutlets" : 1,
									"patching_rect" : [ 160.0, 86.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 2 3",
									"id" : "obj-108",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"patching_rect" : [ 159.0, 132.0, 46.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scripting",
					"id" : "obj-115",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 592.0, 403.0, 56.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
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
									"id" : "obj-20",
									"numoutlets" : 1,
									"patching_rect" : [ 191.0, 13.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 119.0, 64.0, 32.5, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 121.0, 91.0, 32.5, 19.0 ],
									"outlettype" : [ "bang", "int" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 122.0, 41.0, 50.0, 19.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script show",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 205.0, 261.0, 112.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2 2",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 117.0, 214.0, 107.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 285.0, 296.0, 34.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script hide",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 65.0, 257.0, 108.0, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "SkewNumb_x2z, SkewNumb_y2z, SkewNumb_z2x, SkewNumb_z2y, SkewText_x2z, SkewText_y2z, SkewText_z2x, SkewText_z2y, RotNumb_pitch, RotNumb_roll, RotText_roll, RotText_pitch, mirrorNumb_pitch, mirrorNumb_roll, stretchNumb_z, RandomNumb_z, TranslateNumb_z, RotNumb_z, Text_z",
									"linecount" : 4,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 110.0, 124.0, 521.0, 53.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-5",
									"numoutlets" : 0,
									"patching_rect" : [ 93.0, 357.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "hide if dimensions  == 2",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 20.0, 150.0, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"id" : "obj-109",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 655.0, 403.0, 59.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mirror:",
					"id" : "obj-107",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 254.0, 185.0, 51.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 26.0, 129.0, 52.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "mirrorNumb_roll",
					"id" : "obj-100",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 159.0, 585.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 156.0, 131.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "mirrorNumb_pitch",
					"id" : "obj-101",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 105.0, 585.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 121.0, 131.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-103",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 55.0, 585.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 86.0, 131.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-104",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"patching_rect" : [ 54.0, 557.0, 154.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter mirror/angle",
					"id" : "obj-105",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 211.0, 557.0, 136.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"description" : "defines the mirror plane"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mirror",
					"id" : "obj-106",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 231.0, 586.0, 49.0, 18.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter mirror/active",
					"id" : "obj-97",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 97.0, 530.0, 160.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_toggle",
						"description" : "turns on/off mirroring"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-98",
					"numoutlets" : 1,
					"patching_rect" : [ 73.0, 529.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 6.0, 131.0, 18.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter bypass @repetitions/allow 1 @type msg_toggle @description \"bypassed all scene effects\"",
					"id" : "obj-96",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 501.0, 168.0, 482.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "Bypass On/Off",
					"rounded" : 20.0,
					"id" : "obj-94",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"texton" : "B",
					"patching_rect" : [ 439.0, 169.0, 16.0, 16.0 ],
					"bgoveroncolor" : [ 0.133333, 0.290196, 0.584314, 1.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"bgoncolor" : [ 0.129412, 0.290196, 0.580392, 1.0 ],
					"mode" : 1,
					"fontsize" : 10.0,
					"text" : "B",
					"presentation_rect" : [ 283.0, 2.0, 15.0, 15.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/output/source.4/position/xyz 0. 0. 0.",
					"id" : "obj-120",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 127.0, 382.0, 209.0, 16.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 127.0, 382.0, 209.0, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p prepare",
					"id" : "obj-118",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 659.0, 125.0, 53.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 88.0, 102.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 88.0, 102.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
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
									"text" : "qlim",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 121.0, 220.0, 32.5, 19.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 122.0, 196.0, 32.5, 19.0 ],
									"outlettype" : [ "bang", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route Order:",
									"id" : "obj-108",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 393.0, 171.0, 64.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"id" : "obj-107",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 392.0, 151.0, 52.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set Order:",
									"id" : "obj-101",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 122.0, 174.0, 94.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"id" : "obj-94",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 121.0, 100.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl sect stretch random translate skew rotate mirror",
									"id" : "obj-97",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 121.0, 141.0, 268.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl thin",
									"id" : "obj-98",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 121.0, 119.0, 41.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-114",
									"numoutlets" : 1,
									"patching_rect" : [ 395.0, 57.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-115",
									"numoutlets" : 1,
									"patching_rect" : [ 126.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-116",
									"numoutlets" : 0,
									"patching_rect" : [ 58.0, 297.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-117",
									"numoutlets" : 0,
									"patching_rect" : [ 123.0, 309.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-101", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 1 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-117", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-117", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "Order: stretch random translate skew rotate",
					"autoscroll" : 0,
					"wordwrap" : 0,
					"id" : "obj-99",
					"fontname" : "Arial",
					"numoutlets" : 4,
					"patching_rect" : [ 718.0, 125.0, 222.0, 21.0 ],
					"presentation" : 1,
					"lines" : 1,
					"outlettype" : [ "", "int", "", "" ],
					"tabmode" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"keymode" : 1,
					"presentation_rect" : [ 1.0, 20.0, 298.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p returns-TODO",
					"id" : "obj-95",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 295.0, 343.0, 82.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 11.0, 44.0, 1010.0, 539.0 ],
						"bglocked" : 0,
						"defrect" : [ 11.0, 44.0, 1010.0, 539.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
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
									"text" : "...more to come",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 526.0, 320.0, 150.0, 19.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return output/source.8/position/xyz @repetitions/allow 0 @type msg_list",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 136.0, 428.0, 407.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return output/source.7/position/xyz @repetitions/allow 0 @type msg_list",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 114.0, 399.0, 407.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return output/source.6/position/xyz @repetitions/allow 0 @type msg_list",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 101.0, 369.0, 407.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return output/source.5/position/xyz @repetitions/allow 0 @type msg_list",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 87.0, 340.0, 407.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return output/source.4/position/xyz @repetitions/allow 0 @type msg_list",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 62.0, 311.0, 407.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return output/source.3/position/xyz @repetitions/allow 0 @type msg_list",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 40.0, 282.0, 407.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return output/source.2/position/xyz @repetitions/allow 0 @type msg_list",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 27.0, 252.0, 407.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return output/source.1/position/xyz @repetitions/allow 0 @type msg_list",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"patching_rect" : [ 13.0, 223.0, 407.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 32",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 32,
									"patching_rect" : [ 51.0, 175.0, 437.5, 19.0 ],
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 51.0, 149.0, 32.5, 19.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.iter",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 55.0, 82.0, 46.0, 19.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-31",
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "jit_matrix" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 3 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 4 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 5 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 6 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 7 ],
									"destination" : [ "obj-6", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stretch random translate skew rotate",
					"id" : "obj-102",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 715.0, 66.0, 172.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotNumb_z",
					"id" : "obj-89",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 719.0, 301.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 264.0, 112.0, 35.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-90",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 662.0, 301.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 229.0, 112.0, 35.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-91",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 612.0, 301.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 195.0, 112.0, 35.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-92",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"patching_rect" : [ 611.0, 273.0, 154.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter rotate/reference",
					"id" : "obj-93",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 768.0, 273.0, 153.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"dataspace/unit/native" : "xyz",
						"description" : "reference position from where the rotation is applied",
						"dataspace" : "position",
						"dataspace/unit/internal" : "xyz",
						"dataspace/unit/active" : "xyz"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "RotText_roll",
					"text" : "roll",
					"id" : "obj-88",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 271.0, 110.0, 73.0, 19.0 ],
					"presentation" : 1,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 162.0, 97.0, 38.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "RotText_pitch",
					"text" : "pitch",
					"id" : "obj-87",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 264.0, 73.0, 73.0, 19.0 ],
					"presentation" : 1,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 121.0, 97.0, 38.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "yaw",
					"id" : "obj-86",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 38.0, 73.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 87.0, 97.0, 30.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rotate:",
					"id" : "obj-85",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 239.0, 170.0, 51.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 26.0, 110.0, 52.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter rotate/active",
					"id" : "obj-77",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 811.0, 301.0, 159.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_toggle",
						"description" : "turns on/off rotation"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-78",
					"numoutlets" : 1,
					"patching_rect" : [ 776.0, 300.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 6.0, 110.0, 18.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotNumb_roll",
					"id" : "obj-79",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 785.0, 355.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 156.0, 112.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotNumb_pitch",
					"id" : "obj-80",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 728.0, 355.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 121.0, 112.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-81",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 678.0, 355.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 86.0, 112.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-82",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"patching_rect" : [ 677.0, 327.0, 154.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter rotate/angle",
					"id" : "obj-83",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 834.0, 327.0, 136.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"description" : "rotation angles yaw | pitch | roll  "
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rotation",
					"id" : "obj-84",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 842.0, 356.0, 49.0, 18.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "SkewText_z2y",
					"text" : "z->y",
					"id" : "obj-71",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 945.0, 620.0, 34.0, 19.0 ],
					"presentation" : 1,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 263.0, 55.0, 34.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "SkewText_z2x",
					"text" : "z->x",
					"id" : "obj-72",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 899.0, 621.0, 34.0, 19.0 ],
					"presentation" : 1,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 228.0, 55.0, 34.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "SkewText_y2z",
					"text" : "y->z",
					"id" : "obj-73",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 844.0, 620.0, 34.0, 19.0 ],
					"presentation" : 1,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 194.0, 55.0, 34.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y->x",
					"id" : "obj-74",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 706.0, 622.0, 35.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 124.0, 55.0, 35.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "SkewText_x2z",
					"text" : "x->z",
					"id" : "obj-75",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 771.0, 622.0, 34.0, 19.0 ],
					"presentation" : 1,
					"hidden" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 159.0, 55.0, 34.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x->y",
					"id" : "obj-76",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 659.0, 624.0, 35.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 90.0, 55.0, 35.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Skew:",
					"id" : "obj-70",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 224.0, 155.0, 51.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 26.0, 70.0, 52.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SkewNumb_z2y",
					"id" : "obj-67",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 940.0, 598.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 262.0, 70.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SkewNumb_z2x",
					"id" : "obj-68",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 887.0, 598.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 227.0, 70.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SkewNumb_y2z",
					"id" : "obj-69",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 837.0, 598.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 192.0, 70.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter skew/active",
					"id" : "obj-59",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 802.0, 544.0, 154.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_toggle",
						"description" : "turns on/off skew"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-60",
					"numoutlets" : 1,
					"patching_rect" : [ 767.0, 543.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 6.0, 71.0, 18.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-61",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 705.0, 600.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 122.0, 70.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SkewNumb_x2z",
					"id" : "obj-62",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 761.0, 600.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 157.0, 70.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-63",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 646.0, 601.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 86.0, 70.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 6",
					"id" : "obj-64",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"patching_rect" : [ 668.0, 570.0, 154.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter skew/factor",
					"id" : "obj-65",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 825.0, 570.0, 133.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"repetitions/allow" : 1,
						"description" : "list with the skew parameter: x->y | y->x | x->z | y->z | z->x | z->y",
						"name" : "skew/factor"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "skew",
					"id" : "obj-66",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 1003.0, 621.0, 40.0, 18.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-34",
					"numoutlets" : 0,
					"patching_rect" : [ 253.0, 348.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-58",
					"numoutlets" : 1,
					"patching_rect" : [ 498.0, 211.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 274.0, 39.0, 18.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Shuffle:",
					"id" : "obj-57",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 209.0, 140.0, 51.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 226.0, 38.0, 52.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Translate:",
					"id" : "obj-56",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 205.0, 90.0, 73.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 26.0, 191.0, 70.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter translate/active",
					"id" : "obj-54",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 826.0, 436.0, 173.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_toggle"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-55",
					"numoutlets" : 1,
					"patching_rect" : [ 791.0, 435.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 6.0, 191.0, 18.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter order @type msg_list @description \"order of the manilpulation processes random stretch translate\"",
					"id" : "obj-53",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 407.0, 103.0, 520.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TranslateNumb_z",
					"id" : "obj-1",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 800.0, 490.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 264.0, 188.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-21",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 743.0, 490.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 228.0, 188.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-28",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 693.0, 490.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 192.0, 188.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-45",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"patching_rect" : [ 692.0, 462.0, 154.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter translate/factor",
					"id" : "obj-46",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 849.0, 462.0, 149.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"dataspace/unit/native" : "xyz",
						"dataspace" : "position",
						"dataspace/unit/internal" : "xyz",
						"dataspace/unit/active" : "xyz"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- translation ",
					"id" : "obj-50",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 857.0, 491.0, 70.0, 18.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Random:",
					"id" : "obj-52",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 64.0, 73.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 26.0, 169.0, 54.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-51",
					"numoutlets" : 1,
					"patching_rect" : [ 503.0, 436.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 6.0, 170.0, 18.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RandomNumb_z",
					"id" : "obj-29",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 471.0, 521.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 264.0, 169.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-31",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 414.0, 521.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 228.0, 169.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-35",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 364.0, 521.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 192.0, 169.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-36",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"patching_rect" : [ 363.0, 493.0, 154.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter random/factor",
					"id" : "obj-42",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 520.0, 493.0, 144.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"range/clipmode" : "low"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter random",
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 526.0, 456.0, 133.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_symbol",
						"repetitions/allow" : 1,
						"description" : "allowed attributes x, y, z, xy,xz,yz, xyz"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter random/mode",
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 419.0, 404.0, 166.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_int",
						"description" : "random mod: 0 no random effect, 1: noise is added to the incoming position (something like drunk), 2 noise value overwrites current position completelt",
						"range/bounds" : [ 0.0, 2.0 ],
						"range/clipmode" : "both"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- random",
					"id" : "obj-48",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 528.0, 522.0, 150.0, 18.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-17",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 654.0, 33.0, 18.330078, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 106.0, 39.0, 18.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter sources/amount",
					"id" : "obj-14",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 684.0, 33.0, 154.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_int",
						"description" : "maximum number of sources in the scene",
						"name" : "sources/amount",
						"range/bounds" : [ 1.0, 32.0 ],
						"range/clipmode" : "both"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "stretchNumb_z",
					"id" : "obj-26",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 123.0, 490.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 264.0, 150.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-18",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 66.0, 490.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 228.0, 150.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-15",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 16.0, 490.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 192.0, 150.0, 36.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-9",
					"fontname" : "Arial",
					"numoutlets" : 11,
					"patching_rect" : [ 15.0, 462.0, 154.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter stretch/reference",
					"id" : "obj-5",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 172.0, 462.0, 158.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_list",
						"dataspace/unit/native" : "xyz",
						"description" : "point in space (x|y|z) to which the stretching operation is perfomed",
						"dataspace" : "position",
						"dataspace/unit/internal" : "xyz",
						"dataspace/unit/active" : "xyz"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter stretch/active",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 72.0, 436.0, 164.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_toggle",
						"description" : "activates stretching"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-10",
					"numoutlets" : 1,
					"patching_rect" : [ 37.0, 435.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 6.0, 150.0, 18.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-7",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 17.0, 409.0, 50.0, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 86.0, 150.0, 37.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stretch:",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 194.0, 43.0, 73.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 26.0, 149.0, 73.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter stretch/factor",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 71.0, 410.0, 163.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- streching ",
					"id" : "obj-30",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 491.0, 150.0, 18.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message shuffle @description \"shuffles position of sources around\"",
					"id" : "obj-27",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 522.0, 211.0, 333.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-12",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 492.0, 382.0, 18.330078, 18.0 ],
					"triangle" : 0,
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 198.0, 39.0, 18.0, 18.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices[2]",
					"text" : "jcom.parameter dimensions",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 524.0, 381.0, 151.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frozen_object_attributes" : 					{
						"type" : "msg_int",
						"range/bounds" : [ 2.0, 3.0 ],
						"range/clipmode" : "both"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimensions:",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 23.0, 73.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 129.0, 38.0, 73.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of sources:",
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 24.0, 110.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 39.0, 110.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jcom.scene3DInstance 32",
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 413.0, 32.0, 173.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter listen @type msg_toggle @description \"listen to input messages or not\"",
					"id" : "obj-20",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 474.0, 10.0, 399.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "Listen On/Off",
					"rounded" : 20.0,
					"id" : "obj-19",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"texton" : "L",
					"patching_rect" : [ 413.0, 10.0, 59.0, 16.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"fontsize" : 10.0,
					"text" : "L",
					"presentation_rect" : [ 266.0, 2.0, 15.0, 15.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pcontrol",
					"id" : "obj-13",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 339.0, 54.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
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
									"text" : "pcontrol",
									"id" : "obj-10",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 119.0, 46.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t open",
									"id" : "obj-9",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 38.0, 18.0 ],
									"outlettype" : [ "open" ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-11",
									"numoutlets" : 1,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-12",
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 197.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-9", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p inspector",
					"id" : "obj-8",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 359.0, 59.0, 18.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
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
									"id" : "obj-1",
									"numoutlets" : 1,
									"patching_rect" : [ 169.0, 147.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"id" : "obj-6",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 105.0, 317.0, 128.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- rotation of soundfield\n- add | delete sound sources\n- shuffling\n- mirroring \n- individual position",
					"linecount" : 5,
					"id" : "obj-2",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 473.0, 315.0, 159.0, 64.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 38.0, 216.0, 251.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 105.0, 295.0, 56.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 228.0, 236.0, 40.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.scene3D",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 259.0, 311.0, 107.0, 19.0 ],
					"outlettype" : [ "jit_matrix" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.scene3D @description \"spatial manipulation for 3D-audio scenes\"",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 3.0, 266.0, 420.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-38",
					"numoutlets" : 1,
					"patching_rect" : [ 3.0, 216.0, 22.0, 22.0 ],
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-39",
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 306.0, 22.0, 22.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 63.0, 236.0, 159.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-16",
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-110", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 10 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-82", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 1 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 2 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-82", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-82", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-64", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-64", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-64", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 5 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 4 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 3 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 10 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-64", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-45", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 10 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-45", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 10 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-9", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 10 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-36", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-92", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-92", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 2 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 1 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 10 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-92", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 237.5, 259.0, 12.5, 259.0 ]
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
					"midpoints" : [ 72.5, 259.0, 12.5, 259.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 259.0, 12.5, 259.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 1 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 668.5, 144.0, 393.0, 144.0, 393.0, 99.0, 416.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 1 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-118", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-120", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-104", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-104", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 2 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 1 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 10 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-104", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-64", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 2 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-64", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
