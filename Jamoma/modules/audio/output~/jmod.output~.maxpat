{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 23.0, 44.0, 1339.0, 561.0 ],
		"bglocked" : 0,
		"defrect" : [ 23.0, 44.0, 1339.0, 561.0 ],
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
					"numoutlets" : 0,
					"id" : "obj-10",
					"patching_rect" : [ 40.0, 315.0, 50.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1,
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
									"numoutlets" : 2,
									"id" : "obj-16",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 350.0, 100.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "front" ],
									"patching_rect" : [ 40.0, 325.0, 36.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "front" ],
									"patching_rect" : [ 40.0, 305.0, 36.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 270.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "DC-blocker :",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 145.0, 95.0, 88.0, 23.0 ],
									"id" : "obj-11",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 5.0, 210.0, 88.0, 23.0 ],
									"fontsize" : 14.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Lookahead",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 30.0, 95.0, 60.0, 18.0 ],
									"id" : "obj-10",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 10.0, 165.0, 60.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Postamp",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 145.0, 60.0, 55.0, 18.0 ],
									"id" : "obj-8",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 10.0, 130.0, 55.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mode",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 90.0, 20.0, 55.0, 18.0 ],
									"id" : "obj-6",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 10.0, 95.0, 55.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Limiter",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 15.0, 15.0, 54.0, 23.0 ],
									"id" : "obj-5",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 5.0, 5.0, 54.0, 23.0 ],
									"fontsize" : 14.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Threshold",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"presentation_rect" : [ 30.0, 60.0, 55.0, 18.0 ],
									"id" : "obj-4",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 10.0, 50.0, 55.0, 18.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"presentation_rect" : [ 230.0, 95.0, 20.0, 20.0 ],
									"id" : "obj-2",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 120.0, 210.0, 20.0, 20.0 ],
									"presentation" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/active[1]",
									"text" : "jcom.parameter dcblocker/active @type msg_toggle @description \"DC Blocker: Active or bypassed.\"",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-98",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 150.0, 210.0, 519.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"presentation_rect" : [ 145.0, 20.0, 92.0, 19.0 ],
									"id" : "obj-29",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"patching_rect" : [ 90.0, 91.5, 66.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"labelclick" : 1,
									"items" : [ "exponential", ",", "linear" ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"presentation_rect" : [ 90.0, 60.0, 45.0, 19.0 ],
									"id" : "obj-32",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"patching_rect" : [ 113.0, 50.5, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"triangle" : 0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"maximum" : 256,
									"presentation_rect" : [ 90.0, 95.0, 45.0, 19.0 ],
									"id" : "obj-34",
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"patching_rect" : [ 113.0, 166.5, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"triangle" : 0,
									"numinlets" : 1,
									"minimum" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/mode",
									"text" : "jcom.parameter limiter/mode @type msg_symbol @description \"Limiter: Set the function to be used for calculating the scaling.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-38",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 160.0, 83.5, 333.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/threshold",
									"text" : "jcom.parameter limiter/threshold @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Set threshold as dB.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-39",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 160.0, 41.5, 440.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/lookahead",
									"text" : "jcom.parameter limiter/lookahead @ramp/drive scheduler @range/bounds 0 256 @range/clipmode both @type msg_int @description \"Limiter: The number of samples to look ahead.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-41",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 160.0, 157.5, 512.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/postamp",
									"text" : "jcom.parameter limiter/postamp @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Postamp as dB.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-42",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 160.0, 120.5, 417.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"presentation_rect" : [ 130.0, 85.0, 133.0, 40.0 ],
									"id" : "obj-18",
									"shadow" : 5,
									"patching_rect" : [ 81.0, 186.0, 155.0, 25.0 ],
									"presentation" : 1,
									"rounded" : 15,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"presentation_rect" : [ 205.0, 60.0, 45.0, 19.0 ],
									"id" : "obj-35",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"patching_rect" : [ 114.0, 128.5, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"presentation" : 1,
									"triangle" : 0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"presentation_rect" : [ 5.0, 10.0, 75.0, 33.0 ],
									"id" : "obj-19",
									"shadow" : 5,
									"patching_rect" : [ 7.0, 6.0, 155.0, 25.0 ],
									"presentation" : 1,
									"rounded" : 15,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"presentation_rect" : [ 0.0, 0.0, 267.0, 130.0 ],
									"id" : "obj-15",
									"patching_rect" : [ 115.0, 5.0, 155.0, 25.0 ],
									"presentation" : 1,
									"rounded" : 15,
									"numinlets" : 1
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
					"numoutlets" : 2,
					"id" : "obj-6",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 40.0, 275.0, 83.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p bugs?",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-4",
					"patching_rect" : [ 350.0, 465.0, 56.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 0,
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
									"numoutlets" : 0,
									"id" : "obj-9",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 51.0, 294.0, 271.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- record (filename): starts recording to the sound file specified",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-10",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 51.0, 265.0, 209.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- record 1: starts recording to a previously specified sound file. If no sound file is psecified, it's to bad...",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-11",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 51.0, 235.0, 275.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-12",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 51.0, 205.0, 253.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- open filename: open the soundfile specified, but do not start recording",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-13",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 51.0, 176.0, 249.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-14",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 51.0, 134.0, 271.0, 43.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- left channel jcom-meter~ tends to die",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-23",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 51.0, 115.0, 249.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bugs/required fixes:",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"id" : "obj-68",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"patching_rect" : [ 50.0, 100.0, 111.0, 19.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1
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
					"numoutlets" : 2,
					"id" : "obj-22",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 20.0, 445.0, 256.0, 43.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"presentation_rect" : [ 58.0, 53.0, 125.0, 12.0 ],
					"id" : "obj-3",
					"patching_rect" : [ 105.0, 375.0, 125.0, 12.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"presentation_rect" : [ 58.0, 36.0, 125.0, 12.0 ],
					"id" : "obj-2",
					"patching_rect" : [ 105.0, 353.0, 125.0, 12.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-97",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 880.0, 195.0, 150.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.0, 405.0, 139.0, 29.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 355.0, 110.0, 54.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"id" : "obj-7",
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 147.0, 181.0, 64.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain",
					"text" : "jcom.parameter audio/gain @dataspace gain @dataspace/unit/native midi @dataspace/unit/active midi @description \"master gain\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-8",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 355.0, 79.0, 366.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dsp_status @description \" Open DSP Status window.\"",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-15",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 830.0, 422.0, 355.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 405.0, 137.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 248.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /open",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-18",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 25.0, 225.0, 99.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"varname" : "gain_master",
					"topvalue" : 0,
					"bkgndpict" : "jcom.slider.ch.bg.pct",
					"numoutlets" : 2,
					"presentation_rect" : [ 51.0, 80.0, 161.0, 13.0 ],
					"id" : "obj-20",
					"bkgndsize" : 1,
					"rightmargin" : 2,
					"outlettype" : [ "int", "int" ],
					"inactiveimage" : 0,
					"leftmargin" : 2,
					"patching_rect" : [ 355.0, 59.0, 161.0, 13.0 ],
					"presentation" : 1,
					"rightvalue" : 157,
					"knobpict" : "jcom.slider.ch.knob.bottom.pct",
					"movevertical" : 0,
					"numinlets" : 2,
					"imagemask" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record",
					"text" : "jcom.parameter record @type msg_toggle @description \"record to a sound file\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-21",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 390.0, 270.0, 235.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_xxx_record",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-24",
					"patching_rect" : [ 355.0, 305.0, 94.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Release (ms)",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 171.0, 115.0, 75.0, 19.0 ],
					"id" : "obj-25",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 710.0, 270.0, 75.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Preamp (dB)",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 171.0, 98.0, 72.0, 19.0 ],
					"id" : "obj-27",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 710.0, 230.0, 72.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/active",
					"text" : "jcom.parameter limiter/active @type msg_toggle @description \"Limiter: Active or bypassed.\"",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-31",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 825.0, 190.0, 479.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Release",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"maximum" : 10000.0,
					"presentation_rect" : [ 240.0, 113.0, 39.0, 19.0 ],
					"id" : "obj-33",
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"patching_rect" : [ 785.0, 270.0, 39.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"numinlets" : 1,
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Preamp",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"maximum" : 48.0,
					"presentation_rect" : [ 240.0, 96.0, 36.0, 19.0 ],
					"id" : "obj-36",
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"patching_rect" : [ 785.0, 230.0, 36.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"numinlets" : 1,
					"minimum" : 0.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sound File Record",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-37",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 333.0, 132.0, 186.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/release",
					"text" : "jcom.parameter limiter/release @ramp/drive scheduler @type msg_float @range/bounds 0 3000 @range/clipmode low @description \"Limiter: Set release time as ms.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-40",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 830.0, 265.0, 461.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/preamp",
					"text" : "jcom.parameter limiter/preamp @ramp/drive scheduler @range/bounds 0 48 @range/clipmode none @type msg_float @description \"Limiter: Preamp as dB.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-43",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 830.0, 225.0, 411.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 44.0, 115.0, 61.0, 19.0 ],
					"id" : "obj-44",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 735.0, 190.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter (not all parameters are exposed in the interface : see panel)",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-45",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 825.0, 165.0, 354.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-46",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 810.0, 35.0, 188.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/active",
					"text" : "jcom.parameter saturation/active @type msg_toggle @description \"Saturation: Active or bypassed.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-47",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 830.0, 124.0, 419.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/depth",
					"text" : "jcom.parameter saturation/depth @ramp/drive scheduler @repetitions/allow 0 @type msg_float @range/bounds 0 99 @range/clipmode both @description \"Saturation: Depth.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-50",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 830.0, 81.0, 460.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "SaturationDepth",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"maximum" : 99,
					"presentation_rect" : [ 105.0, 96.0, 21.0, 19.0 ],
					"id" : "obj-51",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"patching_rect" : [ 785.0, 89.0, 21.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"numinlets" : 1,
					"minimum" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "%",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 125.0, 98.0, 19.0, 19.0 ],
					"id" : "obj-52",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 810.0, 89.0, 19.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/samptype",
					"text" : "jcom.parameter record/samptype @type msg_symbol @description \"Recording: Set sample type for sound files.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-54",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 388.0, 225.0, 304.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/filetype",
					"text" : "jcom.parameter record/filetype @type msg_symbol @description \"Recording: Set file type for sound files.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-55",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 388.0, 187.0, 283.0, 31.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p FileTypes",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-56",
					"outlettype" : [ "clear" ],
					"patching_rect" : [ 325.0, 165.0, 63.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 0,
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
									"numoutlets" : 0,
									"id" : "obj-1",
									"patching_rect" : [ 60.0, 265.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 218.0, 89.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jcom.init",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 60.0, 59.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.0, 175.0, 100.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave, sd2",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 192.0, 125.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "clear" ],
									"patching_rect" : [ 222.0, 164.0, 40.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel macintosh windows",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"id" : "obj-7",
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 60.0, 151.0, 122.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route os",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 60.0, 130.0, 49.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "js jcom.js_systeminfo.js",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 99.0, 129.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
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
					"numoutlets" : 3,
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"presentation_rect" : [ 216.0, 56.0, 61.0, 19.0 ],
					"id" : "obj-57",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 325.0, 194.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"rounded" : 15,
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"items" : [ "aiff", ",", "au", ",", "raw", ",", "wave", ",", "sd2" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "SamptypeMenu",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ],
					"presentation_rect" : [ 216.0, 74.0, 61.0, 19.0 ],
					"id" : "obj-59",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 325.0, 230.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"rounded" : 15,
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"items" : [ "int8", ",", "int16", ",", "int24", ",", "int32", ",", "float32", ",", "float64", ",", "mulaw", ",", "alaw" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-60",
					"outlettype" : [ "" ],
					"patching_rect" : [ 190.0, 162.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-61",
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 162.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-64",
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.0, 35.0, 50.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "RecordButton",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 30.0, 45.0, 19.0 ],
					"id" : "obj-66",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 335.0, 270.0, 45.0, 19.0 ],
					"presentation" : 1,
					"jsarguments" : [ "Record", "Record", 68, 68, 68, 225, 225, 225, 255, 40, 40, 0, 0, 0 ],
					"filename" : "jcom.jsui_texttoggle.js",
					"nofsaa" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP and dac~ settings",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-67",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 410.0, 165.0, 186.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_2",
					"text" : "jcom.parameter ch.2 @type msg_int @description \" Set logical output for right channel.\"",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-72",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 830.0, 368.0, 460.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_1",
					"text" : "jcom.parameter ch.1 @type msg_int @description \" Set logical output for left channel.\"",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-73",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 830.0, 338.0, 452.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "DSP_Status",
					"numoutlets" : 1,
					"presentation_rect" : [ 221.0, 0.0, 45.0, 19.0 ],
					"id" : "obj-74",
					"outlettype" : [ "" ],
					"patching_rect" : [ 830.0, 400.0, 45.0, 19.0 ],
					"presentation" : 1,
					"jsarguments" : [ "DSP", 225, 225, 225, 68, 68, 68 ],
					"filename" : "jsui_textbutton.js",
					"nofsaa" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Right",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"maximum" : 512,
					"presentation_rect" : [ 7.0, 53.0, 30.0, 19.0 ],
					"id" : "obj-75",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"patching_rect" : [ 790.0, 367.0, 30.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"numinlets" : 1,
					"minimum" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Left",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"maximum" : 512,
					"presentation_rect" : [ 7.0, 36.0, 30.0, 19.0 ],
					"id" : "obj-76",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"patching_rect" : [ 790.0, 338.0, 30.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"numinlets" : 1,
					"minimum" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-81",
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 405.0, 39.0, 17.0 ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Volume",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-83",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 409.0, 34.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"numoutlets" : 1,
					"bgcolor" : [ 0.35294, 0.35294, 0.35294, 1.0 ],
					"id" : "obj-84",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 335.0, 305.0, 17.0, 17.0 ],
					"offcolor" : [ 0.0, 0.266667, 0.0, 1.0 ],
					"numinlets" : 1,
					"oncolor" : [ 0.0, 1.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Sound_processing",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-85",
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 105.0, 314.0, 110.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 3,
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
									"numoutlets" : 2,
									"id" : "obj-16",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 270.0, 390.0, 235.0, 60.0 ],
									"fontsize" : 10.970939,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return audio/amplitude/follower.1 @range/bounds 0. 1. @enable 0 @description \"instant amplitude of the signal number 1\"",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-15",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 20.0, 390.0, 235.0, 60.0 ],
									"fontsize" : 10.970939,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /saturation /limiter /audio/gain /record",
									"fontname" : "Verdana",
									"numoutlets" : 5,
									"id" : "obj-1",
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 325.0, 119.0, 276.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-2",
									"patching_rect" : [ 340.0, 370.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-3",
									"patching_rect" : [ 111.0, 366.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p dac",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 179.0, 366.0, 157.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
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
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "open" ],
													"patching_rect" : [ 230.0, 163.0, 40.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_dac",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 186.0, 78.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 180.0, 55.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 107.0, 55.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 434.0, 255.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"patching_rect" : [ 366.0, 163.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"patching_rect" : [ 298.0, 163.0, 68.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.0, 55.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /dsp_status /ch.1 /ch.2",
													"fontname" : "Verdana",
													"numoutlets" : 4,
													"id" : "obj-9",
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 230.0, 135.0, 216.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dac~ 1 2",
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-10",
													"patching_rect" : [ 107.0, 241.0, 83.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
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
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 179.0, 198.0, 156.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
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
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 521.0, 149.0, 87.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 521.0, 128.0, 34.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-3",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 521.0, 107.0, 116.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /preamp /postamp /threshold /lookahead /release /mode",
													"fontname" : "Verdana",
													"numoutlets" : 7,
													"id" : "obj-4",
													"outlettype" : [ "", "", "", "", "", "", "" ],
													"patching_rect" : [ 215.0, 79.0, 348.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"patching_rect" : [ 215.0, 46.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-6",
													"patching_rect" : [ 122.0, 256.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-7",
													"patching_rect" : [ 72.0, 256.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 172.0, 46.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 72.0, 46.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tt.limiter~ @bypass_dcblocker 1",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"id" : "obj-10",
													"outlettype" : [ "signal", "signal", "" ],
													"patching_rect" : [ 72.0, 202.0, 116.0, 30.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
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
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 179.0, 169.0, 157.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
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
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 396.0, 209.0, 87.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "int" ],
													"patching_rect" : [ 396.0, 186.0, 34.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-3",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 396.0, 164.0, 116.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr 1./(1. - $f1*0.01)",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"patching_rect" : [ 266.0, 121.0, 123.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 136.0, 309.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-6",
													"patching_rect" : [ 172.0, 309.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 208.0, 50.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 136.0, 50.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend overdrive",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "" ],
													"patching_rect" : [ 266.0, 151.0, 99.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /depth",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-10",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 266.0, 75.0, 140.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-11",
													"outlettype" : [ "" ],
													"patching_rect" : [ 266.0, 50.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.saturation~",
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"id" : "obj-12",
													"outlettype" : [ "signal", "signal", "" ],
													"patching_rect" : [ 136.0, 268.0, 94.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
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
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 32.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 252.0, 136.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 179.0, 136.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p smooth_in_out",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 179.0, 290.0, 93.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
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
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 475.0, 163.0, 31.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 410.0, 140.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 319.0, 270.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 284.0, 270.0, 27.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0, 1 10",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.0, 163.0, 44.0, 16.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line~",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-6",
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 410.0, 189.0, 34.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"fontname" : "Verdana",
													"numoutlets" : 4,
													"id" : "obj-7",
													"outlettype" : [ "int", "float", "int", "int" ],
													"patching_rect" : [ 410.0, 112.0, 59.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "NOTE: This fade is not displayed in the GUI.",
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-8",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 94.0, 334.0, 228.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade in when audio start",
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-9",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 24.0, 75.0, 161.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-10",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 319.0, 91.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-11",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 284.0, 91.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-12",
													"patching_rect" : [ 319.0, 305.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-13",
													"patching_rect" : [ 284.0, 305.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.audio.off",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-14",
													"outlettype" : [ "" ],
													"patching_rect" : [ 475.0, 112.0, 87.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade out when audio stop",
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-15",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 24.0, 59.0, 166.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "line~ is able to handle this. gain~ and matrix~ is not.",
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-16",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 24.0, 95.0, 277.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
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
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 179.0, 227.0, 156.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
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
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"patching_rect" : [ 180.0, 45.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-2",
													"patching_rect" : [ 64.0, 318.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"id" : "obj-3",
													"patching_rect" : [ 93.0, 318.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 64.0, 44.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 93.0, 44.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "signal", "int" ],
													"patching_rect" : [ 65.0, 130.0, 22.0, 122.0 ],
													"orientation" : 2,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"numoutlets" : 2,
													"id" : "obj-8",
													"outlettype" : [ "signal", "int" ],
													"patching_rect" : [ 94.0, 131.0, 22.0, 122.0 ],
													"orientation" : 2,
													"numinlets" : 2
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
									"numoutlets" : 0,
									"id" : "obj-12",
									"patching_rect" : [ 365.0, 366.0, 139.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 3,
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
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 453.0, 203.0, 22.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-2",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 453.0, 225.0, 36.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /samptype",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-3",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 479.0, 132.0, 115.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "FROM REMOTE:",
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-4",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 549.0, 282.0, 86.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 0: stops recording.",
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-5",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 549.0, 459.0, 265.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record (filename): starts recording to the sound file specified",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-6",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 549.0, 430.0, 259.0, 30.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 1: starts recording to a previously specified sound file. If no sound file has been specified, it's to bad...",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-7",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 549.0, 400.0, 305.0, 30.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-8",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 549.0, 370.0, 265.0, 30.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open filename: open the soundfile specified, but do not start recording",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-9",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 549.0, 341.0, 265.0, 30.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
													"linecount" : 3,
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-10",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 549.0, 299.0, 265.0, 42.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack open aiff",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-11",
													"outlettype" : [ "" ],
													"patching_rect" : [ 261.0, 147.0, 120.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /filetype",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-12",
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 371.0, 87.0, 123.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_record",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-13",
													"outlettype" : [ "" ],
													"patching_rect" : [ 261.0, 92.0, 92.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontname" : "Verdana",
													"numoutlets" : 2,
													"id" : "obj-14",
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 261.0, 121.0, 32.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-15",
													"outlettype" : [ "" ],
													"patching_rect" : [ 371.0, 60.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-16",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 80.0, 91.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"id" : "obj-17",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 153.0, 91.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sfrecord~ 2",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"id" : "obj-18",
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 80.0, 278.0, 83.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- required to avoid an error message during initialisation",
													"fontname" : "Verdana",
													"numoutlets" : 0,
													"id" : "obj-19",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"patching_rect" : [ 504.0, 214.0, 298.0, 18.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1
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
					"numoutlets" : 0,
					"presentation_rect" : [ 51.0, 28.0, 160.0, 52.0 ],
					"id" : "obj-87",
					"patching_rect" : [ 51.0, 18.0, 160.0, 52.0 ],
					"pic" : "jcom.bg.hgain.pct",
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-88",
					"patching_rect" : [ 20.0, 496.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"id" : "obj-89",
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 405.0, 20.0, 20.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-- audio in --",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-91",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 205.0, 160.0, 79.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 44.0, 98.0, 61.0, 19.0 ],
					"id" : "obj-92",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 760.0, 59.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "SaturationToggle",
					"numoutlets" : 1,
					"presentation_rect" : [ 30.0, 95.0, 75.0, 18.0 ],
					"id" : "obj-93",
					"outlettype" : [ "" ],
					"patching_rect" : [ 810.0, 132.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"numoutlets" : 1,
					"presentation_rect" : [ 30.0, 112.0, 75.0, 18.0 ],
					"id" : "obj-94",
					"outlettype" : [ "" ],
					"patching_rect" : [ 805.0, 190.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-95",
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_panel" : 1,
					"presentation" : 1,
					"numinlets" : 1
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
					"midpoints" : [ 114.5, 270.0, 52.0, 270.0, 52.0, 271.0, 49.5, 271.0 ]
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
					"midpoints" : [ 186.5, 210.0, 34.5, 210.0 ]
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
					"midpoints" : [ 34.5, 309.0, 114.5, 309.0 ]
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
					"midpoints" : [ 171.5, 239.0, 205.5, 239.0 ]
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
					"midpoints" : [ 54.5, 442.0, 29.5, 442.0 ]
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
					"midpoints" : [ 194.5, 442.0, 29.5, 442.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 234.5, 442.0, 29.5, 442.0 ]
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
