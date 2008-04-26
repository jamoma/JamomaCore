{
	"patcher" : 	{
		"rect" : [ 45.0, 65.0, 812.0, 584.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 45.0, 65.0, 812.0, 584.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 482.0, 53.0, 56.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p levels_simulator",
					"fontsize" : 9.0,
					"patching_rect" : [ 482.0, 92.0, 101.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-2",
					"patcher" : 					{
						"rect" : [ 816.0, 235.0, 364.0, 386.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 816.0, 235.0, 364.0, 386.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess scalarmode 1",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 39.0, 83.0, 77.0, 28.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "minimum",
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 169.0, 233.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 16 16",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 169.0, 209.0, 55.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 16",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 130.0, 257.0, 49.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route active voices",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 169.0, 186.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jsui_multigain",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 169.0, 165.0, 82.0, 17.0 ],
									"numinlets" : 0,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jsui_multigain",
									"fontsize" : 9.0,
									"patching_rect" : [ 130.0, 311.0, 82.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 3",
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 226.0, 113.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $i1 + $i2",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 130.0, 135.0, 106.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 2 0 10",
									"outlettype" : [ "int", "", "", "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 226.0, 81.0, 77.0, 17.0 ],
									"numinlets" : 5,
									"fontname" : "Verdana",
									"numoutlets" : 4,
									"id" : "obj-10",
									"save" : [ "#N", "counter", 2, 0, 10, ";", "#X", "flags", 0, 0, ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend levels",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 130.0, 281.0, 75.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "20 40 70 40 10 20 30 40 50 10 20 30 40 50 60 70",
									"linecount" : 4,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 130.0, 76.0, 72.0, 47.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 100",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 130.0, 50.0, 58.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 130.0, 30.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-14",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
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
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0
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
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- bang: Poll current gains",
					"fontsize" : 9.0,
					"patching_rect" : [ 37.0, 519.0, 137.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- set (list): Set gains, but do not trigger output.",
					"fontsize" : 9.0,
					"patching_rect" : [ 37.0, 501.0, 249.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- gain (list): List of gains. Interpreted as MIDI or dB depending on the mode.",
					"fontsize" : 9.0,
					"patching_rect" : [ 37.0, 489.0, 395.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- level (list): List of volume levels to be displayed as mm [0, 100]",
					"fontsize" : 9.0,
					"patching_rect" : [ 37.0, 477.0, 339.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gain and level",
					"fontsize" : 10.533333,
					"patching_rect" : [ 18.0, 453.0, 213.0, 21.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- group (defaults to 0)",
					"fontsize" : 9.0,
					"patching_rect" : [ 37.0, 400.0, 122.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- mode (defaults to MIDI)",
					"fontsize" : 9.0,
					"patching_rect" : [ 37.0, 388.0, 139.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- active (defaults to 16)",
					"fontsize" : 9.0,
					"patching_rect" : [ 37.0, 376.0, 129.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Anti-aliasing",
					"fontsize" : 9.0,
					"patching_rect" : [ 137.0, 302.0, 72.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Gains can be adjusted on a MIDI range [0, 157] or dB [-24, +24]",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 135.0, 247.0, 252.0, 30.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Level display can be toggled on\/off",
					"fontsize" : 9.0,
					"patching_rect" : [ 137.0, 217.0, 184.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices can be grouped visually to simplify orientation",
					"fontsize" : 9.0,
					"patching_rect" : [ 137.0, 166.0, 276.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of voices that are currently active",
					"fontsize" : 9.0,
					"patching_rect" : [ 137.0, 136.0, 221.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0,
					"items" : [ "MIDI", "[0,", "157]", ",", "db", "[-24,", "+24]" ],
					"patching_rect" : [ 29.0, 248.0, 105.0, 18.0 ],
					"numinlets" : 1,
					"labelclick" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-16",
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "group $1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 28.0, 182.0, 55.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0,
					"items" : [ "none", "(default)", ",", "ambisonic", ",", "in", "pairs", ",", "in", "threes", ",", "in", "fours", ",", "in", "fives" ],
					"patching_rect" : [ 28.0, 164.0, 100.0, 18.0 ],
					"numinlets" : 1,
					"labelclick" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-18",
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jsui_multigain",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 482.0, 134.0, 88.0, 18.0 ],
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jsui_multigain",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 199.0, 352.0, 89.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Adjust and monitor gains for multpiple audio channels.",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 6.0, 43.0, 283.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.jsui_multigain.js",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 5.0, 15.0, 226.0, 28.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"rounded" : 0,
					"patching_rect" : [ 5.0, 5.0, 279.0, 63.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 482.0, 73.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode $1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 29.0, 266.0, 54.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"patching_rect" : [ 28.0, 134.0, 37.0, 18.0 ],
					"maximum" : 16,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"minimum" : 0,
					"numoutlets" : 2,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "active $1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 67.0, 134.0, 56.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print multigain",
					"fontsize" : 9.0,
					"patching_rect" : [ 482.0, 267.0, 83.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 566.0, 134.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 28.0, 214.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "metering $1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 45.0, 214.0, 71.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 30.0, 300.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fsaa $1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 49.0, 300.0, 47.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"triscale" : 0.9,
					"patching_rect" : [ 28.0, 116.0, 37.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "voices $1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 67.0, 116.0, 57.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"outlettype" : [ "" ],
					"filename" : "jcom.jsui_multigain.js",
					"patching_rect" : [ 482.0, 167.0, 236.0, 93.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"jsarguments" : [ 16, 16 ],
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices and display settings:",
					"fontsize" : 10.533333,
					"patching_rect" : [ 18.0, 90.0, 213.0, 21.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The number of voices that jsui is set up to display",
					"fontsize" : 9.0,
					"patching_rect" : [ 137.0, 118.0, 259.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Arguments:",
					"fontsize" : 10.533333,
					"patching_rect" : [ 18.0, 341.0, 100.0, 21.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- voices (defaults to 16)",
					"fontsize" : 9.0,
					"patching_rect" : [ 37.0, 364.0, 130.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess gain 0 0",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 683.0, 399.0, 101.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open, 1, loop 1",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 580.0, 335.0, 86.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 2",
					"outlettype" : [ "signal", "signal", "bang" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 580.0, 357.0, 58.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-43",
					"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 533.0, 433.0, 32.5, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 464.0, 433.0, 71.0, 16.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"fontsize" : 9.0,
					"patching_rect" : [ 580.0, 469.0, 36.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"outlettype" : [ "" ],
					"filename" : "jcom.jsui_multigain.js",
					"patching_rect" : [ 622.0, 428.0, 42.0, 85.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"jsarguments" : [ 2, 2 ],
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p levels",
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 580.0, 402.0, 48.0, 18.0 ],
					"numinlets" : 3,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-48",
					"patcher" : 					{
						"rect" : [ 43.0, 74.0, 437.0, 369.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 43.0, 74.0, 437.0, 369.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend levels",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 253.0, 257.0, 75.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 253.0, 287.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 110.0, 287.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-3",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 45.0, 287.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 41.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 111.0, 103.0, 11.0, 41.0 ],
									"orientation" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 46.0, 103.0, 11.0, 41.0 ],
									"orientation" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0.",
									"outlettype" : [ "float", "float" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 180.0, 61.0, 64.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 110.0, 41.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 41.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-10",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"outlettype" : [ "int", "float", "int", "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 318.0, 74.0, 54.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 4,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 100",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 318.0, 99.0, 63.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack f f",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 253.0, 214.0, 67.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peakamp~",
									"outlettype" : [ "float" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 253.0, 190.0, 54.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peakamp~",
									"outlettype" : [ "float" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 318.0, 190.0, 54.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p amp2mm",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 253.0, 236.0, 58.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-16",
									"patcher" : 									{
										"rect" : [ 43.0, 74.0, 481.0, 286.0 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 43.0, 74.0, 481.0, 286.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxfadetime" : 200,
										"boxanimatetime" : 200,
										"scrollanimatetime" : 200,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 49.0, 227.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.0, 80.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr (exp(($f1) * 0.0344014267) * 103.8194883) - 3.819488",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"patching_rect" : [ 49.0, 175.0, 316.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr min(0.\\,$f1)",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"patching_rect" : [ 49.0, 155.0, 99.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr max(-96.\\,$f1)",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"patching_rect" : [ 49.0, 135.0, 113.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vexpr 20. * (log10($f1))",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"patching_rect" : [ 49.0, 115.0, 125.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "A similar function for mapping amplitude to displayed levels as used by jcom.meter~",
													"fontsize" : 9.0,
													"patching_rect" : [ 32.0, 52.0, 391.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-7"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontsize" : 10.0,
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 189.5, 90.0, 49.5, 90.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 234.5, 94.0, 114.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 167.0, 262.5, 167.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 114.5, 161.0, 327.5, 161.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"rounded" : 0,
					"patching_rect" : [ 451.0, 323.0, 334.0, 207.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"rounded" : 0,
					"patching_rect" : [ 451.0, 56.0, 334.0, 254.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 575.0, 158.0, 491.5, 158.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 542.5, 458.0, 589.5, 458.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 473.5, 458.0, 589.5, 458.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-48", 2 ],
					"hidden" : 0,
					"midpoints" : [ 631.5, 519.0, 671.0, 519.0, 671.0, 395.0, 618.5, 395.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 2 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 692.5, 424.0, 631.5, 424.0 ]
				}

			}
 ]
	}

}
