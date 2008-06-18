{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 23.0, 44.0, 1343.0, 483.0 ],
		"bglocked" : 0,
		"defrect" : [ 23.0, 44.0, 1343.0, 483.0 ],
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
					"maxclass" : "newobj",
					"text" : "p more",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 360.0, 50.0, 20.0 ],
					"fontsize" : 10.970939,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 420.0, 44.0, 267.0, 130.0 ],
						"bglocked" : 0,
						"defrect" : [ 420.0, 44.0, 267.0, 130.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 40.0, 350.0, 100.0, 18.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 40.0, 325.0, 36.0, 18.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 40.0, 305.0, 36.0, 18.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 40.0, 270.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "DC-blocker :",
									"fontname" : "Arial",
									"presentation_rect" : [ 145.0, 95.0, 88.0, 23.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 210.0, 88.0, 23.0 ],
									"fontsize" : 14.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Lookahead",
									"fontname" : "Arial",
									"presentation_rect" : [ 30.0, 95.0, 60.0, 18.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 165.0, 60.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Postamp",
									"fontname" : "Arial",
									"presentation_rect" : [ 145.0, 60.0, 55.0, 18.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 130.0, 55.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mode",
									"fontname" : "Arial",
									"presentation_rect" : [ 90.0, 20.0, 55.0, 18.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 95.0, 55.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Limiter",
									"fontname" : "Arial",
									"presentation_rect" : [ 15.0, 15.0, 54.0, 23.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 5.0, 54.0, 23.0 ],
									"fontsize" : 14.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Threshold",
									"fontname" : "Arial",
									"presentation_rect" : [ 30.0, 60.0, 55.0, 18.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 50.0, 55.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"presentation_rect" : [ 230.0, 95.0, 20.0, 20.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 120.0, 210.0, 20.0, 20.0 ],
									"presentation" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/active[1]",
									"text" : "jcom.parameter dcblocker/active @type msg_toggle @description \"DC Blocker: Active or bypassed.\"",
									"fontname" : "Verdana",
									"id" : "obj-98",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 150.0, 210.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontname" : "Verdana",
									"presentation_rect" : [ 145.0, 20.0, 92.0, 19.0 ],
									"id" : "obj-29",
									"numinlets" : 1,
									"labelclick" : 1,
									"types" : [  ],
									"numoutlets" : 3,
									"patching_rect" : [ 90.0, 91.5, 66.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"outlettype" : [ "int", "", "" ],
									"items" : [ "exponential", ",", "linear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"presentation_rect" : [ 90.0, 60.0, 45.0, 19.0 ],
									"id" : "obj-32",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 113.0, 50.5, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"presentation_rect" : [ 90.0, 95.0, 45.0, 19.0 ],
									"id" : "obj-34",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 113.0, 166.5, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"minimum" : 0,
									"triscale" : 0.9,
									"outlettype" : [ "int", "bang" ],
									"maximum" : 256,
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/mode",
									"text" : "jcom.parameter limiter/mode @type msg_symbol @description \"Limiter: Set the function to be used for calculating the scaling.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-38",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 83.5, 333.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/threshold",
									"text" : "jcom.parameter limiter/threshold @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Set threshold as dB.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-39",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 41.5, 440.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/lookahead",
									"text" : "jcom.parameter limiter/lookahead @ramp/drive scheduler @range/bounds 0 256 @range/clipmode both @type msg_int @description \"Limiter: The number of samples to look ahead.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 157.5, 512.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/postamp",
									"text" : "jcom.parameter limiter/postamp @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Postamp as dB.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-42",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 160.0, 120.5, 417.0, 31.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 130.0, 85.0, 133.0, 40.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"shadow" : 5,
									"numoutlets" : 0,
									"patching_rect" : [ 81.0, 186.0, 155.0, 25.0 ],
									"presentation" : 1,
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"presentation_rect" : [ 205.0, 60.0, 45.0, 19.0 ],
									"id" : "obj-35",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 114.0, 128.5, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 5.0, 10.0, 75.0, 33.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"shadow" : 5,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 6.0, 155.0, 25.0 ],
									"presentation" : 1,
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 0.0, 0.0, 267.0, 130.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 115.0, 5.0, 155.0, 25.0 ],
									"presentation" : 1,
									"rounded" : 15
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-38", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 40.0, 320.0, 83.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p bugs?",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 665.0, 415.0, 56.0, 20.0 ],
					"fontsize" : 10.970939,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- record 0: stops recording.",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 294.0, 271.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- record (filename): starts recording to the sound file specified",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 265.0, 209.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- record 1: starts recording to a previously specified sound file. If no sound file is psecified, it's to bad...",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 235.0, 275.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 205.0, 253.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- open filename: open the soundfile specified, but do not start recording",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 176.0, 249.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 134.0, 271.0, 43.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- left channel jcom-meter~ tends to die",
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 51.0, 115.0, 249.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bugs/required fixes:",
									"fontname" : "Verdana",
									"id" : "obj-68",
									"numinlets" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 100.0, 111.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.output~ @description \"A generic module for stereo audio output. Includes saturation , limiter and recording device\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 335.0, 395.0, 256.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 58.0, 53.0, 125.0, 12.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 420.0, 125.0, 12.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 58.0, 36.0, 125.0, 12.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 398.0, 125.0, 12.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontname" : "Verdana",
					"id" : "obj-97",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 880.0, 195.0, 150.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 540.0, 355.0, 139.0, 29.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 355.0, 110.0, 54.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 4,
					"patching_rect" : [ 147.0, 226.0, 64.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "signal", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain",
					"text" : "jcom.parameter audio/gain @dataspace gain @dataspace/unit/native midi @dataspace/unit/active midi @description \"master gain\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 79.0, 366.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dsp_status @description \" Open DSP Status window.\"",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 830.0, 422.0, 355.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 360.0, 355.0, 137.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 293.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /open",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 25.0, 270.0, 99.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"varname" : "gain_master",
					"knobpict" : "jcom.slider.ch.knob.bottom.pct",
					"presentation_rect" : [ 51.0, 80.0, 161.0, 13.0 ],
					"topvalue" : 0,
					"id" : "obj-20",
					"numinlets" : 2,
					"inactiveimage" : 0,
					"bkgndsize" : 1,
					"leftmargin" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 355.0, 59.0, 161.0, 13.0 ],
					"presentation" : 1,
					"rightvalue" : 157,
					"movevertical" : 0,
					"outlettype" : [ "int", "int" ],
					"bkgndpict" : "jcom.slider.ch.bg.pct",
					"imagemask" : 1,
					"rightmargin" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record",
					"text" : "jcom.parameter record @type msg_toggle @description \"record to a sound file\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 390.0, 270.0, 235.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_xxx_record",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 355.0, 305.0, 94.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Release (ms)",
					"fontname" : "Verdana",
					"presentation_rect" : [ 171.0, 115.0, 75.0, 19.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 270.0, 75.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Preamp (dB)",
					"fontname" : "Verdana",
					"presentation_rect" : [ 171.0, 98.0, 72.0, 19.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 230.0, 72.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/active",
					"text" : "jcom.parameter limiter/active @type msg_toggle @description \"Limiter: Active or bypassed.\"",
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 825.0, 190.0, 479.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Release",
					"fontname" : "Verdana",
					"presentation_rect" : [ 240.0, 113.0, 39.0, 19.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 785.0, 270.0, 39.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"maximum" : 10000.0,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Preamp",
					"fontname" : "Verdana",
					"presentation_rect" : [ 240.0, 96.0, 36.0, 19.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 785.0, 230.0, 36.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"maximum" : 48.0,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sound File Record",
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 1,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 333.0, 132.0, 186.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/release",
					"text" : "jcom.parameter limiter/release @ramp/drive scheduler @type msg_float @range/bounds 0 3000 @range/clipmode low @description \"Limiter: Set release time as ms.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-40",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 830.0, 265.0, 461.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/preamp",
					"text" : "jcom.parameter limiter/preamp @ramp/drive scheduler @range/bounds 0 48 @range/clipmode none @type msg_float @description \"Limiter: Preamp as dB.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-43",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 830.0, 225.0, 411.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter",
					"fontname" : "Verdana",
					"presentation_rect" : [ 44.0, 115.0, 61.0, 19.0 ],
					"id" : "obj-44",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 735.0, 190.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter (not all parameters are exposed in the interface : see panel)",
					"fontname" : "Verdana",
					"id" : "obj-45",
					"numinlets" : 1,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 825.0, 165.0, 354.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"fontname" : "Verdana",
					"id" : "obj-46",
					"numinlets" : 1,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 810.0, 35.0, 188.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/active",
					"text" : "jcom.parameter saturation/active @type msg_toggle @description \"Saturation: Active or bypassed.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-47",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 830.0, 124.0, 419.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/depth",
					"text" : "jcom.parameter saturation/depth @ramp/drive scheduler @repetitions/allow 0 @type msg_float @range/bounds 0 99 @range/clipmode both @description \"Saturation: Depth.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-50",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 830.0, 81.0, 460.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "SaturationDepth",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 96.0, 21.0, 19.0 ],
					"id" : "obj-51",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 785.0, 89.0, 21.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"minimum" : 0,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 99,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "%",
					"fontname" : "Verdana",
					"presentation_rect" : [ 125.0, 98.0, 19.0, 19.0 ],
					"id" : "obj-52",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 810.0, 89.0, 19.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/samptype",
					"text" : "jcom.parameter record/samptype @type msg_symbol @description \"Recording: Set sample type for sound files.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-54",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 388.0, 225.0, 304.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/filetype",
					"text" : "jcom.parameter record/filetype @type msg_symbol @description \"Recording: Set file type for sound files.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-55",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 388.0, 187.0, 283.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p FileTypes",
					"fontname" : "Verdana",
					"id" : "obj-56",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 325.0, 165.0, 63.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "clear" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 14.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 14.0, 59.0, 600.0, 426.0 ],
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
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 60.0, 265.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 218.0, 89.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jcom.init",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 60.0, 59.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 111.0, 175.0, 100.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave, sd2",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 192.0, 125.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 222.0, 164.0, 40.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel macintosh windows",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 60.0, 151.0, 122.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route os",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 60.0, 130.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "js jcom.js_systeminfo.js",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 99.0, 129.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 231.5, 250.0, 69.0, 250.0 ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 89.0, 231.5, 89.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FiletypeMenu",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"presentation_rect" : [ 216.0, 56.0, 61.0, 19.0 ],
					"id" : "obj-57",
					"numinlets" : 1,
					"types" : [  ],
					"numoutlets" : 3,
					"patching_rect" : [ 325.0, 194.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"rounded" : 15,
					"outlettype" : [ "int", "", "" ],
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"items" : [ "aiff", ",", "au", ",", "raw", ",", "wave", ",", "sd2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "SamptypeMenu",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"presentation_rect" : [ 216.0, 74.0, 61.0, 19.0 ],
					"id" : "obj-59",
					"numinlets" : 1,
					"types" : [  ],
					"numoutlets" : 3,
					"patching_rect" : [ 325.0, 230.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"rounded" : 15,
					"outlettype" : [ "int", "", "" ],
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"items" : [ "int8", ",", "int16", ",", "int24", ",", "int32", ",", "float32", ",", "float64", ",", "mulaw", ",", "alaw" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-60",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 190.0, 207.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-61",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 147.0, 207.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0",
					"fontname" : "Verdana",
					"id" : "obj-64",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 355.0, 35.0, 50.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "RecordButton",
					"nofsaa" : 1,
					"presentation_rect" : [ 220.0, 30.0, 45.0, 19.0 ],
					"id" : "obj-66",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 335.0, 270.0, 45.0, 19.0 ],
					"presentation" : 1,
					"filename" : "jcom.jsui_texttoggle.js",
					"outlettype" : [ "", "" ],
					"jsarguments" : [ "Record", "Record", 68, 68, 68, 225, 225, 225, 255, 40, 40, 0, 0, 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP and dac~ settings",
					"fontname" : "Verdana",
					"id" : "obj-67",
					"numinlets" : 1,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 165.0, 186.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_2",
					"text" : "jcom.parameter ch.2 @type msg_int @description \" Set logical output for right channel.\"",
					"fontname" : "Verdana",
					"id" : "obj-72",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 830.0, 368.0, 460.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_1",
					"text" : "jcom.parameter ch.1 @type msg_int @description \" Set logical output for left channel.\"",
					"fontname" : "Verdana",
					"id" : "obj-73",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 830.0, 338.0, 452.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "DSP_Status",
					"nofsaa" : 1,
					"presentation_rect" : [ 221.0, 0.0, 45.0, 19.0 ],
					"id" : "obj-74",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 830.0, 400.0, 45.0, 19.0 ],
					"presentation" : 1,
					"filename" : "jsui_textbutton.js",
					"outlettype" : [ "" ],
					"jsarguments" : [ "DSP", 225, 225, 225, 68, 68, 68 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Right",
					"fontname" : "Verdana",
					"presentation_rect" : [ 7.0, 53.0, 30.0, 19.0 ],
					"id" : "obj-75",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 790.0, 367.0, 30.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"minimum" : 1,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 512,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Left",
					"fontname" : "Verdana",
					"presentation_rect" : [ 7.0, 36.0, 30.0, 19.0 ],
					"id" : "obj-76",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 790.0, 338.0, 30.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"minimum" : 1,
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 512,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"id" : "obj-81",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 500.0, 355.0, 39.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Volume",
					"fontname" : "Verdana",
					"id" : "obj-83",
					"numinlets" : 1,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 409.0, 34.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"id" : "obj-84",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 335.0, 305.0, 17.0, 17.0 ],
					"offcolor" : [ 0.0, 0.266667, 0.0, 1.0 ],
					"outlettype" : [ "int" ],
					"oncolor" : [ 0.0, 1.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Sound_processing",
					"fontname" : "Verdana",
					"id" : "obj-85",
					"numinlets" : 3,
					"numoutlets" : 2,
					"patching_rect" : [ 105.0, 359.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 41.0, 276.0, 660.0, 479.0 ],
						"bglocked" : 0,
						"defrect" : [ 41.0, 276.0, 660.0, 479.0 ],
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
									"text" : "jcom.return audio/amplitude/follower.2 @range/bounds 0. 1. @enable 0 @description \"instant amplitude of the signal number 2\"",
									"linecount" : 4,
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 270.0, 390.0, 235.0, 60.0 ],
									"fontsize" : 10.970939,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return audio/amplitude/follower.1 @range/bounds 0. 1. @enable 0 @description \"instant amplitude of the signal number 1\"",
									"linecount" : 4,
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 20.0, 390.0, 235.0, 60.0 ],
									"fontsize" : 10.970939,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /saturation /limiter /audio/gain /record",
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 5,
									"patching_rect" : [ 325.0, 119.0, 276.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 340.0, 370.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 111.0, 366.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p dac",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 179.0, 366.0, 157.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 59.0, 600.0, 426.0 ],
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
													"maxclass" : "newobj",
													"text" : "t open",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 230.0, 163.0, 40.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "open" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_dac",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 30.0, 186.0, 78.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-3",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 180.0, 55.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 107.0, 55.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 434.0, 255.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 366.0, 163.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 298.0, 163.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-8",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 230.0, 55.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /dsp_status /ch.1 /ch.2",
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 1,
													"numoutlets" : 4,
													"patching_rect" : [ 230.0, 135.0, 216.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dac~ 1 2",
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 2,
													"numoutlets" : 0,
													"patching_rect" : [ 107.0, 241.0, 83.0, 18.0 ],
													"fontsize" : 9.873845
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 3 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p limiter",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 179.0, 198.0, 156.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 78.0, 86.0, 674.0, 345.0 ],
										"bglocked" : 0,
										"defrect" : [ 78.0, 86.0, 674.0, 345.0 ],
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
													"maxclass" : "newobj",
													"text" : "prepend bypass",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 521.0, 149.0, 87.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 521.0, 128.0, 34.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 521.0, 107.0, 116.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /preamp /postamp /threshold /lookahead /release /mode",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 7,
													"patching_rect" : [ 215.0, 79.0, 348.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "", "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-5",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 215.0, 46.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 256.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 72.0, 256.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-8",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 172.0, 46.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-9",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 72.0, 46.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tt.limiter~ @bypass_dcblocker 1",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 2,
													"numoutlets" : 3,
													"patching_rect" : [ 72.0, 202.0, 116.0, 30.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "signal", "signal", "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 3 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 4 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 5 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 1 ],
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
													"source" : [ "obj-4", 6 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 179.0, 169.0, 157.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 417.0, 152.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 417.0, 152.0, 600.0, 426.0 ],
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
													"maxclass" : "newobj",
													"text" : "prepend bypass",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 396.0, 209.0, 87.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 396.0, 186.0, 34.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 396.0, 164.0, 116.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr 1./(1. - $f1*0.01)",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 266.0, 121.0, 123.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 136.0, 309.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 172.0, 309.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-7",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 208.0, 50.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-8",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 136.0, 50.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend overdrive",
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 266.0, 151.0, 99.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /depth",
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 266.0, 75.0, 140.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-11",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 266.0, 50.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.saturation~",
													"fontname" : "Verdana",
													"id" : "obj-12",
													"numinlets" : 2,
													"numoutlets" : 3,
													"patching_rect" : [ 136.0, 268.0, 94.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "signal", "signal", "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-12", 0 ],
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-4", 0 ],
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
													"source" : [ "obj-10", 1 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 27.0, 32.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 252.0, 136.0, 15.0, 15.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 179.0, 136.0, 15.0, 15.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p smooth_in_out",
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 179.0, 290.0, 93.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 185.0, 98.0, 623.0, 428.0 ],
										"bglocked" : 0,
										"defrect" : [ 185.0, 98.0, 623.0, 428.0 ],
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
													"maxclass" : "message",
													"text" : "0 10",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 475.0, 163.0, 31.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 410.0, 140.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 319.0, 270.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 284.0, 270.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0, 1 10",
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 410.0, 163.0, 44.0, 16.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line~",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 410.0, 189.0, 34.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "signal", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 4,
													"patching_rect" : [ 410.0, 112.0, 59.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "int", "float", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "NOTE: This fade is not displayed in the GUI.",
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 94.0, 334.0, 228.0, 18.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade in when audio start",
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 75.0, 161.0, 18.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 319.0, 91.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-11",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 284.0, 91.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 319.0, 305.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 284.0, 305.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.audio.off",
													"fontname" : "Verdana",
													"id" : "obj-14",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 475.0, 112.0, 87.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade out when audio stop",
													"fontname" : "Verdana",
													"id" : "obj-15",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 59.0, 166.0, 18.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "line~ is able to handle this. gain~ and matrix~ is not.",
													"fontname" : "Verdana",
													"id" : "obj-16",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 95.0, 277.0, 18.0 ],
													"fontsize" : 9.873845
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p gain",
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 3,
									"numoutlets" : 2,
									"patching_rect" : [ 179.0, 227.0, 156.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 760.0, 83.0, 313.0, 433.0 ],
										"bglocked" : 0,
										"defrect" : [ 760.0, 83.0, 313.0, 433.0 ],
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
													"maxclass" : "inlet",
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 180.0, 45.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 64.0, 318.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 93.0, 318.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 64.0, 44.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-5",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 93.0, 44.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"id" : "obj-7",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 65.0, 130.0, 22.0, 122.0 ],
													"outlettype" : [ "signal", "int" ],
													"orientation" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"id" : "obj-8",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 94.0, 131.0, 22.0, 122.0 ],
													"outlettype" : [ "signal", "int" ],
													"orientation" : 2
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p record",
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 3,
									"numoutlets" : 0,
									"patching_rect" : [ 365.0, 366.0, 139.0, 18.0 ],
									"fontsize" : 9.873845,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 316.0, 274.0, 948.0, 558.0 ],
										"bglocked" : 0,
										"defrect" : [ 316.0, 274.0, 948.0, 558.0 ],
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
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 453.0, 203.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Verdana",
													"id" : "obj-2",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 453.0, 225.0, 36.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /samptype",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 479.0, 132.0, 115.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "FROM REMOTE:",
													"fontname" : "Verdana",
													"id" : "obj-4",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 282.0, 86.0, 18.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 0: stops recording.",
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 459.0, 265.0, 18.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record (filename): starts recording to the sound file specified",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 430.0, 259.0, 30.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 1: starts recording to a previously specified sound file. If no sound file has been specified, it's to bad...",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 400.0, 305.0, 30.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 370.0, 265.0, 30.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open filename: open the soundfile specified, but do not start recording",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-9",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 341.0, 265.0, 30.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
													"linecount" : 3,
													"fontname" : "Verdana",
													"id" : "obj-10",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 549.0, 299.0, 265.0, 42.0 ],
													"fontsize" : 9.873845
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack open aiff",
													"fontname" : "Verdana",
													"id" : "obj-11",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 261.0, 147.0, 120.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /filetype",
													"fontname" : "Verdana",
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 371.0, 87.0, 123.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_record",
													"fontname" : "Verdana",
													"id" : "obj-13",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 261.0, 92.0, 92.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"id" : "obj-14",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 261.0, 121.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-15",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 371.0, 60.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 91.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-17",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 153.0, 91.0, 15.0, 15.0 ],
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sfrecord~ 2",
													"fontname" : "Verdana",
													"id" : "obj-18",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 278.0, 83.0, 18.0 ],
													"fontsize" : 9.873845,
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- required to avoid an error message during initialisation",
													"fontname" : "Verdana",
													"id" : "obj-19",
													"numinlets" : 1,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0,
													"patching_rect" : [ 504.0, 214.0, 298.0, 18.0 ],
													"fontsize" : 9.873845
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 326.5, 192.0, 257.0, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 221.0, 257.0, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 267.0, 262.5, 267.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 36.0, 68.0, 334.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-5", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-11", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 4 ],
									"destination" : [ "obj-4", 2 ],
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
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 3 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-16", 0 ],
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
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"presentation_rect" : [ 51.0, 28.0, 160.0, 52.0 ],
					"id" : "obj-87",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 18.0, 160.0, 52.0 ],
					"pic" : "jcom.bg.hgain.pct",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-88",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.0, 446.0, 20.0, 20.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-89",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 335.0, 355.0, 20.0, 20.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-- audio in --",
					"fontname" : "Verdana",
					"id" : "obj-91",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 175.0, 190.0, 79.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"fontname" : "Verdana",
					"presentation_rect" : [ 44.0, 98.0, 61.0, 19.0 ],
					"id" : "obj-92",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 59.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "SaturationToggle",
					"presentation_rect" : [ 30.0, 95.0, 75.0, 18.0 ],
					"id" : "obj-93",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 810.0, 132.0, 18.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "LimiterToggle",
					"presentation_rect" : [ 30.0, 112.0, 75.0, 18.0 ],
					"id" : "obj-94",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 805.0, 190.0, 18.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.2",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-95",
					"numinlets" : 1,
					"has_panel" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 315.0, 52.0, 315.0, 52.0, 316.0, 49.5, 316.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 2 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 186.5, 255.0, 34.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 354.0, 114.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-85", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-85", 2 ],
					"hidden" : 0,
					"midpoints" : [ 171.5, 284.0, 205.5, 284.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.5, 130.0, 347.0, 130.0, 347.0, 24.0, 364.5, 24.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 392.0, 344.5, 392.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 392.0, 344.5, 392.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 392.0, 344.5, 392.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 1 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
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
 ]
	}

}
