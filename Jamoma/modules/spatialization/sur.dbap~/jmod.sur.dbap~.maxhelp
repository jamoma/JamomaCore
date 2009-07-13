{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 31.0, 44.0, 780.0, 647.0 ],
		"bglocked" : 0,
		"defrect" : [ 31.0, 44.0, 780.0, 647.0 ],
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
					"maxclass" : "newobj",
					"text" : "loadmess set 100",
					"patching_rect" : [ 540.0, 325.0, 107.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"hidden" : 1,
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 1",
					"patching_rect" : [ 540.0, 430.0, 93.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"hidden" : 1,
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 540.0, 455.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toDBAP",
					"patching_rect" : [ 540.0, 505.0, 61.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.1/active $1",
					"patching_rect" : [ 540.0, 480.0, 118.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toDBAP",
					"patching_rect" : [ 540.0, 400.0, 61.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"patching_rect" : [ 540.0, 350.0, 105.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.1/gain $1",
					"patching_rect" : [ 540.0, 375.0, 109.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p source_weights_speakers",
					"patching_rect" : [ 540.0, 295.0, 163.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 603.0, 44.0, 764.0, 352.0 ],
						"bglocked" : 0,
						"defrect" : [ 603.0, 44.0, 764.0, 352.0 ],
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
									"maxclass" : "newobj",
									"text" : "s toDBAP",
									"patching_rect" : [ 650.0, 280.0, 61.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To calculate the dbap with all the speakers (default)",
									"linecount" : 2,
									"patching_rect" : [ 15.0, 21.0, 237.0, 34.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 254.0, 198.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"mouseup" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/source.1/weight 0.1 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1.",
									"patching_rect" : [ 255.0, 26.0, 359.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To calculate the dbap with all the speakers of the upper room",
									"linecount" : 2,
									"patching_rect" : [ 16.0, 88.0, 237.0, 34.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To calculate the dbap with all the speakers of the room on the right",
									"linecount" : 2,
									"patching_rect" : [ 16.0, 150.0, 237.0, 34.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/source.1/weight 1. 1. 1. 1. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
									"patching_rect" : [ 255.0, 95.0, 356.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-49",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/source.1/weight 0. 0. 0. 0. 0. 1. 0.1 1. 1. 1. 0. 0. 0. 0. 0. 0.",
									"patching_rect" : [ 255.0, 157.0, 352.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To calculate the dbap with all the speakers of the room on the left",
									"linecount" : 2,
									"patching_rect" : [ 15.0, 217.0, 237.0, 34.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/source.1/weight 0. 0. 0. 0. $1 0. 0. 1. 1. 0.2 1. 1. 0. 0. 0. 0.",
									"patching_rect" : [ 255.0, 225.0, 355.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 264.5, 51.5, 659.5, 51.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 264.5, 120.0, 659.5, 120.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 264.5, 184.0, 659.5, 184.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 264.5, 261.0, 659.5, 261.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 40.0, 90.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"name" : "jmod.control.maxpat",
					"args" : [ "/control" ],
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.1/position 6.3 6.2",
					"patching_rect" : [ 115.0, 430.0, 182.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 365.0, 205.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.1/blur $1",
					"patching_rect" : [ 365.0, 240.0, 107.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/info",
					"patching_rect" : [ 370.0, 280.0, 36.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toDBAP",
					"patching_rect" : [ 450.0, 285.0, 61.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "16",
					"patching_rect" : [ 485.0, 595.0, 24.0, 20.0 ],
					"id" : "obj-71",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"patching_rect" : [ 485.0, 370.0, 19.0, 20.0 ],
					"id" : "obj-70",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 600.0, 100.0, 12.0 ],
					"id" : "obj-68",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 585.0, 100.0, 12.0 ],
					"id" : "obj-67",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 570.0, 100.0, 12.0 ],
					"id" : "obj-66",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 555.0, 100.0, 12.0 ],
					"id" : "obj-65",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 540.0, 100.0, 12.0 ],
					"id" : "obj-64",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 525.0, 100.0, 12.0 ],
					"id" : "obj-63",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 510.0, 100.0, 12.0 ],
					"id" : "obj-62",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 495.0, 100.0, 12.0 ],
					"id" : "obj-61",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 480.0, 100.0, 12.0 ],
					"id" : "obj-60",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 465.0, 100.0, 12.0 ],
					"id" : "obj-59",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 450.0, 100.0, 12.0 ],
					"id" : "obj-58",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 435.0, 100.0, 12.0 ],
					"id" : "obj-57",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 420.0, 100.0, 12.0 ],
					"id" : "obj-56",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 405.0, 100.0, 12.0 ],
					"id" : "obj-54",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 390.0, 100.0, 12.0 ],
					"id" : "obj-52",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 380.0, 375.0, 100.0, 12.0 ],
					"id" : "obj-51",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 40.0, 540.0, 300.0, 70.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-49",
					"name" : "jmod.sur.multi.out~.maxpat",
					"args" : [ "/multiout~" ],
					"numinlets" : 2,
					"presentation_rect" : [ 775.0, 463.0, 300.0, 70.0 ],
					"numoutlets" : 33
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r toDBAP",
					"patching_rect" : [ 40.0, 430.0, 60.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 40.0, 460.0, 300.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-47",
					"name" : "jmod.sur.dbap~.maxpat",
					"args" : [ "/dbap~" ],
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 40.0, 340.0, 300.0, 70.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-45",
					"name" : "jmod.sur.multi.in~.maxpat",
					"args" : [ "/multiin~" ],
					"numinlets" : 33,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"patching_rect" : [ 40.0, 180.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-44",
					"name" : "jmod.input~.maxpat",
					"args" : [ "/input~" ],
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/source.1/position 11.1 5.8",
					"patching_rect" : [ 550.0, 245.0, 151.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p setup",
					"patching_rect" : [ 435.0, 25.0, 50.0, 19.0 ],
					"outlettype" : [ "", "", "bang" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 644.0, 201.0, 556.0, 582.0 ],
						"bglocked" : 0,
						"defrect" : [ 644.0, 201.0, 556.0, 582.0 ],
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
									"patching_rect" : [ 105.0, 520.0, 25.0, 25.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"patching_rect" : [ 105.0, 230.0, 53.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/audio/gain 87., /source pink",
									"linecount" : 2,
									"patching_rect" : [ 105.0, 260.0, 93.0, 29.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 360.0, 105.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /dbap~",
									"patching_rect" : [ 215.0, 90.0, 77.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route jmod.sur.dbap~",
									"patching_rect" : [ 215.0, 65.0, 119.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.receive notifications",
									"patching_rect" : [ 215.0, 15.0, 188.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route module.initialized",
									"patching_rect" : [ 215.0, 40.0, 127.0, 18.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/numSpeakers 16, /numSources 1, /audio/gain 100",
									"linecount" : 3,
									"patching_rect" : [ 410.0, 255.0, 107.0, 41.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"patching_rect" : [ 215.0, 225.0, 53.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"patching_rect" : [ 215.0, 200.0, 53.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"patching_rect" : [ 215.0, 175.0, 89.0, 19.0 ],
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 560.0, 520.0, 25.0, 25.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"patching_rect" : [ 215.0, 140.0, 34.0, 19.0 ],
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/speaker.1/position 0.5 8.5, /speaker.2/position 0.5 14.5, /speaker.3/position 12.5 14.5, /speaker.4/position 12.5 8.5, /speaker.5/position 17. 6., /speaker.6/position 21.5 4.5, /speaker.7/position 21.5 0.5, /speaker.8/position 16.5 0.5, /speaker.9/position 11.5 0.5, /speaker.10/position 11.5 4.5, /speaker.11/position 10.5 4.5, /speaker.12/position 10.5 0.5, /speaker.13/position 5.5 0.5, /speaker.14/position 0.5 0.5, /speaker.15/position 0.5 4.5, /speaker.16/position 5. 7.5",
									"linecount" : 16,
									"patching_rect" : [ 215.0, 255.0, 168.0, 199.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"patching_rect" : [ 215.0, 115.0, 51.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 215.0, 520.0, 25.0, 25.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 239.5, 166.0, 569.5, 166.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 419.5, 485.0, 224.5, 485.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.sur.dbap~",
					"patching_rect" : [ 15.0, 16.0, 164.0, 28.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "distance based amplitude panning",
					"patching_rect" : [ 15.0, 41.0, 352.0, 19.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 10.0, 11.0, 400.0, 50.0 ],
					"id" : "obj-24",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scaler",
					"patching_rect" : [ 485.0, 245.0, 52.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 39.0, 55.0, 220.0, 308.0 ],
						"bglocked" : 0,
						"defrect" : [ 39.0, 55.0, 220.0, 308.0 ],
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
									"maxclass" : "newobj",
									"text" : "prepend /source.1/position",
									"patching_rect" : [ 59.0, 181.0, 147.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0.",
									"patching_rect" : [ 59.0, 153.0, 61.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 15.",
									"patching_rect" : [ 107.0, 127.0, 37.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* -0.1",
									"patching_rect" : [ 107.0, 105.0, 40.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.1",
									"patching_rect" : [ 59.0, 105.0, 35.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"patching_rect" : [ 59.0, 77.0, 64.0, 19.0 ],
									"outlettype" : [ "int", "int" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 59.0, 215.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 59.0, 58.0, 15.0, 15.0 ],
									"outlettype" : [ "list" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p DrawLCD",
					"patching_rect" : [ 485.0, 50.0, 64.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 146.0, 89.0, 1274.0, 610.0 ],
						"bglocked" : 0,
						"defrect" : [ 146.0, 89.0, 1274.0, 610.0 ],
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
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /speaker/position",
									"patching_rect" : [ 65.0, 200.0, 173.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"patching_rect" : [ 65.0, 175.0, 54.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"patching_rect" : [ 65.0, 150.0, 41.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscinstance",
									"patching_rect" : [ 65.0, 90.0, 140.0, 19.0 ],
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route bang",
									"patching_rect" : [ 185.0, 120.0, 65.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess -3 -3 3 3",
									"patching_rect" : [ 155.0, 334.0, 104.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1+$f2",
									"patching_rect" : [ 65.0, 338.0, 81.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0 150",
									"patching_rect" : [ 155.0, 283.0, 88.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1+$f2",
									"patching_rect" : [ 65.0, 287.0, 81.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 10. -10.",
									"patching_rect" : [ 155.0, 255.0, 100.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1*$f2",
									"patching_rect" : [ 65.0, 259.0, 79.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim 20",
									"patching_rect" : [ 680.0, 90.0, 46.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend drawsprite position",
									"patching_rect" : [ 680.0, 180.0, 149.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 680.0, 25.0, 25.0, 25.0 ],
									"outlettype" : [ "list" ],
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enablesprites 1, recordsprite, paintoval -5 -5 5 5 28, closesprite position",
									"linecount" : 5,
									"patching_rect" : [ 269.0, 244.0, 96.0, 65.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"patching_rect" : [ 65.0, 225.0, 54.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 65.0, 25.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "paintrect 135 0 250 65 0 0 0, paintrect 0 98 60 100 0 0 0, paintrect 45 68 105 70 0 0 0, paintrect 109 100 111 150 0 0 0, paintrect 109 98 170 100, local 0",
									"linecount" : 4,
									"patching_rect" : [ 370.0, 244.0, 210.0, 53.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear, local 0",
									"patching_rect" : [ 585.0, 244.0, 71.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 65.0, 405.0, 25.0, 25.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "paintoval $1 $2 $3 $4 74 105 182",
									"patching_rect" : [ 65.0, 366.0, 183.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 $2 $1 $2",
									"patching_rect" : [ 65.0, 315.0, 70.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-23", 2 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 3 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 689.5, 392.0, 74.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 278.5, 392.0, 74.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 379.5, 392.0, 74.5, 392.0 ]
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 594.5, 392.0, 74.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [ 114.833336, 143.0, 96.5, 143.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 194.5, 186.0, 278.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 194.5, 186.0, 379.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 194.5, 186.0, 594.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"patching_rect" : [ 485.0, 75.0, 220.0, 150.0 ],
					"outlettype" : [ "list", "list", "int", "" ],
					"id" : "obj-32",
					"local" : 0,
					"numinlets" : 1,
					"enablesprites" : 1,
					"numoutlets" : 4
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 379.5, 303.0, 445.0, 303.0, 445.0, 275.0, 459.5, 275.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 455.0, 301.0, 455.0, 301.0, 423.0, 124.5, 423.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 233.0, 718.0, 233.0, 718.0, 42.0, 539.5, 42.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 270.0, 706.0, 270.0, 706.0, 241.0, 691.5, 241.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 2 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [ 330.5, 328.0, 58.28125, 328.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [ 190.0, 328.0, 58.28125, 328.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 2 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 3 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 4 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 5 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 6 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 7 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 8 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 9 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 10 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 11 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 12 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 13 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 14 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 15 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 16 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 374.5, 268.5, 459.5, 268.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.5, 75.0, 444.0, 75.0, 444.0, 171.0, 49.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
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
 ]
	}

}
