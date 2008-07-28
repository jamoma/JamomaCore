{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 45.0, 65.0, 834.0, 571.0 ],
		"bglocked" : 0,
		"defrect" : [ 45.0, 65.0, 834.0, 571.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
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
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"hidden" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 480.0, 60.0, 56.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p levels_simulator",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"patching_rect" : [ 480.0, 105.0, 101.0, 19.0 ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 816.0, 235.0, 364.0, 386.0 ],
						"bglocked" : 0,
						"defrect" : [ 816.0, 235.0, 364.0, 386.0 ],
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
									"maxclass" : "newobj",
									"text" : "loadmess scalarmode 1",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 83.0, 77.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "minimum",
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 169.0, 233.0, 56.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 16 16",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 169.0, 209.0, 59.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 16",
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 130.0, 257.0, 58.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route active voices",
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 169.0, 186.0, 103.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jsui_multigain",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 169.0, 165.0, 87.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jsui_multigain",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"patching_rect" : [ 130.0, 311.0, 88.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 3",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 226.0, 113.0, 27.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $i1 + $i2",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 135.0, 106.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 2 0 10",
									"numinlets" : 5,
									"numoutlets" : 4,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 226.0, 81.0, 83.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend levels",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 281.0, 82.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "20 40 70 40 10 20 30 40 50 10 20 30 40 50 60 70",
									"linecount" : 4,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 76.0, 73.0, 53.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 100",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 130.0, 50.0, 61.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 130.0, 30.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 48.5, 132.0, 139.5, 132.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 139.5, 72.0, 235.5, 72.0 ]
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
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
					"text" : "- bang: Poll current gains",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 35.0, 535.0, 137.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- set (list): Set gains, but do not trigger output.",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 35.0, 515.0, 250.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- gain (list): List of gains. Interpreted as MIDI or dB depending on the mode.",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 35.0, 495.0, 398.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- level (list): List of volume levels to be displayed as mm [0, 100]",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 35.0, 475.0, 341.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gain and level",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 18.0, 453.0, 213.0, 21.0 ],
					"fontsize" : 11.556055
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- group (defaults to 0)",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 35.0, 415.0, 122.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- mode (defaults to MIDI)",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 35.0, 400.0, 139.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- active (defaults to 16)",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 35.0, 385.0, 131.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Anti-aliasing",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 137.0, 302.0, 72.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gains can be adjusted on a MIDI range [0, 157] or dB [-24, +24]",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 135.0, 247.0, 254.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Level display can be toggled on/off",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 137.0, 217.0, 184.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices can be grouped visually to simplify orientation",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 137.0, 166.0, 276.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of voices that are currently active",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 137.0, 136.0, 221.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 25.0, 250.0, 105.0, 19.0 ],
					"fontsize" : 10.0,
					"labelclick" : 1,
					"items" : [ "MIDI", "[0,", "157]", ",", "db", "[-24,", "+24]" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "group $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 190.0, 55.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 25.0, 165.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"labelclick" : 1,
					"items" : [ "none", "(default)", ",", "ambisonic", ",", "in", "pairs", ",", "in", "threes", ",", "in", "fours", ",", "in", "fives" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jsui_multigain",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 480.0, 135.0, 88.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jsui_multigain",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-20",
					"hidden" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 199.0, 352.0, 89.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Adjust and monitor gains for multpiple audio channels.",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 10.0, 45.0, 285.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.jsui_multigain.js",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 10.0, 15.0, 226.0, 28.0 ],
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-23",
					"patching_rect" : [ 5.0, 5.0, 297.0, 65.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 480.0, 85.0, 17.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 275.0, 54.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"patching_rect" : [ 25.0, 135.0, 37.0, 19.0 ],
					"fontsize" : 10.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"maximum" : 16
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "active $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-27",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 135.0, 56.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print multigain",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"patching_rect" : [ 480.0, 265.0, 83.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 580.0, 135.0, 18.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 25.0, 215.0, 18.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "metering $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 215.0, 71.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 25.0, 300.0, 18.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fsaa $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 300.0, 47.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-34",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 25.0, 115.0, 37.0, 19.0 ],
					"fontsize" : 10.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "voices $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-35",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 115.0, 57.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-36",
					"jsarguments" : [ 16, 16 ],
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_multigain.js",
					"patching_rect" : [ 480.0, 165.0, 245.0, 92.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices and display settings:",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 18.0, 90.0, 213.0, 21.0 ],
					"fontsize" : 11.556055
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The number of voices that jsui is set up to display",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 137.0, 118.0, 260.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Arguments:",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-39",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 20.0, 340.0, 100.0, 21.0 ],
					"fontsize" : 11.556055
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- voices (defaults to 16)",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 35.0, 365.0, 130.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess gain 0 0",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.0, 405.0, 101.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open, 1, loop 1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 590.0, 335.0, 86.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 2",
					"numinlets" : 2,
					"numoutlets" : 3,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "bang" ],
					"patching_rect" : [ 590.0, 360.0, 58.0, 19.0 ],
					"fontsize" : 10.0,
					"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-44",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 550.0, 430.0, 32.5, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-45",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 475.0, 430.0, 71.0, 17.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"id" : "obj-46",
					"fontname" : "Verdana",
					"patching_rect" : [ 590.0, 475.0, 39.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-47",
					"jsarguments" : [ 2, 2 ],
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_multigain.js",
					"patching_rect" : [ 640.0, 430.0, 42.0, 85.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p levels",
					"numinlets" : 3,
					"numoutlets" : 3,
					"id" : "obj-48",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 590.0, 405.0, 58.0, 19.0 ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 43.0, 74.0, 437.0, 369.0 ],
						"bglocked" : 0,
						"defrect" : [ 43.0, 74.0, 437.0, 369.0 ],
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
									"maxclass" : "newobj",
									"text" : "prepend levels",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 253.0, 257.0, 82.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-2",
									"patching_rect" : [ 253.0, 287.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-3",
									"patching_rect" : [ 110.0, 287.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"patching_rect" : [ 45.0, 287.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 16.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"numinlets" : 2,
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 111.0, 103.0, 25.0, 49.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"numinlets" : 2,
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-7",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 46.0, 103.0, 25.0, 49.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0.",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 180.0, 61.0, 72.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 16.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 16.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"outlettype" : [ "int", "float", "int", "int" ],
									"patching_rect" : [ 318.0, 74.0, 59.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 100",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 318.0, 99.0, 67.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack f f",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 253.0, 214.0, 67.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peakamp~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 253.0, 190.0, 63.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peakamp~",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 318.0, 190.0, 63.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p amp2mm",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 253.0, 236.0, 66.0, 19.0 ],
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 43.0, 74.0, 481.0, 286.0 ],
										"bglocked" : 0,
										"defrect" : [ 43.0, 74.0, 481.0, 286.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-1",
													"patching_rect" : [ 49.0, 227.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.0, 80.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr (exp(($f1) * 0.0344014267) * 103.8194883) - 3.819488",
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-3",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.0, 175.0, 329.0, 19.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr min(0.\\,$f1)",
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-4",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.0, 155.0, 103.0, 19.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr max(-96.\\,$f1)",
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-5",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.0, 135.0, 116.0, 19.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr 20. * (log10($f1))",
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-6",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.0, 115.0, 132.0, 19.0 ],
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "A similar function for mapping amplitude to displayed levels as used by jcom.meter~",
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-7",
													"fontname" : "Verdana",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 32.0, 52.0, 437.0, 19.0 ],
													"fontsize" : 10.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 90.0, 55.5, 90.0 ]
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 242.5, 94.0, 120.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 55.5, 167.0, 262.5, 167.0 ]
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 1 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 120.5, 161.0, 327.5, 161.0 ]
								}

							}
 ]
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
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-49",
					"patching_rect" : [ 465.0, 320.0, 340.0, 210.0 ],
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50",
					"patching_rect" : [ 465.0, 45.0, 340.0, 251.0 ],
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 589.5, 158.0, 489.5, 158.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-28", 0 ],
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
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 559.5, 460.0, 599.5, 460.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 484.5, 460.0, 599.5, 460.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-48", 2 ],
					"hidden" : 0,
					"midpoints" : [ 649.5, 521.0, 689.0, 521.0, 689.0, 397.0, 638.5, 397.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 704.5, 426.0, 649.5, 426.0 ]
				}

			}
 ]
	}

}
