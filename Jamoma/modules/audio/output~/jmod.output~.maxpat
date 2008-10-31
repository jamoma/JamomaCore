{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 194.0, 210.0, 1347.0, 646.0 ],
		"bglocked" : 0,
		"defrect" : [ 194.0, 210.0, 1347.0, 646.0 ],
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
					"text" : "r #0_xxx_audio",
					"patching_rect" : [ 900.0, 465.0, 90.0, 18.0 ],
					"id" : "obj-5",
					"fontsize" : 9.873845,
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio[1]",
					"text" : "jcom.parameter audio/active @type msg_toggle @description \"Toggle audio on and off.\"",
					"patching_rect" : [ 830.0, 490.0, 456.0, 19.0 ],
					"id" : "obj-14",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button[1]",
					"patching_rect" : [ 830.0, 465.0, 60.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-17",
					"texton" : "Audio On",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"mode" : 1,
					"bgoncolor" : [ 0.54902, 0.54902, 0.54902, 1.0 ],
					"presentation_rect" : [ 221.0, 1.0, 60.0, 17.0 ],
					"numoutlets" : 3,
					"text" : "Audio Off",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 755.0, 90.0, 50.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"presentation_rect" : [ 85.0, 94.0, 40.0, 20.0 ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"patching_rect" : [ 355.0, 55.0, 150.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-35",
					"numinlets" : 1,
					"presentation_rect" : [ 50.0, 62.0, 165.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"size" : 157.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "RecordButton",
					"prototypename" : "jamoma on off",
					"patching_rect" : [ 390.0, 330.0, 51.466908, 17.933016 ],
					"presentation" : 1,
					"id" : "obj-11",
					"rounded" : 8.0,
					"texton" : "Record",
					"fontsize" : 10.0,
					"bgoveroncolor" : [ 0.8, 0.003922, 0.003922, 1.0 ],
					"numinlets" : 1,
					"mode" : 1,
					"border" : 1,
					"bgoncolor" : [ 0.964706, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 230.0, 25.0, 61.0, 19.0 ],
					"numoutlets" : 3,
					"text" : "Record",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "DSP_Status",
					"prototypename" : "jamoma open",
					"patching_rect" : [ 830.0, 400.0, 35.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-9",
					"rounded" : 8.0,
					"texton" : "recording",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"border" : 1,
					"presentation_rect" : [ 184.0, 1.0, 35.0, 17.0 ],
					"numoutlets" : 3,
					"text" : "DSP",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more",
					"patching_rect" : [ 25.0, 313.0, 46.0, 19.0 ],
					"id" : "obj-10",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
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
									"patching_rect" : [ 10.0, 195.0, 67.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-12",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 20.0, 130.0, 67.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 115.0, 195.0, 137.0, 18.0 ],
									"presentation" : 1,
									"id" : "obj-9",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 130.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
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
									"patching_rect" : [ 35.0, 355.0, 116.0, 19.0 ],
									"id" : "obj-16",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"patching_rect" : [ 35.0, 330.0, 44.0, 19.0 ],
									"id" : "obj-7",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 35.0, 295.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Lookahead",
									"patching_rect" : [ 10.0, 165.0, 67.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-10",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 20.0, 110.0, 67.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Postamp",
									"patching_rect" : [ 10.0, 130.0, 60.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-8",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 20.0, 90.0, 60.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mode",
									"patching_rect" : [ 10.0, 95.0, 58.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-6",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 20.0, 50.0, 37.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Limiter details",
									"patching_rect" : [ 20.0, 10.0, 165.0, 21.0 ],
									"presentation" : 1,
									"id" : "obj-5",
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 20.0, 15.0, 96.0, 21.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Threshold",
									"patching_rect" : [ 10.0, 50.0, 62.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-4",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"presentation_rect" : [ 20.0, 70.0, 62.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/active[1]",
									"text" : "jcom.parameter limiter/dcblocker/active @type msg_toggle @description \"DC Blocker: Active or bypassed.\"",
									"patching_rect" : [ 160.0, 195.0, 553.0, 19.0 ],
									"id" : "obj-98",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 90.0, 91.5, 66.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-29",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"labelclick" : 1,
									"presentation_rect" : [ 95.0, 50.0, 92.0, 19.0 ],
									"numoutlets" : 3,
									"items" : [ "exponential", ",", "linear" ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "" ],
									"types" : [  ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 113.0, 50.5, 46.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-32",
									"fontsize" : 10.0,
									"triangle" : 0,
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 70.0, 46.0, 19.0 ],
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 113.0, 166.5, 46.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-34",
									"minimum" : 0,
									"fontsize" : 10.0,
									"maximum" : 256,
									"triangle" : 0,
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 110.0, 46.0, 19.0 ],
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/mode",
									"text" : "jcom.parameter limiter/mode @type msg_symbol @description \"Limiter: Set the function to be used for calculating the scaling.\"",
									"linecount" : 2,
									"patching_rect" : [ 160.0, 83.5, 333.0, 31.0 ],
									"id" : "obj-38",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/threshold",
									"text" : "jcom.parameter limiter/threshold @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Set threshold as dB.\"",
									"linecount" : 2,
									"patching_rect" : [ 160.0, 41.5, 440.0, 31.0 ],
									"id" : "obj-39",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/lookahead",
									"text" : "jcom.parameter limiter/lookahead @ramp/drive scheduler @range/bounds 0 256 @range/clipmode both @type msg_int @description \"Limiter: The number of samples to look ahead.\"",
									"linecount" : 2,
									"patching_rect" : [ 160.0, 157.5, 538.0, 31.0 ],
									"id" : "obj-41",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/postamp",
									"text" : "jcom.parameter limiter/postamp @ramp/drive scheduler @range/bounds -24 48 @range/clipmode none @type msg_float @description \"Limiter: Postamp as dB.\"",
									"linecount" : 2,
									"patching_rect" : [ 160.0, 120.5, 417.0, 31.0 ],
									"id" : "obj-42",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 114.0, 128.5, 46.0, 19.0 ],
									"presentation" : 1,
									"id" : "obj-35",
									"fontsize" : 10.0,
									"triangle" : 0,
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 90.0, 46.0, 19.0 ],
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 7.0, 6.0, 155.0, 25.0 ],
									"presentation" : 1,
									"id" : "obj-19",
									"rounded" : 15,
									"numinlets" : 1,
									"presentation_rect" : [ 15.0, 10.0, 175.0, 25.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-39", 0 ],
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
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-42", 0 ],
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
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-32", 0 ],
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
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-29", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"linecount" : 2,
					"patching_rect" : [ 25.0, 273.0, 83.0, 31.0 ],
					"id" : "obj-6",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p bugs?",
					"patching_rect" : [ 295.0, 465.0, 52.0, 19.0 ],
					"id" : "obj-4",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
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
									"patching_rect" : [ 51.0, 294.0, 271.0, 19.0 ],
									"id" : "obj-9",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- record (filename): starts recording to the sound file specified",
									"linecount" : 2,
									"patching_rect" : [ 51.0, 265.0, 209.0, 31.0 ],
									"id" : "obj-10",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- record 1: starts recording to a previously specified sound file. If no sound file is psecified, it's to bad...",
									"linecount" : 2,
									"patching_rect" : [ 51.0, 235.0, 275.0, 31.0 ],
									"id" : "obj-11",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
									"linecount" : 2,
									"patching_rect" : [ 51.0, 205.0, 253.0, 31.0 ],
									"id" : "obj-12",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- open filename: open the soundfile specified, but do not start recording",
									"linecount" : 2,
									"patching_rect" : [ 51.0, 176.0, 249.0, 31.0 ],
									"id" : "obj-13",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
									"linecount" : 3,
									"patching_rect" : [ 51.0, 134.0, 271.0, 43.0 ],
									"id" : "obj-14",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- left channel jcom-meter~ tends to die",
									"patching_rect" : [ 51.0, 115.0, 249.0, 19.0 ],
									"id" : "obj-23",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Bugs/required fixes:",
									"patching_rect" : [ 50.0, 100.0, 111.0, 19.0 ],
									"id" : "obj-68",
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Arial",
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
					"patching_rect" : [ 20.0, 445.0, 232.0, 43.0 ],
					"id" : "obj-22",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 105.0, 375.0, 125.0, 12.0 ],
					"presentation" : 1,
					"id" : "obj-3",
					"numinlets" : 1,
					"presentation_rect" : [ 50.0, 46.0, 165.0, 15.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 105.0, 353.0, 125.0, 12.0 ],
					"presentation" : 1,
					"id" : "obj-2",
					"numinlets" : 1,
					"presentation_rect" : [ 50.0, 30.0, 165.0, 15.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 880.0, 195.0, 150.0, 19.0 ],
					"id" : "obj-97",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"patching_rect" : [ 225.0, 405.0, 139.0, 29.0 ],
					"id" : "obj-1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"patching_rect" : [ 145.0, 185.0, 64.0, 19.0 ],
					"id" : "obj-7",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 4,
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.gain",
					"text" : "jcom.parameter audio/gain @type msg_float @range/bounds 0 157 @range/clipmode both @ramp/drive scheduler @dataspace gain @dataspace/unit/active midi @dataspace/unit/native midi @description \"master gain\"",
					"linecount" : 4,
					"patching_rect" : [ 355.0, 79.0, 326.0, 55.0 ],
					"id" : "obj-8",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dsp_status @description \" Open DSP Status window.\"",
					"patching_rect" : [ 830.0, 422.0, 355.0, 19.0 ],
					"id" : "obj-15",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 45.0, 405.0, 137.0, 17.0 ],
					"id" : "obj-16",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record",
					"text" : "jcom.parameter record @type msg_toggle @description \"record to a sound file\"",
					"linecount" : 2,
					"patching_rect" : [ 390.0, 285.0, 235.0, 31.0 ],
					"id" : "obj-21",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_xxx_record",
					"patching_rect" : [ 390.0, 360.0, 94.0, 19.0 ],
					"id" : "obj-24",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Release (ms)",
					"patching_rect" : [ 710.0, 270.0, 75.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 155.0, 114.0, 77.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Preamp (dB)",
					"patching_rect" : [ 710.0, 230.0, 72.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-27",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 155.0, 94.0, 74.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/active",
					"text" : "jcom.parameter limiter/active @type msg_toggle @description \"Limiter: Active or bypassed.\"",
					"patching_rect" : [ 825.0, 190.0, 479.0, 19.0 ],
					"id" : "obj-31",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Release",
					"patching_rect" : [ 785.0, 270.0, 39.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-33",
					"minimum" : 0.0,
					"fontsize" : 10.0,
					"maximum" : 10000.0,
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 230.0, 114.0, 60.0, 19.0 ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Preamp",
					"patching_rect" : [ 785.0, 230.0, 36.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-36",
					"minimum" : 0.0,
					"fontsize" : 10.0,
					"maximum" : 48.0,
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 230.0, 94.0, 60.0, 19.0 ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sound File Record",
					"patching_rect" : [ 333.0, 147.0, 186.0, 19.0 ],
					"id" : "obj-37",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/release",
					"text" : "jcom.parameter limiter/release @ramp/drive scheduler @type msg_float @range/bounds 0 3000 @range/clipmode low @description \"Limiter: Set release time as ms.\"",
					"linecount" : 2,
					"patching_rect" : [ 830.0, 265.0, 461.0, 31.0 ],
					"id" : "obj-40",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/preamp",
					"text" : "jcom.parameter limiter/preamp @ramp/drive scheduler @range/bounds 0 48 @range/clipmode none @type msg_float @description \"Limiter: Preamp as dB.\"",
					"linecount" : 2,
					"patching_rect" : [ 830.0, 225.0, 411.0, 31.0 ],
					"id" : "obj-43",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter",
					"patching_rect" : [ 735.0, 190.0, 61.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-44",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 25.0, 114.0, 61.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter (not all parameters are exposed in the interface : see panel)",
					"patching_rect" : [ 825.0, 165.0, 354.0, 19.0 ],
					"id" : "obj-45",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"patching_rect" : [ 810.0, 35.0, 188.0, 19.0 ],
					"id" : "obj-46",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/active",
					"text" : "jcom.parameter saturation/active @type msg_toggle @description \"Saturation: Active or bypassed.\"",
					"linecount" : 2,
					"patching_rect" : [ 830.0, 124.0, 419.0, 31.0 ],
					"id" : "obj-47",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "saturation/depth",
					"text" : "jcom.parameter saturation/depth @ramp/drive scheduler @repetitions/allow 0 @type msg_float @range/bounds 0 99 @range/clipmode both @description \"Saturation: Depth.\"",
					"linecount" : 2,
					"patching_rect" : [ 830.0, 81.0, 460.0, 31.0 ],
					"id" : "obj-50",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "%",
					"patching_rect" : [ 810.0, 89.0, 19.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-52",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 125.0, 94.0, 19.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/samptype",
					"text" : "jcom.parameter record/samptype @type msg_symbol @description \"Recording: Set sample type for sound files.\"",
					"linecount" : 2,
					"patching_rect" : [ 388.0, 240.0, 304.0, 31.0 ],
					"id" : "obj-54",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record/filetype",
					"text" : "jcom.parameter record/filetype @type msg_symbol @description \"Recording: Set file type for sound files.\"",
					"linecount" : 2,
					"patching_rect" : [ 388.0, 202.0, 283.0, 31.0 ],
					"id" : "obj-55",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p FileTypes",
					"patching_rect" : [ 325.0, 180.0, 63.0, 19.0 ],
					"id" : "obj-56",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
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
									"patching_rect" : [ 60.0, 265.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"patching_rect" : [ 60.0, 218.0, 89.0, 18.0 ],
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r jcom.init",
									"patching_rect" : [ 60.0, 60.0, 59.0, 18.0 ],
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave",
									"patching_rect" : [ 111.0, 175.0, 100.0, 16.0 ],
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aiff, au, raw, wave, sd2",
									"patching_rect" : [ 60.0, 192.0, 125.0, 16.0 ],
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"patching_rect" : [ 222.0, 164.0, 40.0, 18.0 ],
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel macintosh windows",
									"patching_rect" : [ 60.0, 151.0, 122.0, 18.0 ],
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route os",
									"patching_rect" : [ 60.0, 130.0, 49.0, 18.0 ],
									"id" : "obj-8",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "js jcom.js_systeminfo.js",
									"patching_rect" : [ 60.0, 99.0, 129.0, 18.0 ],
									"id" : "obj-9",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 89.0, 231.5, 89.0 ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FiletypeMenu",
					"patching_rect" : [ 325.0, 209.0, 61.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-57",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 230.0, 45.0, 60.0, 19.0 ],
					"numoutlets" : 3,
					"items" : [ "aiff", ",", "au", ",", "raw", ",", "wave", ",", "sd2" ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "SamptypeMenu",
					"patching_rect" : [ 325.0, 245.0, 61.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-59",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 230.0, 65.0, 60.0, 19.0 ],
					"numoutlets" : 3,
					"items" : [ "int8", ",", "int16", ",", "int24", ",", "int32", ",", "float32", ",", "float64", ",", "mulaw", ",", "alaw" ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 188.0, 150.0, 24.0, 24.0 ],
					"id" : "obj-60",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 145.0, 150.0, 24.0, 24.0 ],
					"id" : "obj-61",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP and dac~ settings",
					"patching_rect" : [ 410.0, 180.0, 186.0, 19.0 ],
					"id" : "obj-67",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_2",
					"text" : "jcom.parameter ch.2 @type msg_int @description \" Set logical output for right channel.\"",
					"patching_rect" : [ 830.0, 368.0, 460.0, 19.0 ],
					"id" : "obj-72",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ch_1",
					"text" : "jcom.parameter ch.1 @type msg_int @description \" Set logical output for left channel.\"",
					"patching_rect" : [ 830.0, 338.0, 452.0, 19.0 ],
					"id" : "obj-73",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Right",
					"patching_rect" : [ 790.0, 367.0, 30.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-75",
					"minimum" : 1,
					"fontsize" : 10.0,
					"maximum" : 512,
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 5.0, 45.0, 30.0, 19.0 ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Channel_Left",
					"patching_rect" : [ 790.0, 338.0, 30.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-76",
					"minimum" : 1,
					"fontsize" : 10.0,
					"maximum" : 512,
					"triangle" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 5.0, 25.0, 30.0, 19.0 ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"patching_rect" : [ 185.0, 405.0, 39.0, 17.0 ],
					"id" : "obj-81",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Volume",
					"patching_rect" : [ 409.0, 34.0, 48.0, 19.0 ],
					"id" : "obj-83",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Sound_processing",
					"patching_rect" : [ 105.0, 314.0, 110.0, 19.0 ],
					"id" : "obj-85",
					"fontsize" : 10.0,
					"numinlets" : 3,
					"numoutlets" : 2,
					"fontname" : "Verdana",
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
									"text" : "jcom.oscroute /saturation /limiter /audio/gain /record",
									"patching_rect" : [ 325.0, 119.0, 280.0, 19.0 ],
									"id" : "obj-1",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 5,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 340.0, 370.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 111.0, 366.0, 25.0, 25.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p dac",
									"patching_rect" : [ 179.0, 366.0, 162.0, 19.0 ],
									"id" : "obj-4",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
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
													"patching_rect" : [ 265.0, 125.0, 246.0, 43.0 ],
													"id" : "obj-16",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.return audio/amplitude/follower.1 @range/bounds 0. 1. @enable 0 @description \"instant amplitude of the signal number 1\"",
													"linecount" : 3,
													"patching_rect" : [ 265.0, 180.0, 246.0, 43.0 ],
													"id" : "obj-15",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t open",
													"patching_rect" : [ 230.0, 363.0, 41.0, 19.0 ],
													"id" : "obj-1",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "open" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_dac",
													"patching_rect" : [ 30.0, 386.0, 79.0, 19.0 ],
													"id" : "obj-2",
													"fontsize" : 10.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 170.0, 55.0, 27.0, 27.0 ],
													"id" : "obj-3",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 107.0, 55.0, 27.0, 27.0 ],
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 434.0, 455.0, 27.0, 27.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 366.0, 363.0, 68.0, 19.0 ],
													"id" : "obj-6",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 298.0, 363.0, 68.0, 19.0 ],
													"id" : "obj-7",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 230.0, 55.0, 27.0, 27.0 ],
													"id" : "obj-8",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /dsp_status /ch.1 /ch.2",
													"patching_rect" : [ 230.0, 335.0, 220.0, 19.0 ],
													"id" : "obj-9",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dac~ 1 2",
													"patching_rect" : [ 107.0, 441.0, 85.0, 19.0 ],
													"id" : "obj-10",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-9", 3 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-10", 1 ],
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
													"source" : [ "obj-2", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p limiter",
									"patching_rect" : [ 179.0, 198.0, 156.0, 19.0 ],
									"id" : "obj-5",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Verdana",
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
													"patching_rect" : [ 521.0, 149.0, 88.0, 19.0 ],
													"id" : "obj-1",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"patching_rect" : [ 521.0, 128.0, 35.0, 19.0 ],
													"id" : "obj-2",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"patching_rect" : [ 521.0, 107.0, 117.0, 19.0 ],
													"id" : "obj-3",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /preamp /postamp /threshold /lookahead /release /mode",
													"patching_rect" : [ 215.0, 79.0, 352.0, 19.0 ],
													"id" : "obj-4",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 7,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 215.0, 46.0, 24.0, 24.0 ],
													"id" : "obj-5",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 122.0, 256.0, 24.0, 24.0 ],
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 72.0, 256.0, 24.0, 24.0 ],
													"id" : "obj-7",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 172.0, 46.0, 24.0, 24.0 ],
													"id" : "obj-8",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 72.0, 46.0, 24.0, 24.0 ],
													"id" : "obj-9",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tt.limiter~ @bypass_dcblocker 1",
													"linecount" : 2,
													"patching_rect" : [ 72.0, 202.0, 117.0, 31.0 ],
													"id" : "obj-10",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "signal", "signal", "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-4", 6 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 1 ],
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
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-4", 0 ],
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
													"source" : [ "obj-4", 4 ],
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
													"source" : [ "obj-4", 2 ],
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p saturation",
									"patching_rect" : [ 179.0, 169.0, 160.0, 19.0 ],
									"id" : "obj-6",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Verdana",
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
													"patching_rect" : [ 396.0, 209.0, 88.0, 19.0 ],
													"id" : "obj-1",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"patching_rect" : [ 396.0, 186.0, 35.0, 19.0 ],
													"id" : "obj-2",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /active",
													"patching_rect" : [ 396.0, 164.0, 117.0, 19.0 ],
													"id" : "obj-3",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr 1./(1. - $f1*0.01)",
													"patching_rect" : [ 266.0, 121.0, 134.0, 19.0 ],
													"id" : "obj-4",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 136.0, 309.0, 24.0, 24.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 172.0, 309.0, 24.0, 24.0 ],
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 208.0, 50.0, 24.0, 24.0 ],
													"id" : "obj-7",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 136.0, 50.0, 24.0, 24.0 ],
													"id" : "obj-8",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend overdrive",
													"patching_rect" : [ 266.0, 151.0, 100.0, 19.0 ],
													"id" : "obj-9",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /depth",
													"patching_rect" : [ 266.0, 75.0, 142.0, 19.0 ],
													"id" : "obj-10",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 266.0, 50.0, 24.0, 24.0 ],
													"id" : "obj-11",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tt.overdrive~",
													"patching_rect" : [ 135.0, 270.0, 96.0, 19.0 ],
													"id" : "obj-12",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 3,
													"fontname" : "Verdana",
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-4", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 27.0, 32.0, 25.0, 25.0 ],
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 252.0, 136.0, 25.0, 25.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 179.0, 136.0, 25.0, 25.0 ],
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p smooth_in_out",
									"patching_rect" : [ 179.0, 290.0, 94.0, 19.0 ],
									"id" : "obj-10",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
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
													"patching_rect" : [ 475.0, 163.0, 31.0, 17.0 ],
													"id" : "obj-1",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"patching_rect" : [ 410.0, 140.0, 32.0, 19.0 ],
													"id" : "obj-2",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"patching_rect" : [ 319.0, 270.0, 27.0, 19.0 ],
													"id" : "obj-3",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "*~",
													"patching_rect" : [ 284.0, 270.0, 27.0, 19.0 ],
													"id" : "obj-4",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0, 1 10",
													"patching_rect" : [ 410.0, 163.0, 45.0, 17.0 ],
													"id" : "obj-5",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line~",
													"patching_rect" : [ 410.0, 189.0, 34.0, 19.0 ],
													"id" : "obj-6",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "signal", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "dspstate~",
													"patching_rect" : [ 410.0, 112.0, 59.0, 19.0 ],
													"id" : "obj-7",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "float", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "NOTE: This fade is not displayed in the GUI.",
													"patching_rect" : [ 94.0, 334.0, 231.0, 19.0 ],
													"id" : "obj-8",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade in when audio start",
													"patching_rect" : [ 24.0, 75.0, 162.0, 19.0 ],
													"id" : "obj-9",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 319.0, 41.0, 24.0, 24.0 ],
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 284.0, 41.0, 24.0, 24.0 ],
													"id" : "obj-11",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 319.0, 305.0, 24.0, 24.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 284.0, 305.0, 24.0, 24.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r jcom.audio.off",
													"patching_rect" : [ 475.0, 112.0, 88.0, 19.0 ],
													"id" : "obj-14",
													"fontsize" : 10.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Quick fade out when audio stop",
													"patching_rect" : [ 24.0, 59.0, 168.0, 19.0 ],
													"id" : "obj-15",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "line~ is able to handle this. gain~ and matrix~ is not.",
													"patching_rect" : [ 24.0, 95.0, 281.0, 19.0 ],
													"id" : "obj-16",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 1 ],
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
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p gain",
									"patching_rect" : [ 179.0, 227.0, 160.0, 19.0 ],
									"id" : "obj-11",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Verdana",
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
													"patching_rect" : [ 180.0, 45.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 64.0, 318.0, 25.0, 25.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 93.0, 318.0, 25.0, 25.0 ],
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 64.0, 44.0, 25.0, 25.0 ],
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 93.0, 44.0, 25.0, 25.0 ],
													"id" : "obj-5",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"patching_rect" : [ 65.0, 130.0, 22.0, 122.0 ],
													"id" : "obj-7",
													"orientation" : 2,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gain~",
													"patching_rect" : [ 94.0, 131.0, 22.0, 122.0 ],
													"id" : "obj-8",
													"orientation" : 2,
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "int" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p record",
									"patching_rect" : [ 365.0, 366.0, 139.0, 19.0 ],
									"id" : "obj-12",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 0,
									"fontname" : "Verdana",
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
													"patching_rect" : [ 453.0, 203.0, 22.0, 19.0 ],
													"id" : "obj-1",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"patching_rect" : [ 453.0, 225.0, 36.0, 19.0 ],
													"id" : "obj-2",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.pass /samptype",
													"patching_rect" : [ 479.0, 132.0, 116.0, 19.0 ],
													"id" : "obj-3",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "FROM REMOTE:",
													"patching_rect" : [ 549.0, 282.0, 87.0, 19.0 ],
													"id" : "obj-4",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 0: stops recording.",
													"patching_rect" : [ 549.0, 459.0, 269.0, 19.0 ],
													"id" : "obj-5",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record (filename): starts recording to the sound file specified",
													"linecount" : 2,
													"patching_rect" : [ 549.0, 430.0, 262.0, 31.0 ],
													"id" : "obj-6",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- record 1: starts recording to a previously specified sound file. If no sound file has been specified, it's to bad...",
													"linecount" : 2,
													"patching_rect" : [ 549.0, 400.0, 308.0, 31.0 ],
													"id" : "obj-7",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open with no argument: bring up the open dialog??? (Or should we forget about this one?)",
													"linecount" : 2,
													"patching_rect" : [ 549.0, 370.0, 269.0, 31.0 ],
													"id" : "obj-8",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- open filename: open the soundfile specified, but do not start recording",
													"linecount" : 2,
													"patching_rect" : [ 549.0, 341.0, 269.0, 31.0 ],
													"id" : "obj-9",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- samptype and filetype can be set beforehand using messages \"samptype $1\" and \"filetype $1\", and is remembered.",
													"linecount" : 3,
													"patching_rect" : [ 549.0, 299.0, 270.0, 43.0 ],
													"id" : "obj-10",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack open aiff",
													"patching_rect" : [ 261.0, 147.0, 122.0, 19.0 ],
													"id" : "obj-11",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /filetype",
													"patching_rect" : [ 371.0, 87.0, 125.0, 19.0 ],
													"id" : "obj-12",
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_xxx_record",
													"patching_rect" : [ 261.0, 92.0, 93.0, 19.0 ],
													"id" : "obj-13",
													"fontsize" : 10.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"patching_rect" : [ 261.0, 121.0, 32.0, 19.0 ],
													"id" : "obj-14",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 371.0, 46.0, 24.0, 24.0 ],
													"id" : "obj-15",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 80.0, 46.0, 24.0, 24.0 ],
													"id" : "obj-16",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 153.0, 46.0, 24.0, 24.0 ],
													"id" : "obj-17",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sfrecord~ 2",
													"patching_rect" : [ 80.0, 278.0, 83.0, 19.0 ],
													"id" : "obj-18",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "<- required to avoid an error message during initialisation",
													"patching_rect" : [ 504.0, 214.0, 302.0, 19.0 ],
													"id" : "obj-19",
													"fontsize" : 10.0,
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 1 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 1 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-11", 0 ],
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
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 1 ],
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
													"source" : [ "obj-16", 0 ],
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
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana"
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 3 ],
									"destination" : [ "obj-12", 2 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-11", 2 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 2 ],
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
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 325.5, 221.0, 259.0, 221.0 ]
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 1 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 20.0, 496.0, 24.0, 24.0 ],
					"id" : "obj-88",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 20.0, 405.0, 24.0, 24.0 ],
					"id" : "obj-89",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-- audio in --",
					"patching_rect" : [ 215.0, 150.0, 79.0, 19.0 ],
					"id" : "obj-91",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"patching_rect" : [ 760.0, 59.0, 61.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-92",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 25.0, 94.0, 63.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "SaturationToggle",
					"patching_rect" : [ 810.0, 132.0, 18.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-93",
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 10.0, 94.0, 75.0, 18.0 ],
					"numoutlets" : 1,
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
					"patching_rect" : [ 805.0, 190.0, 18.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-94",
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 10.0, 114.0, 75.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 45.0, 95.0, 190.0, 30.0 ],
					"presentation" : 1,
					"id" : "obj-19",
					"numinlets" : 1,
					"border" : 1,
					"presentation_rect" : [ 5.0, 90.0, 290.0, 45.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 45.0, 25.0, 190.0, 40.0 ],
					"presentation" : 1,
					"id" : "obj-13",
					"numinlets" : 1,
					"presentation_rect" : [ 40.0, 25.0, 185.0, 60.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"id" : "obj-95",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_panel" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 839.5, 514.0, 824.0, 514.0, 824.0, 458.0, 839.5, 458.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 909.5, 486.0, 839.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-93", 0 ],
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
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-94", 0 ],
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
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-36", 0 ],
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
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-33", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-85", 2 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 239.0, 205.5, 239.0 ]
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
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-85", 1 ],
					"destination" : [ "obj-3", 0 ],
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
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-57", 0 ],
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
					"source" : [ "obj-59", 2 ],
					"destination" : [ "obj-54", 0 ],
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
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-76", 0 ],
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
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-75", 0 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 399.5, 353.0, 375.0, 353.0, 375.0, 282.0, 399.5, 282.0 ]
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
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 269.0, 114.5, 269.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 252.0, 34.5, 252.0 ]
				}

			}
 ]
	}

}
