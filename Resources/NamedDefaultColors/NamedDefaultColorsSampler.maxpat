{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 2.0, 47.0, 846.0, 562.0 ],
		"bglocked" : 0,
		"defrect" : [ 2.0, 47.0, 846.0, 562.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "jcom.textslider",
					"text" : "textslider",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 623.0, 395.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 625.0, 395.0, 107.0, 19.0 ],
					"id" : "obj-13",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.textslider",
					"text" : "textslider",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 373.0, 395.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 395.0, 107.0, 19.0 ],
					"id" : "obj-11",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.textslider",
					"text" : "textslider",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 390.0, 107.0, 19.0 ],
					"id" : "obj-7",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"hint" : "textedit",
					"annotation" : "textedit",
					"text" : "textedit",
					"outlettype" : [ "", "int", "", "" ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 625.0, 185.0, 90.0, 40.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"hint" : "textedit",
					"annotation" : "textedit",
					"text" : "textedit",
					"outlettype" : [ "", "int", "", "" ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 180.0, 90.0, 40.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p TheseObjectsDoNotSupportDefaultSettings",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 20.0, 500.0, 236.0, 19.0 ],
					"id" : "obj-90",
					"fontname" : "Verdana",
					"numoutlets" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "zplane~",
									"outlettype" : [ "list", "list", "list", "list" ],
									"numinlets" : 5,
									"patching_rect" : [ 230.0, 20.0, 256.0, 256.0 ],
									"id" : "obj-89",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"buffername" : "",
									"textcolor" : [  ],
									"numinlets" : 5,
									"patching_rect" : [ 230.0, 285.0, 256.0, 64.0 ],
									"id" : "obj-88",
									"numoutlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"outlettype" : [ "", "", "int" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 495.0, 295.0, 100.0, 20.0 ],
									"id" : "obj-87",
									"fontname" : "Verdana",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"numinlets" : 2,
									"patching_rect" : [ 230.0, 370.0, 300.0, 100.0 ],
									"id" : "obj-86",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"numinlets" : 2,
									"patching_rect" : [ 15.0, 295.0, 160.0, 100.0 ],
									"id" : "obj-85",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "playbar",
									"outlettype" : [ "", "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 575.0, 320.0, 16.0 ],
									"id" : "obj-84",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "nslider",
									"outlettype" : [ "int", "int" ],
									"numinlets" : 2,
									"patching_rect" : [ 490.0, 20.0, 75.0, 198.0 ],
									"id" : "obj-83",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"outlettype" : [ "", "" ],
									"numinlets" : 1,
									"patching_rect" : [ 525.0, 510.0, 22.0, 97.0 ],
									"id" : "obj-82",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"outlettype" : [ "float" ],
									"numinlets" : 1,
									"patching_rect" : [ 495.0, 235.0, 80.0, 13.0 ],
									"id" : "obj-81",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "matrixctrl",
									"outlettype" : [ "list", "list" ],
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 405.0, 130.0, 66.0 ],
									"id" : "obj-80",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "levelmeter~",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 550.0, 370.0, 128.0, 64.0 ],
									"id" : "obj-78",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "kslider",
									"outlettype" : [ "int", "int" ],
									"numinlets" : 2,
									"patching_rect" : [ 15.0, 505.0, 336.0, 53.0 ],
									"id" : "obj-77",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.fpsgui",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 410.0, 510.0, 80.0, 35.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"outlettype" : [ "list", "", "", "" ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 585.0, 20.0, 200.0, 200.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "incdec",
									"outlettype" : [ "float" ],
									"numinlets" : 1,
									"patching_rect" : [ 365.0, 505.0, 20.0, 20.0 ],
									"id" : "obj-14",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"outlettype" : [ "", "" ],
									"numinlets" : 2,
									"patching_rect" : [ 745.0, 250.0, 39.0, 32.0 ],
									"id" : "obj-13",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch",
									"outlettype" : [ "" ],
									"numinlets" : 3,
									"patching_rect" : [ 700.0, 250.0, 41.0, 32.0 ],
									"id" : "obj-11",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "function",
									"outlettype" : [ "float", "", "", "bang" ],
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 180.0, 160.0, 100.0 ],
									"id" : "obj-7",
									"numoutlets" : 4,
									"addpoints" : [ 0.0, 0.0, 0, 168.918915, 0.96, 0, 432.432434, 0.68, 0, 689.189209, 0.186667, 0, 966.216187, 0.626667, 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "filtergraph~",
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"numinlets" : 8,
									"patching_rect" : [ 15.0, 70.0, 160.0, 100.0 ],
									"id" : "obj-6",
									"numoutlets" : 7,
									"nfilters" : 1,
									"setfilter" : [ 0, 5, 1, 0, 0, 86.960327, 0.1131, 0.057544, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "preset",
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 20.0, 100.0, 40.0 ],
									"id" : "obj-2",
									"numoutlets" : 4
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On its own",
					"fontsize" : 11.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 675.0, 15.0, 70.0, 20.0 ],
					"id" : "obj-76",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On top of panel",
					"fontsize" : 11.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 415.0, 15.0, 96.0, 20.0 ],
					"id" : "obj-75",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "On top of jcom.ui",
					"fontsize" : 11.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 15.0, 107.0, 20.0 ],
					"id" : "obj-74",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panel",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 645.0, 295.0, 48.0, 19.0 ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "umenu",
					"annotation" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"items" : "umenu",
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 680.0, 105.0, 110.0, 19.0 ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "toggle",
					"annotation" : "toggle",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 630.0, 105.0, 20.0, 20.0 ],
					"id" : "obj-55",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "slider",
					"annotation" : "slider",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"patching_rect" : [ 720.0, 185.0, 20.0, 140.0 ],
					"id" : "obj-57",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"hint" : "rslider",
					"annotation" : "rslider",
					"outlettype" : [ "", "" ],
					"numinlets" : 2,
					"patching_rect" : [ 745.0, 185.0, 20.0, 140.0 ],
					"id" : "obj-58",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"border" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"patching_rect" : [ 625.0, 285.0, 90.0, 40.0 ],
					"id" : "obj-59",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"hint" : "number~",
					"annotation" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 10.0,
					"mode" : 2,
					"sig" : 0.0,
					"numinlets" : 2,
					"patching_rect" : [ 735.0, 155.0, 56.0, 19.0 ],
					"id" : "obj-60",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p newobject",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 685.0, 130.0, 104.0, 19.0 ],
					"id" : "obj-61",
					"fontname" : "Verdana",
					"numoutlets" : 1,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 100.0, 155.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 100.0, 45.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 625.0, 130.0, 55.0, 17.0 ],
					"id" : "obj-62",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"hint" : "gain~",
					"annotation" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"numinlets" : 2,
					"patching_rect" : [ 770.0, 185.0, 20.0, 140.0 ],
					"id" : "obj-63",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "number",
					"annotation" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 680.0, 155.0, 50.0, 19.0 ],
					"id" : "obj-64",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "flonum",
					"annotation" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 625.0, 155.0, 50.0, 19.0 ],
					"id" : "obj-65",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"hint" : "ezdac~",
					"annotation" : "ezdac~",
					"numinlets" : 2,
					"patching_rect" : [ 740.0, 335.0, 55.0, 55.0 ],
					"id" : "obj-66",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"hint" : "ezadc~",
					"annotation" : "ezadc~",
					"outlettype" : [ "signal", "signal" ],
					"numinlets" : 1,
					"patching_rect" : [ 685.0, 335.0, 55.0, 55.0 ],
					"id" : "obj-67",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dropfile",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 645.0, 245.0, 48.0, 19.0 ],
					"id" : "obj-68",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 625.0, 235.0, 90.0, 40.0 ],
					"id" : "obj-69",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "dial",
					"annotation" : "dial",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"patching_rect" : [ 625.0, 335.0, 55.0, 55.0 ],
					"id" : "obj-70",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comment",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 630.0, 80.0, 150.0, 19.0 ],
					"id" : "obj-71",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "button",
					"annotation" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 655.0, 105.0, 20.0, 20.0 ],
					"id" : "obj-72",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panel",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 395.0, 290.0, 48.0, 19.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "umenu",
					"annotation" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"items" : "umenu",
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 430.0, 100.0, 110.0, 19.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "toggle",
					"annotation" : "toggle",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 380.0, 100.0, 20.0, 20.0 ],
					"id" : "obj-34",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "slider",
					"annotation" : "slider",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 180.0, 20.0, 140.0 ],
					"id" : "obj-36",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"hint" : "rslider",
					"annotation" : "rslider",
					"outlettype" : [ "", "" ],
					"numinlets" : 2,
					"patching_rect" : [ 495.0, 180.0, 20.0, 140.0 ],
					"id" : "obj-37",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"border" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 280.0, 90.0, 40.0 ],
					"id" : "obj-38",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"hint" : "number~",
					"annotation" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 10.0,
					"mode" : 1,
					"sig" : 0.0,
					"numinlets" : 2,
					"patching_rect" : [ 485.0, 150.0, 56.0, 19.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p newobject",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 435.0, 125.0, 104.0, 19.0 ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numoutlets" : 1,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 170.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 115.0, 60.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 375.0, 125.0, 55.0, 17.0 ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"hint" : "gain~",
					"annotation" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"numinlets" : 2,
					"patching_rect" : [ 520.0, 180.0, 20.0, 140.0 ],
					"id" : "obj-42",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "number",
					"annotation" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 430.0, 150.0, 50.0, 19.0 ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "flonum",
					"annotation" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 150.0, 50.0, 19.0 ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"hint" : "ezdac~",
					"annotation" : "ezdac~",
					"numinlets" : 2,
					"patching_rect" : [ 490.0, 330.0, 55.0, 55.0 ],
					"id" : "obj-45",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"hint" : "ezadc~",
					"annotation" : "ezadc~",
					"outlettype" : [ "signal", "signal" ],
					"numinlets" : 1,
					"patching_rect" : [ 435.0, 330.0, 55.0, 55.0 ],
					"id" : "obj-46",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dropfile",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 395.0, 240.0, 48.0, 19.0 ],
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 230.0, 90.0, 40.0 ],
					"id" : "obj-48",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "dial",
					"annotation" : "dial",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 330.0, 55.0, 55.0 ],
					"id" : "obj-49",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comment",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 380.0, 75.0, 150.0, 19.0 ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "button",
					"annotation" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 405.0, 100.0, 20.0, 20.0 ],
					"id" : "obj-51",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "panel",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 90.0, 285.0, 48.0, 19.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "umenu",
					"annotation" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"items" : [ "umenu", ",", "umenu", ",", "umenu" ],
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 125.0, 95.0, 110.0, 19.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "toggle",
					"annotation" : "toggle",
					"outlettype" : [ "int" ],
					"numinlets" : 1,
					"patching_rect" : [ 75.0, 95.0, 20.0, 20.0 ],
					"id" : "obj-26",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"hint" : "textedit",
					"annotation" : "textedit",
					"text" : "textedit",
					"outlettype" : [ "", "int", "", "" ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 175.0, 90.0, 40.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "slider",
					"annotation" : "slider",
					"outlettype" : [ "" ],
					"numinlets" : 1,
					"patching_rect" : [ 165.0, 175.0, 20.0, 140.0 ],
					"id" : "obj-23",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"hint" : "rslider",
					"annotation" : "rslider",
					"outlettype" : [ "", "" ],
					"numinlets" : 2,
					"patching_rect" : [ 190.0, 175.0, 20.0, 140.0 ],
					"id" : "obj-22",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"border" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 275.0, 90.0, 40.0 ],
					"id" : "obj-21",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"hint" : "number~",
					"annotation" : "number~",
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 10.0,
					"mode" : 2,
					"sig" : 0.0,
					"numinlets" : 2,
					"patching_rect" : [ 180.0, 145.0, 56.0, 19.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p newobject",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 120.0, 104.0, 19.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 1,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 170.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 115.0, 60.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 70.0, 120.0, 55.0, 17.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"hint" : "gain~",
					"annotation" : "gain~",
					"outlettype" : [ "signal", "int" ],
					"numinlets" : 2,
					"patching_rect" : [ 215.0, 175.0, 20.0, 140.0 ],
					"id" : "obj-16",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "number",
					"annotation" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 125.0, 145.0, 50.0, 19.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "flonum",
					"annotation" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 145.0, 50.0, 19.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"hint" : "ezdac~",
					"annotation" : "ezdac~",
					"numinlets" : 2,
					"patching_rect" : [ 185.0, 325.0, 55.0, 55.0 ],
					"id" : "obj-10",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"hint" : "ezadc~",
					"annotation" : "ezadc~",
					"outlettype" : [ "signal", "signal" ],
					"numinlets" : 1,
					"patching_rect" : [ 130.0, 325.0, 55.0, 55.0 ],
					"id" : "obj-9",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dropfile",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 90.0, 235.0, 48.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 225.0, 90.0, 40.0 ],
					"id" : "obj-5",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"hint" : "dial",
					"annotation" : "dial",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 325.0, 55.0, 55.0 ],
					"id" : "obj-4",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Comment",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 75.0, 70.0, 150.0, 19.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "button",
					"annotation" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 95.0, 20.0, 20.0 ],
					"id" : "obj-1",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"hint" : "jcom.ui",
					"annotation" : "jcom.ui",
					"text" : "/Jamoma",
					"outlettype" : [ "" ],
					"has_preview" : 1,
					"has_panel" : 1,
					"has_bypass" : 1,
					"has_meters" : 1,
					"has_gain" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 40.0, 300.0, 385.0 ],
					"has_freeze" : 1,
					"has_mix" : 1,
					"id" : "obj-28",
					"numoutlets" : 1,
					"has_mute" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "panel",
					"annotation" : "panel",
					"border" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"patching_rect" : [ 350.0, 40.0, 225.0, 385.0 ],
					"id" : "obj-73",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [  ]
	}

}
