{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 64.0, 44.0, 867.0, 728.0 ],
		"bglocked" : 0,
		"defrect" : [ 64.0, 44.0, 867.0, 728.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-2",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 867.0, 70.0 ],
					"numoutlets" : 0,
					"name" : "jcom.maxhelpui.maxpat",
					"args" : [ "@name", "jcom.limiter~", "@description", "Look-ahead limiter with built-in DC blocking and overdrive" ],
					"bgmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-13",
					"numinlets" : 2,
					"patching_rect" : [ 549.0, 431.0, 45.0, 45.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 510.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-5",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 455.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 624.0, 365.0, 48.0, 17.0 ],
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 480.0, 67.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bypass the limiter",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 455.0, 178.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass_dcblocker $1",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 535.0, 126.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"id" : "obj-8",
					"numinlets" : 2,
					"patching_rect" : [ 584.0, 350.0, 27.0, 55.0 ],
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This object was initially an off-shoot from jhno's limi~ object for MaxMSP. This variant supports attributes, gain-related values specified in decibels, and a built in DC Blocker.",
					"linecount" : 3,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 55.0, 675.0, 431.0, 43.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Description",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 645.0, 221.0, 24.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 14.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reset the history kept by the object internally",
					"linecount" : 2,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 600.0, 180.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 600.0, 39.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the threshold, preamp, and postamp attributes are specified in decibels (0 dB = full scale).",
					"linecount" : 2,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 353.0, 271.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the release attribute is specified in milliseconds.",
					"linecount" : 2,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 405.0, 136.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 145.0, 425.0, 57.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 145.0, 405.0, 74.0, 19.0 ],
					"minimum" : 0.0,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"hbgcolor" : [ 0.0, 0.721569, 0.007843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 405.0, 54.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "release $1",
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 425.0, 67.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lookahead $1",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 215.0, 79.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend mode",
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 155.0, 85.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The number of samples (up to 256) to look ahead into the signal to see what is coming.",
					"linecount" : 2,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 195.0, 243.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gain",
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 640.0, 215.0, 30.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p sound_player",
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 520.0, 185.0, 92.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 374.0, 251.0, 766.0, 434.0 ],
						"bglocked" : 0,
						"defrect" : [ 374.0, 251.0, 766.0, 434.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "flonum",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 65.0, 90.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 25.0, 54.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 410.0, 85.0, 49.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "loop 1, startloop",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 495.0, 85.0, 103.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 1.5",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 65.0, 125.0, 57.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "groove~ foo",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 65.0, 165.0, 77.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace drumLoop.aif",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 280.0, 85.0, 126.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ foo 500",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 110.0, 101.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-9",
									"numinlets" : 0,
									"patching_rect" : [ 65.0, 25.0, 30.0, 30.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"patching_rect" : [ 65.0, 200.0, 30.0, 30.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 504.5, 154.0, 75.0, 154.0, 75.0, 162.0, 74.5, 162.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 419.5, 107.0, 289.5, 107.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 289.5, 72.0, 504.5, 72.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
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
					"text" : "startwindow",
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 550.0, 480.0, 80.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print dumpout",
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 705.0, 340.0, 89.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "atodb",
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 145.0, 370.0, 41.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 520.0, 160.0, 38.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"id" : "obj-34",
					"bubblesize" : 8,
					"numinlets" : 1,
					"patching_rect" : [ 520.0, 110.0, 56.0, 27.0 ],
					"margin" : 4,
					"numoutlets" : 4,
					"spacing" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-41", "flonum", "float", 11.0, 5, "obj-40", "number", "int", 10, 5, "obj-19", "flonum", "float", 3.0, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 5.30237, 5, "obj-35", "flonum", "float", 0.31405, 5, "obj-33", "flonum", "float", 2.3 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-41", "flonum", "float", 11.0, 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 0.56, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 3.12, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 1.5 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-41", "flonum", "float", 300.0, 5, "obj-40", "number", "int", 100, 5, "obj-19", "flonum", "float", 12.0, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 234.863205, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.85 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-41", "flonum", "float", 111111.0, 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 48.0, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 15754.263672, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.5 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-41", "flonum", "float", 11111111.0, 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 87.0, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 2087046.375, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.35 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-41", "flonum", "float", 11.0, 5, "obj-40", "number", "int", 10, 5, "obj-19", "flonum", "float", 3.0, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 0.723294, 5, "obj-35", "flonum", "float", 0.12817, 5, "obj-33", "flonum", "float", 2.3 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-41", "flonum", "float", 11.0, 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 0.56, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 0.00434, 5, "obj-35", "flonum", "float", 0.004212, 5, "obj-33", "flonum", "float", 1.5 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-41", "flonum", "float", 300.0, 5, "obj-40", "number", "int", 100, 5, "obj-19", "flonum", "float", 12.0, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 115.008751, 5, "obj-35", "flonum", "float", 0.272838, 5, "obj-33", "flonum", "float", 0.85 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-41", "flonum", "float", 111111.0, 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 48.0, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 17612.173828, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.5 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-41", "flonum", "float", 11111111.0, 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 87.0, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 1290360.5, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.35 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 520.0, 540.0, 45.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-36",
					"numinlets" : 1,
					"interval" : 100,
					"patching_rect" : [ 520.0, 520.0, 85.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"numleds" : 20
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 570.0, 265.0, 50.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-38",
					"numinlets" : 1,
					"interval" : 100,
					"patching_rect" : [ 570.0, 250.0, 80.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"numleds" : 20
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 145.0, 350.0, 39.0, 19.0 ],
					"minimum" : 0.0,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"hbgcolor" : [ 0.0, 0.721569, 0.007843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 195.0, 38.0, 19.0 ],
					"minimum" : 1,
					"numoutlets" : 2,
					"maximum" : 441,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"hbgcolor" : [ 0.0, 0.721569, 0.007843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 570.0, 215.0, 48.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"hbgcolor" : [ 0.0, 0.721569, 0.007843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 1.",
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 520.0, 215.0, 45.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.limiter~ @preamp 0. @postamp 0.",
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 520.0, 315.0, 215.0, 19.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"id" : "obj-44",
					"numinlets" : 2,
					"patching_rect" : [ 550.0, 350.0, 27.0, 55.0 ],
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Demo Presets",
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 520.0, 85.0, 97.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "playback speed",
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 580.0, 160.0, 104.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Messages",
					"id" : "obj-47",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 570.0, 211.0, 24.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 14.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 349.0, 54.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "threshold $1",
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 370.0, 80.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A gain control that is applied (in decibels) after the limiting process is complete.",
					"linecount" : 2,
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 295.0, 230.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A gain control that is applied (in decibels) prior to the signal being limited.",
					"linecount" : 2,
					"id" : "obj-54",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 245.0, 232.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preamp $1",
					"id" : "obj-55",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 265.0, 68.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-56",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 130.0, 88.0, 19.0 ],
					"numoutlets" : 3,
					"types" : [  ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "exponential", ",", "linear" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Set the function to be used for calculating the scaling.",
					"linecount" : 2,
					"id" : "obj-57",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 130.0, 155.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-58",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 295.0, 54.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "postamp $1",
					"id" : "obj-59",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 315.0, 75.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-60",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 245.0, 54.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes",
					"id" : "obj-61",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 95.0, 231.0, 24.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 14.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bypass the internal DC Blocking component",
					"linecount" : 2,
					"id" : "obj-69",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 510.0, 129.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.0, 152.0, 59.5, 152.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 627.5, 340.0, 593.5, 340.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 529.5, 340.0, 559.5, 340.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [ 529.5, 308.0, 725.5, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 529.5, 243.0, 579.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 154.5, 393.0, 137.0, 393.0, 137.0, 344.0, 59.5, 344.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 559.5, 498.0, 545.0, 498.0, 545.0, 426.0, 558.5, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 154.5, 447.0, 138.0, 447.0, 138.0, 402.0, 59.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
