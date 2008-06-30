{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 206.0, 44.0, 1074.0, 677.0 ],
		"bglocked" : 0,
		"defrect" : [ 206.0, 44.0, 1074.0, 677.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 163.213852, 277.395203, 21.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p limiter",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"patching_rect" : [ 162.846863, 296.827209, 56.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-39",
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
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 350.0, 100.0, 18.0 ],
									"numoutlets" : 2,
									"id" : "obj-16",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 325.0, 36.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 305.0, 36.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 40.0, 270.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "DC-blocker :",
									"fontname" : "Arial",
									"presentation_rect" : [ 145.0, 95.0, 88.0, 23.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 14.0,
									"patching_rect" : [ 5.0, 210.0, 88.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Lookahead",
									"fontname" : "Arial",
									"presentation_rect" : [ 30.0, 95.0, 60.0, 18.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 165.0, 60.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Postamp",
									"fontname" : "Arial",
									"presentation_rect" : [ 145.0, 60.0, 55.0, 18.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 130.0, 55.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Mode",
									"fontname" : "Arial",
									"presentation_rect" : [ 90.0, 20.0, 55.0, 18.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 95.0, 55.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Limiter",
									"fontname" : "Arial",
									"presentation_rect" : [ 15.0, 15.0, 54.0, 23.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 14.0,
									"patching_rect" : [ 5.0, 5.0, 54.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Threshold",
									"fontname" : "Arial",
									"presentation_rect" : [ 30.0, 60.0, 55.0, 18.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 50.0, 55.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"presentation_rect" : [ 230.0, 95.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 120.0, 210.0, 20.0, 20.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/active[1]",
									"text" : "jcom.parameter dcblocker/active @type msg_toggle @description \"DC Blocker: Active or bypassed.\"",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 150.0, 210.0, 519.0, 19.0 ],
									"numoutlets" : 3,
									"id" : "obj-98",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontname" : "Verdana",
									"presentation_rect" : [ 145.0, 20.0, 92.0, 19.0 ],
									"numinlets" : 1,
									"items" : [ "exponential", ",", "linear" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 90.0, 91.5, 66.0, 19.0 ],
									"labelclick" : 1,
									"presentation" : 1,
									"numoutlets" : 3,
									"types" : [  ],
									"id" : "obj-29",
									"outlettype" : [ "int", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"triangle" : 0,
									"triscale" : 0.9,
									"presentation_rect" : [ 90.0, 60.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 113.0, 50.5, 45.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"id" : "obj-32",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"triangle" : 0,
									"triscale" : 0.9,
									"presentation_rect" : [ 90.0, 95.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 113.0, 166.5, 45.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"minimum" : 0,
									"id" : "obj-34",
									"outlettype" : [ "int", "bang" ],
									"maximum" : 256
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "limiter/mode",
									"text" : "jcom.parameter limiter/mode @type msg_symbol @description \"Limiter: Set the function to be used for calculating the scaling.\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 83.5, 333.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-38",
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
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 41.5, 440.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-39",
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
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 157.5, 513.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-41",
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
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 160.0, 120.5, 417.0, 31.0 ],
									"numoutlets" : 3,
									"id" : "obj-42",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 130.0, 85.0, 133.0, 40.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 186.0, 155.0, 25.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"shadow" : 5,
									"rounded" : 15,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"triangle" : 0,
									"triscale" : 0.9,
									"presentation_rect" : [ 205.0, 60.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 114.0, 128.5, 45.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"id" : "obj-35",
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 5.0, 10.0, 75.0, 33.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 7.0, 6.0, 155.0, 25.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"shadow" : 5,
									"rounded" : 15,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"presentation_rect" : [ 0.0, 0.0, 267.0, 130.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 5.0, 155.0, 25.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"rounded" : 15,
									"id" : "obj-15"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Release (ms)",
					"fontname" : "Verdana",
					"presentation_rect" : [ 188.289124, 44.0, 75.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 474.304535, 310.23526, 75.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Preamp (dB)",
					"fontname" : "Verdana",
					"presentation_rect" : [ 190.289124, 19.567739, 72.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 474.304535, 270.23526, 72.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/active",
					"text" : "jcom.parameter limiter/active @type msg_toggle @description \"Limiter: Active or bypassed.\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 596.259155, 231.62619, 479.0, 19.0 ],
					"numoutlets" : 3,
					"id" : "obj-26",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Release",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 259.289124, 42.0, 39.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 549.304504, 310.23526, 39.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"id" : "obj-30",
					"outlettype" : [ "float", "bang" ],
					"maximum" : 10000.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Preamp",
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 259.289124, 17.567739, 38.355434, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 549.304504, 270.23526, 36.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"id" : "obj-35",
					"outlettype" : [ "float", "bang" ],
					"maximum" : 48.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "limiter/release",
					"text" : "jcom.parameter limiter/release @ramp/drive scheduler @type msg_float @range/bounds 0 3000 @range/clipmode low @description \"Limiter: Set release time as ms.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 594.304504, 305.23526, 462.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-40",
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
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 594.304504, 265.23526, 411.0, 31.0 ],
					"numoutlets" : 3,
					"id" : "obj-43",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter",
					"fontname" : "Verdana",
					"presentation_rect" : [ 146.0, 20.0, 44.119381, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 506.259186, 231.62619, 61.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "LimiterToggle",
					"presentation_rect" : [ 132.0, 19.0, 75.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 576.259155, 231.62619, 18.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-94",
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /audio/mute",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 365.0, 296.0, 81.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-20",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mute~",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 365.0, 317.0, 38.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"presentation_rect" : [ -1.814313, 38.962864, 192.782593, 30.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 38.0, 287.0, 30.0 ],
					"presentation" : 1,
					"numoutlets" : 4,
					"handoff" : "",
					"id" : "obj-33",
					"outlettype" : [ "bang", "bang", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Setup",
					"text" : "Setup: 1 2 3 4 5 6 7 8",
					"fontname" : "Geneva",
					"lines" : 2,
					"presentation_rect" : [ 1.111412, 40.53775, 190.289139, 25.0 ],
					"bgcolor" : [ 0.094118, 0.094118, 0.094118, 1.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 7.0,
					"patching_rect" : [ 7.0, 39.0, 286.0, 27.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"readonly" : 1,
					"id" : "obj-34",
					"outlettype" : [ "", "int", "" ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 90.0, 20.0, 19.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 498.0, 184.0, 19.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-38",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 32.0, 20.0, 19.0, 18.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 481.0, 80.0, 19.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 122.0, 103.0, 191.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 506.0, 123.0, 51.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-6",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_number_of_voices",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 506.0, 145.0, 120.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 165.0, 222.0, 43.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-8",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "offset",
					"text" : "jcom.parameter offset @type msg_int @repetitions/allow 0 @range/bounds 0 64 @range/clipmode both @description \"Set channel offset for the multicable. Changes only take effect when audio is off.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 522.0, 181.0, 587.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Offset:",
					"fontname" : "Arial",
					"presentation_rect" : [ 59.0, 20.0, 36.0, 17.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 114.0, 20.0, 46.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-12",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 135.0, 277.0, 21.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 116.0, 320.0, 102.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 306.0, 299.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 306.0, 275.0, 78.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "i",
					"text" : "p routing",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 116.0, 299.0, 46.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 100.0, 100.0, 150.0, 550.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 150.0, 550.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 332.0, 476.0, 27.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 507.0, 36.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_number_of_voices",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 332.0, 453.0, 120.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 533.0, 42.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-4",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "select 0 0",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 396.0, 59.0, 55.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 260 681, window exec",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 10.0, 95.0, 214.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 10.0, 62.0, 239.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 10.0, 78.0, 158.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 10.0, 118.0, 59.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 277.0, 596.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-11",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 453.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-12",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend script send Setup set Setup:",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 560.0, 175.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 463.0, 59.0, 40.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 463.0, 79.0, 61.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-15",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 396.0, 29.0, 32.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-16",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 set $2",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 699.0, 202.0, 54.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 107.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-18",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "setup",
									"text" : "jcom.parameter setup @type msg_list @description \"List of output channels that multicable signal is routed to.\"",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 405.0, 292.0, 27.0 ],
									"numoutlets" : 3,
									"id" : "obj-19",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set 0",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 153.0, 71.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 197.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-21",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 32,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 383.0, 417.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-22",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31",
									"linecount" : 2,
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 699.0, 222.0, 378.0, 27.0 ],
									"numoutlets" : 33,
									"id" : "obj-23",
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p thru",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 250.0, 176.0, 37.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-24",
									"outlettype" : [ "", "list" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 111.0, 101.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 69.0, 100.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 111.0, 57.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-3",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 69.0, 57.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "list" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "listfunnel",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 129.0, 52.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "list" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t select l",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 88.0, 540.0, 50.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-26",
									"outlettype" : [ "select", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "1",
									"fontname" : "Geneva",
									"clickmode" : 1,
									"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 17.0, 33.0, 77.0, 17.0 ],
									"numoutlets" : 3,
									"keymode" : 1,
									"id" : "obj-27",
									"outlettype" : [ "", "int", "" ],
									"wordwrap" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"selmode" : 0,
									"fontname" : "Geneva",
									"rows" : 32,
									"hscroll" : 0,
									"headercolor" : [ 0.743191, 0.743191, 0.743191, 1.0 ],
									"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
									"cols" : 1,
									"vscroll" : 0,
									"colhead" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"colwidth" : 55,
									"rowhead" : 1,
									"just" : 1,
									"patching_rect" : [ 18.0, 75.0, 56.0, 449.0 ],
									"numoutlets" : 4,
									"precision" : 0,
									"hcellcolor" : [ 0.836576, 0.836576, 0.933852, 1.0 ],
									"id" : "obj-28",
									"outlettype" : [ "list", "", "", "" ],
									"rowheight" : 14,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"savemode" : 1,
									"gridlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"cellmap" : [ [ 0, 0, 1 ], [ 0, 1, 2 ], [ 0, 2, 3 ], [ 0, 3, 4 ], [ 0, 4, 5 ], [ 0, 5, 6 ], [ 0, 6, 7 ], [ 0, 7, 8 ], [ 0, 8, 9 ], [ 0, 9, 10 ], [ 0, 10, 11 ], [ 0, 11, 12 ], [ 0, 12, 13 ], [ 0, 13, 14 ], [ 0, 14, 15 ], [ 0, 15, 16 ], [ 0, 16, 17 ], [ 0, 17, 18 ], [ 0, 18, 19 ], [ 0, 19, 20 ], [ 0, 20, 21 ], [ 0, 21, 22 ], [ 0, 22, 23 ], [ 0, 23, 24 ], [ 0, 24, 25 ], [ 0, 25, 26 ], [ 0, 26, 27 ], [ 0, 27, 28 ], [ 0, 28, 29 ], [ 0, 29, 30 ], [ 0, 30, 31 ], [ 0, 31, 32 ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"selmode" : 0,
									"fontname" : "Geneva",
									"rows" : 1,
									"hscroll" : 0,
									"headercolor" : [ 0.743191, 0.743191, 0.743191, 1.0 ],
									"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
									"cols" : 2,
									"vscroll" : 0,
									"colhead" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"colwidth" : 55,
									"rowhead" : 1,
									"just" : 1,
									"patching_rect" : [ 18.0, 56.0, 111.0, 20.0 ],
									"numoutlets" : 4,
									"precision" : 0,
									"hcellcolor" : [ 0.836576, 0.836576, 0.933852, 1.0 ],
									"id" : "obj-29",
									"outlettype" : [ "list", "", "", "" ],
									"rowheight" : 19,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"savemode" : 1,
									"gridlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"cellmap" : [ [ 0, 0, "Multicable" ], [ 1, 0, "Output" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"varname" : "CellBlock",
									"fontname" : "Geneva",
									"rows" : 32,
									"hscroll" : 0,
									"headercolor" : [ 0.743191, 0.743191, 0.743191, 1.0 ],
									"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
									"cols" : 1,
									"vscroll" : 0,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"colwidth" : 55,
									"just" : 1,
									"patching_rect" : [ 73.0, 75.0, 56.0, 449.0 ],
									"numoutlets" : 4,
									"precision" : 0,
									"hcellcolor" : [ 0.836576, 0.836576, 0.933852, 1.0 ],
									"id" : "obj-30",
									"outlettype" : [ "list", "", "", "" ],
									"rowheight" : 14,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"savemode" : 1,
									"gridlinecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"cellmap" : [ [ 0, 0, 1 ], [ 0, 1, 2 ], [ 0, 2, 3 ], [ 0, 3, 4 ], [ 0, 4, 5 ], [ 0, 5, 6 ], [ 0, 6, 7 ], [ 0, 7, 8 ], [ 0, 8, 9 ], [ 0, 9, 10 ], [ 0, 10, 11 ], [ 0, 11, 12 ], [ 0, 12, 13 ], [ 0, 13, 14 ], [ 0, 14, 15 ], [ 0, 15, 16 ], [ 0, 16, 17 ], [ 0, 17, 18 ], [ 0, 18, 19 ], [ 0, 19, 20 ], [ 0, 20, 21 ], [ 0, 21, 22 ], [ 0, 22, 23 ], [ 0, 23, 24 ], [ 0, 24, 25 ], [ 0, 25, 26 ], [ 0, 26, 27 ], [ 0, 27, 28 ], [ 0, 28, 29 ], [ 0, 29, 30 ], [ 0, 30, 31 ], [ 0, 31, 32 ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 0.862745, 0.862745, 0.862745, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 4.0, 16.0, 140.0, 520.0 ],
									"numoutlets" : 0,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"patching_rect" : [ 396.0, 8.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "spray 32",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 277.0, 222.0, 417.0, 17.0 ],
									"numoutlets" : 32,
									"id" : "obj-33",
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [ 128.5, 561.0, 141.0, 561.0, 141.0, 30.0, 26.5, 30.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [ 97.5, 563.0, 143.0, 563.0, 143.0, 28.0, 26.5, 28.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [ 26.5, 53.0, 82.5, 53.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [ 405.5, 81.0, 366.0, 81.0, 366.0, 13.0, 82.5, 13.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 286.5, 441.0, 236.0, 441.0, 236.0, 102.0, 286.5, 102.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [ 318.5, 218.0, 286.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 2 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-22", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 3 ],
									"destination" : [ "obj-22", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 3 ],
									"destination" : [ "obj-22", 3 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 4 ],
									"destination" : [ "obj-22", 4 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 4 ],
									"destination" : [ "obj-22", 4 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 5 ],
									"destination" : [ "obj-22", 5 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 5 ],
									"destination" : [ "obj-22", 5 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 6 ],
									"destination" : [ "obj-22", 6 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 6 ],
									"destination" : [ "obj-22", 6 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 7 ],
									"destination" : [ "obj-22", 7 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 7 ],
									"destination" : [ "obj-22", 7 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 8 ],
									"destination" : [ "obj-22", 8 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 8 ],
									"destination" : [ "obj-22", 8 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 9 ],
									"destination" : [ "obj-22", 9 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 9 ],
									"destination" : [ "obj-22", 9 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 10 ],
									"destination" : [ "obj-22", 10 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 10 ],
									"destination" : [ "obj-22", 10 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 11 ],
									"destination" : [ "obj-22", 11 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 11 ],
									"destination" : [ "obj-22", 11 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 12 ],
									"destination" : [ "obj-22", 12 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 12 ],
									"destination" : [ "obj-22", 12 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 13 ],
									"destination" : [ "obj-22", 13 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 13 ],
									"destination" : [ "obj-22", 13 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 14 ],
									"destination" : [ "obj-22", 14 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 14 ],
									"destination" : [ "obj-22", 14 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 405.5, 52.0, 472.5, 52.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 15 ],
									"destination" : [ "obj-22", 15 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 15 ],
									"destination" : [ "obj-22", 15 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 16 ],
									"destination" : [ "obj-22", 16 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 16 ],
									"destination" : [ "obj-22", 16 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 17 ],
									"destination" : [ "obj-22", 17 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 17 ],
									"destination" : [ "obj-22", 17 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 18 ],
									"destination" : [ "obj-22", 18 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 18 ],
									"destination" : [ "obj-22", 18 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 19 ],
									"destination" : [ "obj-22", 19 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 19 ],
									"destination" : [ "obj-22", 19 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 20 ],
									"destination" : [ "obj-22", 20 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 20 ],
									"destination" : [ "obj-22", 20 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 21 ],
									"destination" : [ "obj-22", 21 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 21 ],
									"destination" : [ "obj-22", 21 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 22 ],
									"destination" : [ "obj-22", 22 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 22 ],
									"destination" : [ "obj-22", 22 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 23 ],
									"destination" : [ "obj-22", 23 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 23 ],
									"destination" : [ "obj-22", 23 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 24 ],
									"destination" : [ "obj-22", 24 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 24 ],
									"destination" : [ "obj-22", 24 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 25 ],
									"destination" : [ "obj-22", 25 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 25 ],
									"destination" : [ "obj-22", 25 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 26 ],
									"destination" : [ "obj-22", 26 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 26 ],
									"destination" : [ "obj-22", 26 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 27 ],
									"destination" : [ "obj-22", 27 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 27 ],
									"destination" : [ "obj-22", 27 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 28 ],
									"destination" : [ "obj-22", 28 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 28 ],
									"destination" : [ "obj-22", 28 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 29 ],
									"destination" : [ "obj-22", 29 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 29 ],
									"destination" : [ "obj-22", 29 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 30 ],
									"destination" : [ "obj-22", 30 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 30 ],
									"destination" : [ "obj-22", 30 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 31 ],
									"destination" : [ "obj-22", 31 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 31 ],
									"destination" : [ "obj-22", 31 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [ 286.5, 150.0, 708.5, 150.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 164.0, 242.0, 160.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-18",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 132.0, 124.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 47.0, 113.0, 79.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 24.0, 112.0, 22.0, 22.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 461.0, 124.0, 22.0, 22.0 ],
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices:",
					"fontname" : "Arial",
					"presentation_rect" : [ -2.0, 20.0, 42.0, 17.0 ],
					"frgb" : [ 0.67451, 0.67451, 0.67451, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 17.0, 20.0, 42.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-25",
					"textcolor" : [ 0.67451, 0.67451, 0.67451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.output~",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 306.0, 410.0, 172.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multichannel signal input",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 338.0, 124.0, 126.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 167.0, 20.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-29",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter voices @type msg_int @repetitions/allow 0 @range/bounds 2 32 @range/clipmode both @description \"Set number of output channels to use. Changes only take effect when audio is off.\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 506.0, 75.0, 575.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-31",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Send multicable signal to multiple dac channels.\"",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 24.0, 143.0, 372.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-32",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"has_panel" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"has_mute" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 131.5, 142.0, 33.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 141.5, 140.0, 33.5, 140.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 436.5, 350.0, 315.5, 350.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 374.5, 348.0, 315.5, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 17.5, 245.0, 144.5, 245.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
