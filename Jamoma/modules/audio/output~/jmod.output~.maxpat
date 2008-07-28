{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 41.0, 71.0, 1347.0, 646.0 ],
		"bglocked" : 0,
		"defrect" : [ 41.0, 71.0, 1347.0, 646.0 ],
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
					"maxclass" : "slider",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 50.0, 62.0, 165.0, 19.0 ],
					"size" : 157.0,
					"patching_rect" : [ 355.0, 55.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "RecordButton",
					"prototypename" : "jamoma on off",
					"numoutlets" : 3,
					"mode" : 1,
					"bgoveroncolor" : [ 0.8, 0.003922, 0.003922, 1.0 ],
					"border" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ],
					"text" : "Record",
					"bgoncolor" : [ 0.964706, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 230.0, 25.0, 61.0, 19.0 ],
					"texton" : "Record",
					"fontsize" : 10.0,
					"patching_rect" : [ 390.0, 330.0, 51.466908, 17.933016 ],
					"numinlets" : 1,
					"presentation" : 1,
					"rounded" : 8.0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "DSP_Status",
					"prototypename" : "jamoma open",
					"numoutlets" : 3,
					"border" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ],
					"text" : "DSP",
					"presentation_rect" : [ 230.0, 1.0, 45.0, 17.0 ],
					"texton" : "recording",
					"fontsize" : 10.0,
					"patching_rect" : [ 830.0, 400.0, 35.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"rounded" : 8.0,
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 315.0, 46.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 156.0, 80.0, 204.0, 171.0 ],
						"bglocked" : 0,
						"defrect" : [ 156.0, 80.0, 204.0, 171.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "DC blocker",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 130.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 195.0, 67.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-12",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 95.0, 130.0, 49.0, 18.0 ],
									"patching_rect" : [ 115.0, 195.0, 137.0, 18.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-9",
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 1 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 35.0, 355.0, 116.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "front" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 35.0, 330.0, 44.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 295.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Lookahead",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 110.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 165.0, 67.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-10",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Postamp",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 90.0, 60.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 130.0, 60.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-8",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mode",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 50.0, 37.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 95.0, 58.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-6",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Limiter details",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 15.0, 96.0, 21.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 20.0, 10.0, 165.0, 21.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-5",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Threshold",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 20.0, 70.0, 62.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 50.0, 62.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-4",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/active[1]",
									"text" : "jcom.parameter limiter/dcblocker/active @type msg_toggle @description \"DC Blocker: Active or bypassed.\"",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 195.0, 553.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-98"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "" ],
									"presentation_rect" : [ 95.0, 50.0, 92.0, 19.0 ],
									"items" : [ "exponential", ",", "linear" ],
									"fontsize" : 10.0,
									"labelclick" : 1,
									"types" : [  ],
									"patching_rect" : [ 90.0, 91.5, 66.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triangle" : 0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"presentation_rect" : [ 95.0, 70.0, 46.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 113.0, 50.5, 46.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"triangle" : 0,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"minimum" : 0,
									"triscale" : 0.9,
									"presentation_rect" : [ 95.0, 110.0, 46.0, 19.0 ],
									"maximum" : 256,
									"fontsize" : 10.0,
									"patching_rect" : [ 113.0, 166.5, 46.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/mode",
									"text" : "jcom.parameter limiter/mode @type msg_symbol @description \"Limiter: Set the function to be used for calculating the scaling.\"",
									"linecount" : 2,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 83.5, 333.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/threshold",
									"text" : "jcom.parameter limiter/threshold @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Set threshold as dB.\"",
									"linecount" : 2,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 41.5, 440.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/lookahead",
									"text" : "jcom.parameter limiter/lookahead @ramp/drive scheduler @range/bounds 0 256 @range/clipmode both @type msg_int @description \"Limiter: The number of samples to look ahead.\"",
									"linecount" : 2,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 157.5, 538.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/postamp",
									"text" : "jcom.parameter limiter/postamp @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Postamp as dB.\"",
									"linecount" : 2,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 120.5, 417.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triangle" : 0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"presentation_rect" : [ 95.0, 90.0, 46.0, 19.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 114.0, 128.5, 46.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"presentation_rect" : [ 15.0, 10.0, 175.0, 25.0 ],
									"patching_rect" : [ 7.0, 6.0, 155.0, 25.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"rounded" : 15,
									"id" : "obj-19"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"linecount" : 2,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 40.0, 275.0, 83.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p bugs?",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 295.0, 465.0, 52.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-4",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 51.0, 294.0, 271.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- record (filename): starts recording to the sound file specified",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 51.0, 265.0, 209.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- record 1: starts recording to a previously specified sound file. If no sound file is psecified, it's to bad...",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 51.0, 235.0, 275.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 51.0, 205.0, 253.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- open filename: open the soundfile specified, but do not start recording",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 51.0, 176.0, 249.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-13",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 51.0, 134.0, 271.0, 43.0 ],
									"numinlets" : 1,
									"id" : "obj-14",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- left channel jcom-meter~ tends to die",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 51.0, 115.0, 249.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bugs/required fixes:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 100.0, 111.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-68",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"A generic module for stereo audio output. Includes saturation , limiter and recording device\"",
					"linecount" : 3,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 445.0, 232.0, 43.0 ],
					"numinlets" : 1,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"presentation_rect" : [ 50.0, 46.0, 165.0, 15.0 ],
					"patching_rect" : [ 105.0, 375.0, 125.0, 12.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numoutlets" : 0,
					"presentation_rect" : [ 50.0, 30.0, 165.0, 15.0 ],
					"patching_rect" : [ 105.0, 353.0, 125.0, 12.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 880.0, 195.0, 150.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-97",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 225.0, 405.0, 139.0, 29.0 ],
					"numinlets" : 2,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numoutlets" : 4,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 145.0, 185.0, 64.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain",
					"text" : "jcom.parameter audio/gain @type msg_float @range/bounds 0 157 @range/clipmode both @ramp/drive scheduler @dataspace gain @dataspace/unit/active midi @dataspace/unit/native midi @description \"master gain\"",
					"linecount" : 4,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 355.0, 79.0, 326.0, 55.0 ],
					"numinlets" : 1,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dsp_status @description \" Open DSP Status window.\"",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 830.0, 422.0, 355.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 45.0, 405.0, 137.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 248.0, 49.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /open",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 225.0, 99.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record",
					"text" : "jcom.parameter record @type msg_toggle @description \"record to a sound file\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 390.0, 285.0, 235.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_xxx_record",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 390.0, 360.0, 94.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Release (ms)",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 114.0, 77.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 710.0, 270.0, 75.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-25",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Preamp (dB)",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 94.0, 74.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 710.0, 230.0, 72.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-27",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/active",
					"text" : "jcom.parameter limiter/active @type msg_toggle @description \"Limiter: Active or bypassed.\"",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 825.0, 190.0, 479.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Release",
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"triscale" : 0.9,
					"presentation_rect" : [ 230.0, 114.0, 60.0, 19.0 ],
					"maximum" : 10000.0,
					"fontsize" : 10.0,
					"patching_rect" : [ 785.0, 270.0, 39.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Preamp",
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"triscale" : 0.9,
					"presentation_rect" : [ 230.0, 94.0, 60.0, 19.0 ],
					"maximum" : 48.0,
					"fontsize" : 10.0,
					"patching_rect" : [ 785.0, 230.0, 36.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sound File Record",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 333.0, 147.0, 186.0, 19.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-37",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/release",
					"text" : "jcom.parameter limiter/release @ramp/drive scheduler @type msg_float @range/bounds 0 3000 @range/clipmode low @description \"Limiter: Set release time as ms.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 830.0, 265.0, 461.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/preamp",
					"text" : "jcom.parameter limiter/preamp @ramp/drive scheduler @range/bounds 0 48 @range/clipmode none @type msg_float @description \"Limiter: Preamp as dB.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 830.0, 225.0, 411.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 25.0, 114.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 735.0, 190.0, 61.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-44",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter (not all parameters are exposed in the interface : see panel)",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 825.0, 165.0, 354.0, 19.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-45",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 810.0, 35.0, 188.0, 19.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-46",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/active",
					"text" : "jcom.parameter saturation/active @type msg_toggle @description \"Saturation: Active or bypassed.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 830.0, 124.0, 419.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/depth",
					"text" : "jcom.parameter saturation/depth @ramp/drive scheduler @repetitions/allow 0 @type msg_float @range/bounds 0 99 @range/clipmode both @description \"Saturation: Depth.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 830.0, 81.0, 460.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "SaturationDepth",
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 85.0, 94.0, 30.0, 19.0 ],
					"maximum" : 99,
					"fontsize" : 10.0,
					"patching_rect" : [ 785.0, 89.0, 21.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "%",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 115.0, 94.0, 19.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 810.0, 89.0, 19.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-52",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/samptype",
					"text" : "jcom.parameter record/samptype @type msg_symbol @description \"Recording: Set sample type for sound files.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 388.0, 240.0, 304.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/filetype",
					"text" : "jcom.parameter record/filetype @type msg_symbol @description \"Recording: Set file type for sound files.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 388.0, 202.0, 283.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p FileTypes",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "clear" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 325.0, 180.0, 63.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-56",
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
									"patching_rect" : [ 60.0, 265.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 60.0, 218.0, 89.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jcom.init",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 60.0, 60.0, 59.0, 18.0 ],
									"numinlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 111.0, 175.0, 100.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave, sd2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 60.0, 192.0, 125.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "clear" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 222.0, 164.0, 40.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel macintosh windows",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 60.0, 151.0, 122.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route os",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 60.0, 130.0, 49.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "js jcom.js_systeminfo.js",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 60.0, 99.0, 129.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-9"
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
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
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
					"maxclass" : "umenu",
					"varname" : "FiletypeMenu",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 230.0, 45.0, 60.0, 19.0 ],
					"items" : [ "aiff", ",", "au", ",", "raw", ",", "wave", ",", "sd2" ],
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 325.0, 209.0, 61.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "SamptypeMenu",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 230.0, 65.0, 60.0, 19.0 ],
					"items" : [ "int8", ",", "int16", ",", "int24", ",", "int32", ",", "float32", ",", "float64", ",", "mulaw", ",", "alaw" ],
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 325.0, 245.0, 61.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 188.0, 150.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"id" : "obj-60",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 145.0, 150.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"id" : "obj-61",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP and dac~ settings",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 410.0, 180.0, 186.0, 19.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-67",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_2",
					"text" : "jcom.parameter ch.2 @type msg_int @description \" Set logical output for right channel.\"",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 830.0, 368.0, 460.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-72"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_1",
					"text" : "jcom.parameter ch.1 @type msg_int @description \" Set logical output for left channel.\"",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 830.0, 338.0, 452.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-73"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Right",
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"triscale" : 0.9,
					"presentation_rect" : [ 5.0, 45.0, 30.0, 19.0 ],
					"maximum" : 512,
					"fontsize" : 10.0,
					"patching_rect" : [ 790.0, 367.0, 30.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Left",
					"numoutlets" : 2,
					"triangle" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"triscale" : 0.9,
					"presentation_rect" : [ 5.0, 25.0, 30.0, 19.0 ],
					"maximum" : 512,
					"fontsize" : 10.0,
					"patching_rect" : [ 790.0, 338.0, 30.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-76"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 185.0, 405.0, 39.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-81"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Volume",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 409.0, 34.0, 48.0, 19.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-83",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Sound_processing",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 105.0, 314.0, 110.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-85",
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
									"text" : "jcom.oscroute /saturation /limiter /audio/gain /record",
									"numoutlets" : 5,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 325.0, 119.0, 280.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 340.0, 370.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 111.0, 366.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p dac",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 179.0, 366.0, 162.0, 19.0 ],
									"numinlets" : 3,
									"id" : "obj-4",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 59.0, 724.0, 623.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 59.0, 724.0, 623.0 ],
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
													"text" : "jcom.return audio/amplitude/follower.2 @range/bounds 0. 1. @enable 0 @description \"instant amplitude of the signal number 2\"",
													"linecount" : 3,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 265.0, 125.0, 246.0, 43.0 ],
													"numinlets" : 1,
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return audio/amplitude/follower.1 @range/bounds 0. 1. @enable 0 @description \"instant amplitude of the signal number 1\"",
													"linecount" : 3,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 265.0, 180.0, 246.0, 43.0 ],
													"numinlets" : 1,
													"id" : "obj-15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t open",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "open" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 230.0, 363.0, 41.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_dac",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 30.0, 386.0, 79.0, 19.0 ],
													"numinlets" : 0,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 170.0, 55.0, 27.0, 27.0 ],
													"numinlets" : 0,
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 107.0, 55.0, 27.0, 27.0 ],
													"numinlets" : 0,
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 434.0, 455.0, 27.0, 27.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 366.0, 363.0, 68.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 298.0, 363.0, 68.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.0, 55.0, 27.0, 27.0 ],
													"numinlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /dsp_status /ch.1 /ch.2",
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 230.0, 335.0, 220.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dac~ 1 2",
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 107.0, 441.0, 85.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-10"
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
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p limiter",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 179.0, 198.0, 156.0, 19.0 ],
									"numinlets" : 3,
									"id" : "obj-5",
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
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 521.0, 149.0, 88.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 521.0, 128.0, 35.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 521.0, 107.0, 117.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /preamp /postamp /threshold /lookahead /release /mode",
													"numoutlets" : 7,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "", "", "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 215.0, 79.0, 352.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 215.0, 46.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 256.0, 24.0, 24.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 72.0, 256.0, 24.0, 24.0 ],
													"numinlets" : 1,
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 172.0, 46.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 72.0, 46.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-9",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tt.limiter~ @bypass_dcblocker 1",
													"linecount" : 2,
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "signal", "signal", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 72.0, 202.0, 117.0, 31.0 ],
													"numinlets" : 2,
													"id" : "obj-10"
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
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 179.0, 169.0, 160.0, 19.0 ],
									"numinlets" : 3,
									"id" : "obj-6",
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
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 396.0, 209.0, 88.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 396.0, 186.0, 35.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 396.0, 164.0, 117.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr 1./(1. \"-\" $f1*0.01)",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 266.0, 121.0, 134.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 136.0, 309.0, 24.0, 24.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 172.0, 309.0, 24.0, 24.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 208.0, 50.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-7",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 136.0, 50.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-8",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend overdrive",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 266.0, 151.0, 100.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /depth",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 266.0, 75.0, 142.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 266.0, 50.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-11",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tt.overdrive~",
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "signal", "signal", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 135.0, 270.0, 96.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-12"
												}

											}
 ],
										"lines" : [ 											{
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
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-1", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 32.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-7",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 252.0, 136.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-8",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 179.0, 136.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-9",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p smooth_in_out",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 179.0, 290.0, 94.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-10",
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
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 475.0, 163.0, 31.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 410.0, 140.0, 32.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 319.0, 270.0, 27.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 284.0, 270.0, 27.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0, 1 10",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 410.0, 163.0, 45.0, 17.0 ],
													"numinlets" : 2,
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line~",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "signal", "bang" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 410.0, 189.0, 34.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "float", "int", "int" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 410.0, 112.0, 59.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "NOTE: This fade is not displayed in the GUI.",
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 94.0, 334.0, 231.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade in when audio start",
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 24.0, 75.0, 162.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 319.0, 41.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-10",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 284.0, 41.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-11",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 319.0, 305.0, 24.0, 24.0 ],
													"numinlets" : 1,
													"id" : "obj-12",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 284.0, 305.0, 24.0, 24.0 ],
													"numinlets" : 1,
													"id" : "obj-13",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.audio.off",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 475.0, 112.0, 88.0, 19.0 ],
													"numinlets" : 0,
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade out when audio stop",
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 24.0, 59.0, 168.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-15",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "line~ is able to handle this. gain~ and matrix~ is not.",
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 24.0, 95.0, 281.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-16",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
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
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p gain",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "signal", "signal" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 179.0, 227.0, 160.0, 19.0 ],
									"numinlets" : 3,
									"id" : "obj-11",
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
													"outlettype" : [ "" ],
													"patching_rect" : [ 180.0, 45.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 64.0, 318.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 93.0, 318.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 64.0, 44.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 93.0, 44.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"numoutlets" : 2,
													"orientation" : 2,
													"outlettype" : [ "signal", "int" ],
													"patching_rect" : [ 65.0, 130.0, 22.0, 122.0 ],
													"numinlets" : 2,
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"numoutlets" : 2,
													"orientation" : 2,
													"outlettype" : [ "signal", "int" ],
													"patching_rect" : [ 94.0, 131.0, 22.0, 122.0 ],
													"numinlets" : 2,
													"id" : "obj-8"
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
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p record",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 365.0, 366.0, 139.0, 19.0 ],
									"numinlets" : 3,
									"id" : "obj-12",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 316.0, 274.0, 936.0, 523.0 ],
										"bglocked" : 0,
										"defrect" : [ 316.0, 274.0, 936.0, 523.0 ],
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
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "bang" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 453.0, 203.0, 22.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 453.0, 225.0, 36.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /samptype",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 479.0, 132.0, 116.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "FROM REMOTE:",
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 549.0, 282.0, 87.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-4",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 0: stops recording.",
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 549.0, 459.0, 269.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-5",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record (filename): starts recording to the sound file specified",
													"linecount" : 2,
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 549.0, 430.0, 262.0, 31.0 ],
													"numinlets" : 1,
													"id" : "obj-6",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 1: starts recording to a previously specified sound file. If no sound file has been specified, it's to bad...",
													"linecount" : 2,
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 549.0, 400.0, 308.0, 31.0 ],
													"numinlets" : 1,
													"id" : "obj-7",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
													"linecount" : 2,
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 549.0, 370.0, 269.0, 31.0 ],
													"numinlets" : 1,
													"id" : "obj-8",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open filename: open the soundfile specified, but do not start recording",
													"linecount" : 2,
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 549.0, 341.0, 269.0, 31.0 ],
													"numinlets" : 1,
													"id" : "obj-9",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
													"linecount" : 3,
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 549.0, 299.0, 270.0, 43.0 ],
													"numinlets" : 1,
													"id" : "obj-10",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack open aiff",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 261.0, 147.0, 122.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /filetype",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 371.0, 87.0, 125.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_record",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 261.0, 92.0, 93.0, 19.0 ],
													"numinlets" : 0,
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 261.0, 121.0, 32.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 371.0, 46.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-15",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 80.0, 46.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-16",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 153.0, 46.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"id" : "obj-17",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sfrecord~ 2",
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ],
													"fontsize" : 10.0,
													"patching_rect" : [ 80.0, 278.0, 83.0, 19.0 ],
													"numinlets" : 2,
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- required to avoid an error message during initialisation",
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"fontsize" : 10.0,
													"patching_rect" : [ 504.0, 214.0, 302.0, 19.0 ],
													"numinlets" : 1,
													"id" : "obj-19",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
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
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana"
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
									"midpoints" : [ 329.5, 192.0, 257.0, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 221.0, 259.0, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [ 329.5, 267.0, 263.5, 267.0 ]
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
									"midpoints" : [ 36.5, 68.0, 334.5, 68.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
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
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 496.0, 24.0, 24.0 ],
					"numinlets" : 1,
					"id" : "obj-88",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 405.0, 24.0, 24.0 ],
					"numinlets" : 0,
					"id" : "obj-89",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-- audio in --",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 215.0, 150.0, 79.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-91",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 25.0, 94.0, 63.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 760.0, 59.0, 61.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-92",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "SaturationToggle",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 10.0, 94.0, 75.0, 18.0 ],
					"patching_rect" : [ 810.0, 132.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"id" : "obj-93",
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
					"outlettype" : [ "" ],
					"presentation_rect" : [ 10.0, 114.0, 75.0, 18.0 ],
					"patching_rect" : [ 805.0, 190.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"id" : "obj-94",
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"presentation_rect" : [ 5.0, 90.0, 290.0, 45.0 ],
					"patching_rect" : [ 45.0, 95.0, 190.0, 30.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"presentation_rect" : [ 40.0, 25.0, 185.0, 60.0 ],
					"patching_rect" : [ 45.0, 25.0, 190.0, 40.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"has_panel" : 1,
					"id" : "obj-95"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 194.5, 442.0, 29.5, 442.0 ]
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 442.0, 29.5, 442.0 ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 399.5, 353.0, 375.0, 353.0, 375.0, 282.0, 399.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-24", 0 ],
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
					"midpoints" : [ 184.5, 210.0, 34.5, 210.0 ]
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
					"midpoints" : [ 169.5, 239.0, 205.5, 239.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.5, 135.0, 342.0, 135.0, 342.0, 51.0, 364.5, 51.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
