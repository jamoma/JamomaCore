{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 39.0, 146.0, 959.0, 460.0 ],
		"bglocked" : 0,
		"defrect" : [ 39.0, 146.0, 959.0, 460.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "textbutton",
					"presentation" : 1,
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-16",
					"mode" : 1,
					"numoutlets" : 3,
					"texton" : "On",
					"presentation_rect" : [ 5.0, 48.666924, 48.278587, 18.333078 ],
					"fontsize" : 10.0,
					"text" : "Off",
					"outlettype" : [ "int", "", "int" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 493.0, 40.0, 43.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-1",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 181.0, 89.0, 193.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 142.0, 255.0, 64.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 601.0, 120.0, 238.0, 390.0 ],
						"bglocked" : 0,
						"defrect" : [ 601.0, 120.0, 238.0, 390.0 ],
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
									"text" : "pvar Emotion",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-1",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.0, 295.0, 75.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Performance",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-2",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.0, 255.0, 97.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Environment",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.0, 215.0, 97.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Device",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-4",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.0, 175.0, 67.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Body",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-5",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.0, 135.0, 59.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Cooked",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-6",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.0, 95.0, 71.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Raw",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-7",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.0, 55.0, 55.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Turn on an off GDIF layers",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-8",
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"patching_rect" : [ 68.0, 38.0, 141.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "gdif/emotion/on",
									"text" : "jcom.parameter gdif/emotion/on @type msg_toggle @range/clipmode none @description \"Turn data on\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-9",
									"numoutlets" : 3,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 306.0, 295.0, 271.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "gdif/performance/on",
									"text" : "jcom.parameter gdif/performance/on @type msg_toggle @range/clipmode none @description \"Turn data on\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-10",
									"numoutlets" : 3,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 306.0, 255.0, 294.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "gdif/environment/on",
									"text" : "jcom.parameter gdif/environment/on @type msg_toggle @range/clipmode none @description \"Turn data on\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-11",
									"numoutlets" : 3,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 306.0, 215.0, 294.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "gdif/device/on",
									"text" : "jcom.parameter gdif/device/on @type msg_toggle @range/clipmode none @description \"Turn data on\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-12",
									"numoutlets" : 3,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 306.0, 175.0, 267.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "gdif/body/on",
									"text" : "jcom.parameter gdif/body/on @type msg_toggle @range/clipmode none @description \"Turn data on\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-13",
									"numoutlets" : 3,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 306.0, 135.0, 267.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "gdif/cooked/on",
									"text" : "jcom.parameter gdif/cooked/on @type msg_toggle @range/clipmode none @description \"Turn data on\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-14",
									"numoutlets" : 3,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 306.0, 95.0, 267.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "gdif/raw/on",
									"text" : "jcom.parameter gdif/raw/on @type msg_toggle @range/clipmode none @description \"Turn data on\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-15",
									"numoutlets" : 3,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 306.0, 55.0, 267.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Meta",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-16",
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"patching_rect" : [ 36.0, 284.0, 100.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Functional",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-17",
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"patching_rect" : [ 36.0, 233.0, 100.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Descriptive",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-18",
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"patching_rect" : [ 36.0, 140.0, 100.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "Cooked",
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 36.0, 101.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/gdif/cooked/on $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-20",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 101.0, 104.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "Emotion",
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 36.0, 300.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/gdif/emotion/on $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-22",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 300.0, 109.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "Performance",
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 36.0, 249.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/gdif/performance/on $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-24",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 249.0, 131.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "Environment",
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 36.0, 195.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/gdif/environment/on $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-26",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 195.0, 131.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "Device",
									"numinlets" : 1,
									"id" : "obj-27",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 36.0, 176.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/gdif/device/on $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-28",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 176.0, 100.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "Body",
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 36.0, 157.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/gdif/body/on $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-30",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 157.0, 93.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jmod.init",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"hidden" : 1,
									"id" : "obj-31",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 232.0, 414.0, 60.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-32",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "front" ],
									"patching_rect" : [ 277.0, 387.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-33",
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 277.0, 366.0, 163.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "Raw",
									"numinlets" : 1,
									"id" : "obj-34",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 36.0, 79.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/gdif/raw/on $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-35",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 79.0, 88.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "GDIF",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-36",
									"numoutlets" : 0,
									"fontsize" : 11.556055,
									"patching_rect" : [ 36.0, 34.0, 86.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"hidden" : 1,
									"id" : "obj-37",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 277.0, 346.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "patcher more features",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"hidden" : 1,
									"id" : "obj-38",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 232.0, 436.0, 119.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-39",
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 232.0, 455.0, 64.0, 18.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Acquisition",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-40",
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"patching_rect" : [ 36.0, 62.0, 100.0, 18.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "Sample rate",
					"annotation" : "Sample rate",
					"varname" : "samplerate",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-4",
					"minimum" : 0,
					"numoutlets" : 2,
					"presentation_rect" : [ 73.0, 25.0, 51.08559, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 493.0, 269.0, 35.0, 19.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode[1]",
					"text" : "jcom.parameter mode @type msg_symbol @description \"Choose reference mode\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 493.0, 215.0, 418.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "mode",
					"presentation" : 1,
					"items" : [ "poll", ",", "sample" ],
					"labelclick" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 3,
					"presentation_rect" : [ 5.0, 24.304279, 64.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 493.0, 185.0, 51.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample_rate",
					"text" : "jcom.parameter sample_rate @type msg_int @range/bounds 0 1000 @range/clipmode low @range/clipmode none @description \"Sample rate of mouse values.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 493.0, 292.0, 446.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 142.0, 232.0, 49.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "open" ],
					"patching_rect" : [ 142.0, 208.0, 40.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /open_inspector",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 142.0, 184.0, 163.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 142.0, 162.0, 45.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "reference[1]",
					"text" : "jcom.parameter reference @type msg_symbol @description \"Choose reference mode\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 493.0, 146.0, 437.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "Reference",
					"varname" : "reference",
					"presentation" : 1,
					"items" : [ "screen", ",", "click" ],
					"labelclick" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 3,
					"presentation_rect" : [ 54.722179, 48.0, 90.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 493.0, 123.0, 61.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mouse_on[1]",
					"text" : "jcom.parameter mouse_on @type msg_toggle @range/clipmode none @description \"Turn polling on\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 493.0, 66.0, 278.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 286.0, 232.0, 49.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 286.0, 208.0, 91.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-22",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.0, 89.0, 135.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.mouse.gdif.maxpat",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 286.0, 286.0, 128.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.mouse.gdif @module_type control @inspector 1 @description \"Output information from mouse\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-26",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 116.0, 335.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-27",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 83.0, 20.0, 20.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 189.0, 20.0, 20.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 502.5, 324.0, 480.0, 324.0, 480.0, 264.0, 502.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 502.5, 234.0, 480.0, 234.0, 480.0, 180.0, 502.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 502.5, 165.0, 480.0, 165.0, 480.0, 120.0, 502.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 502.5, 96.0, 480.0, 96.0, 480.0, 36.0, 502.5, 36.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 367.5, 252.0, 295.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-2", 0 ],
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 190.5, 109.0, 24.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 109.0, 24.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
