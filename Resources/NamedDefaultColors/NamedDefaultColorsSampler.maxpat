{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 2.0, 47.0, 835.0, 458.0 ],
		"bglocked" : 0,
		"defrect" : [ 2.0, 47.0, 835.0, 458.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "textedit",
					"hint" : "textedit",
					"annotation" : "textedit",
					"text" : "textedit",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-6",
					"outlettype" : [ "", "int", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 625.0, 185.0, 90.0, 40.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"hint" : "textedit",
					"annotation" : "textedit",
					"text" : "textedit",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-2",
					"outlettype" : [ "", "int", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 375.0, 180.0, 90.0, 40.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p TheseObjectsDoNotSupportDefaultSettings",
					"numoutlets" : 0,
					"id" : "obj-90",
					"fontname" : "Verdana",
					"patching_rect" : [ 25.0, 420.0, 236.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 546.0, 147.0, 820.0, 626.0 ],
						"bglocked" : 0,
						"defrect" : [ 546.0, 147.0, 820.0, 626.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "zplane~",
									"numoutlets" : 4,
									"id" : "obj-89",
									"outlettype" : [ "list", "list", "list", "list" ],
									"patching_rect" : [ 230.0, 20.0, 256.0, 256.0 ],
									"numinlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"numoutlets" : 6,
									"id" : "obj-88",
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"buffername" : "",
									"patching_rect" : [ 230.0, 285.0, 256.0, 64.0 ],
									"numinlets" : 5,
									"textcolor" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"numoutlets" : 3,
									"id" : "obj-87",
									"outlettype" : [ "", "", "int" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 495.0, 295.0, 100.0, 20.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"numoutlets" : 0,
									"id" : "obj-86",
									"patching_rect" : [ 230.0, 370.0, 300.0, 100.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"numoutlets" : 0,
									"id" : "obj-85",
									"patching_rect" : [ 15.0, 295.0, 160.0, 100.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "playbar",
									"numoutlets" : 2,
									"id" : "obj-84",
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 15.0, 575.0, 320.0, 16.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "nslider",
									"numoutlets" : 2,
									"id" : "obj-83",
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 490.0, 20.0, 75.0, 198.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numoutlets" : 2,
									"id" : "obj-82",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 525.0, 510.0, 22.0, 97.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-81",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 495.0, 235.0, 80.0, 13.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "matrixctrl",
									"numoutlets" : 2,
									"id" : "obj-80",
									"outlettype" : [ "list", "list" ],
									"patching_rect" : [ 15.0, 405.0, 130.0, 66.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "levelmeter~",
									"numoutlets" : 1,
									"id" : "obj-78",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 550.0, 370.0, 128.0, 64.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "kslider",
									"numoutlets" : 2,
									"id" : "obj-77",
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 15.0, 505.0, 336.0, 53.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.fpsgui",
									"numoutlets" : 2,
									"id" : "obj-25",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 410.0, 510.0, 80.0, 35.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"numoutlets" : 4,
									"id" : "obj-17",
									"outlettype" : [ "list", "", "", "" ],
									"fontname" : "Verdana",
									"patching_rect" : [ 585.0, 20.0, 200.0, 200.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "incdec",
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 365.0, 505.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"numoutlets" : 2,
									"id" : "obj-13",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 745.0, 250.0, 39.0, 32.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch",
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "" ],
									"patching_rect" : [ 700.0, 250.0, 41.0, 32.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "function",
									"numoutlets" : 4,
									"id" : "obj-7",
									"outlettype" : [ "float", "", "", "bang" ],
									"patching_rect" : [ 15.0, 180.0, 160.0, 100.0 ],
									"numinlets" : 1,
									"addpoints" : [ 0.0, 0.0, 0, 168.918915, 0.96, 0, 432.432434, 0.68, 0, 689.189209, 0.186667, 0, 966.216187, 0.626667, 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "filtergraph~",
									"numoutlets" : 7,
									"id" : "obj-6",
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"patching_rect" : [ 15.0, 70.0, 160.0, 100.0 ],
									"numinlets" : 8,
									"textcolor" : [  ],
									"nfilters" : 1,
									"setfilter" : [ 0, 5, 1, 0, 0, 86.960327, 0.1131, 0.057544, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "preset",
									"numoutlets" : 4,
									"id" : "obj-2",
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"patching_rect" : [ 15.0, 20.0, 100.0, 40.0 ],
									"numinlets" : 1
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On its own",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-76",
					"fontname" : "Verdana",
					"patching_rect" : [ 675.0, 15.0, 70.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On top of panel",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-75",
					"fontname" : "Verdana",
					"patching_rect" : [ 415.0, 15.0, 96.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On top of jcom.ui",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-74",
					"fontname" : "Verdana",
					"patching_rect" : [ 120.0, 15.0, 107.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panel",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-53",
					"fontname" : "Verdana",
					"patching_rect" : [ 645.0, 295.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "umenu",
					"annotation" : "umenu",
					"numoutlets" : 3,
					"id" : "obj-54",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"types" : [  ],
					"patching_rect" : [ 680.0, 105.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"items" : "umenu",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "toggle",
					"annotation" : "toggle",
					"numoutlets" : 1,
					"id" : "obj-55",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 630.0, 105.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "slider",
					"annotation" : "slider",
					"numoutlets" : 1,
					"id" : "obj-57",
					"outlettype" : [ "" ],
					"patching_rect" : [ 720.0, 185.0, 20.0, 140.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"hint" : "rslider",
					"annotation" : "rslider",
					"numoutlets" : 2,
					"id" : "obj-58",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 745.0, 185.0, 20.0, 140.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"id" : "obj-59",
					"patching_rect" : [ 625.0, 285.0, 90.0, 40.0 ],
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"hint" : "number~",
					"annotation" : "number~",
					"sig" : 0.0,
					"numoutlets" : 2,
					"mode" : 2,
					"id" : "obj-60",
					"outlettype" : [ "signal", "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 735.0, 155.0, 56.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p newobject",
					"numoutlets" : 1,
					"id" : "obj-61",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 685.0, 130.0, 104.0, 19.0 ],
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
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-2",
									"patching_rect" : [ 100.0, 155.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 45.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message",
					"numoutlets" : 1,
					"id" : "obj-62",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 625.0, 130.0, 55.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"hint" : "gain~",
					"annotation" : "gain~",
					"numoutlets" : 2,
					"id" : "obj-63",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 770.0, 185.0, 20.0, 140.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "number",
					"annotation" : "number",
					"numoutlets" : 2,
					"id" : "obj-64",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 680.0, 155.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "flonum",
					"annotation" : "flonum",
					"numoutlets" : 2,
					"id" : "obj-65",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 625.0, 155.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"hint" : "ezdac~",
					"annotation" : "ezdac~",
					"numoutlets" : 0,
					"id" : "obj-66",
					"patching_rect" : [ 740.0, 335.0, 55.0, 55.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"hint" : "ezadc~",
					"annotation" : "ezadc~",
					"numoutlets" : 2,
					"id" : "obj-67",
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 685.0, 335.0, 55.0, 55.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dropfile",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-68",
					"fontname" : "Verdana",
					"patching_rect" : [ 645.0, 245.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numoutlets" : 2,
					"id" : "obj-69",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"patching_rect" : [ 625.0, 235.0, 90.0, 40.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "dial",
					"annotation" : "dial",
					"numoutlets" : 1,
					"id" : "obj-70",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 625.0, 335.0, 55.0, 55.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comment",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-71",
					"fontname" : "Verdana",
					"patching_rect" : [ 630.0, 80.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "button",
					"annotation" : "button",
					"numoutlets" : 1,
					"id" : "obj-72",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 655.0, 105.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panel",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"patching_rect" : [ 395.0, 290.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "umenu",
					"annotation" : "umenu",
					"numoutlets" : 3,
					"id" : "obj-33",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"types" : [  ],
					"patching_rect" : [ 430.0, 100.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"items" : "umenu",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "toggle",
					"annotation" : "toggle",
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 380.0, 100.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "slider",
					"annotation" : "slider",
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 180.0, 20.0, 140.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"hint" : "rslider",
					"annotation" : "rslider",
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 495.0, 180.0, 20.0, 140.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"id" : "obj-38",
					"patching_rect" : [ 375.0, 280.0, 90.0, 40.0 ],
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"hint" : "number~",
					"annotation" : "number~",
					"sig" : 0.0,
					"numoutlets" : 2,
					"mode" : 1,
					"id" : "obj-39",
					"outlettype" : [ "signal", "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 485.0, 150.0, 56.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p newobject",
					"numoutlets" : 1,
					"id" : "obj-40",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 435.0, 125.0, 104.0, 19.0 ],
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
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-2",
									"patching_rect" : [ 115.0, 170.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 115.0, 60.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message",
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 375.0, 125.0, 55.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"hint" : "gain~",
					"annotation" : "gain~",
					"numoutlets" : 2,
					"id" : "obj-42",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 520.0, 180.0, 20.0, 140.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "number",
					"annotation" : "number",
					"numoutlets" : 2,
					"id" : "obj-43",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 430.0, 150.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "flonum",
					"annotation" : "flonum",
					"numoutlets" : 2,
					"id" : "obj-44",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 375.0, 150.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"hint" : "ezdac~",
					"annotation" : "ezdac~",
					"numoutlets" : 0,
					"id" : "obj-45",
					"patching_rect" : [ 490.0, 330.0, 55.0, 55.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"hint" : "ezadc~",
					"annotation" : "ezadc~",
					"numoutlets" : 2,
					"id" : "obj-46",
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 435.0, 330.0, 55.0, 55.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dropfile",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-47",
					"fontname" : "Verdana",
					"patching_rect" : [ 395.0, 240.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numoutlets" : 2,
					"id" : "obj-48",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"patching_rect" : [ 375.0, 230.0, 90.0, 40.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "dial",
					"annotation" : "dial",
					"numoutlets" : 1,
					"id" : "obj-49",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 375.0, 330.0, 55.0, 55.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comment",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-50",
					"fontname" : "Verdana",
					"patching_rect" : [ 380.0, 75.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "button",
					"annotation" : "button",
					"numoutlets" : 1,
					"id" : "obj-51",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 405.0, 100.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panel",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"patching_rect" : [ 90.0, 285.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "umenu",
					"annotation" : "umenu",
					"numoutlets" : 3,
					"id" : "obj-27",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"types" : [  ],
					"patching_rect" : [ 125.0, 95.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"items" : [ "umenu", ",", "umenu", ",", "umenu" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "toggle",
					"annotation" : "toggle",
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 75.0, 95.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"hint" : "textedit",
					"annotation" : "textedit",
					"text" : "textedit",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-24",
					"outlettype" : [ "", "int", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 175.0, 90.0, 40.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "slider",
					"annotation" : "slider",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.0, 175.0, 20.0, 140.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"hint" : "rslider",
					"annotation" : "rslider",
					"numoutlets" : 2,
					"id" : "obj-22",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 190.0, 175.0, 20.0, 140.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"id" : "obj-21",
					"patching_rect" : [ 70.0, 275.0, 90.0, 40.0 ],
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"hint" : "number~",
					"annotation" : "number~",
					"sig" : 0.0,
					"numoutlets" : 2,
					"mode" : 2,
					"id" : "obj-20",
					"outlettype" : [ "signal", "float" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 180.0, 145.0, 56.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p newobject",
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 130.0, 120.0, 104.0, 19.0 ],
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
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-2",
									"patching_rect" : [ 115.0, 170.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 115.0, 60.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message",
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 120.0, 55.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"hint" : "gain~",
					"annotation" : "gain~",
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 215.0, 175.0, 20.0, 140.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "number",
					"annotation" : "number",
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 125.0, 145.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "flonum",
					"annotation" : "flonum",
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 70.0, 145.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"hint" : "ezdac~",
					"annotation" : "ezdac~",
					"numoutlets" : 0,
					"id" : "obj-10",
					"patching_rect" : [ 185.0, 325.0, 55.0, 55.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"hint" : "ezadc~",
					"annotation" : "ezadc~",
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 130.0, 325.0, 55.0, 55.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dropfile",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"patching_rect" : [ 90.0, 235.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"patching_rect" : [ 70.0, 225.0, 90.0, 40.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "dial",
					"annotation" : "dial",
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 70.0, 325.0, 55.0, 55.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comment",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"patching_rect" : [ 75.0, 70.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "button",
					"annotation" : "button",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 100.0, 95.0, 20.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"hint" : "jcom.ui",
					"annotation" : "jcom.ui",
					"text" : "/Jamoma",
					"has_freeze" : 1,
					"numoutlets" : 1,
					"has_panel" : 1,
					"id" : "obj-28",
					"has_preview" : 1,
					"outlettype" : [ "" ],
					"has_mix" : 1,
					"has_gain" : 1,
					"has_bypass" : 1,
					"patching_rect" : [ 25.0, 40.0, 300.0, 350.0 ],
					"has_meters" : 1,
					"numinlets" : 1,
					"has_mute" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"id" : "obj-73",
					"patching_rect" : [ 350.0, 40.0, 225.0, 350.0 ],
					"rounded" : 15,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [  ]
	}

}
