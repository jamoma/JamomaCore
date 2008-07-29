{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 27.0, 125.0, 1262.0, 479.0 ],
		"bglocked" : 0,
		"defrect" : [ 27.0, 125.0, 1262.0, 479.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "we can keep the leftmost output only",
					"presentation_rect" : [ 269.0, 330.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"patching_rect" : [ 270.0, 330.0, 255.0, 22.0 ],
					"numoutlets" : 0,
					"fontsize" : 13.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"patching_rect" : [ 505.0, 10.0, 56.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"patching_rect" : [ 685.0, 40.0, 50.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"patching_rect" : [ 85.0, 85.0, 50.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this object gathers information for the hub in the jcom.model",
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"patching_rect" : [ 820.0, 405.0, 320.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.hubinfo @description \"An echo module\" @type audio",
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 0,
					"patching_rect" : [ 815.0, 430.0, 304.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- of course, the in~ and out~ wouldn't work like in poly~, but would build a (tt.)multichannel signal",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"patching_rect" : [ 165.0, 435.0, 522.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "note concerning the instance numbering : \nwith this system, we can adress the parameters for each \"channel\" (e.g. feedback.1) individually\nor collectively (e.g. feedback.*)",
					"linecount" : 4,
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"patching_rect" : [ 835.0, 310.0, 263.0, 55.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this is to automatically append the instance number to the parameter names->",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"patching_rect" : [ 95.0, 60.0, 411.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p naming",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"patching_rect" : [ 505.0, 60.0, 100.0, 19.0 ],
					"numoutlets" : 7,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 141.0, 44.0, 1079.0, 218.0 ],
						"bglocked" : 0,
						"defrect" : [ 141.0, 44.0, 1079.0, 218.0 ],
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
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 875.0, 130.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 760.0, 130.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 645.0, 130.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 495.0, 130.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 360.0, 130.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 130.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "cf[1]",
									"text" : "sprintf name feedback.%ld",
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 95.0, 146.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "filtertype",
									"text" : "sprintf name filtertype.%ld",
									"fontname" : "Verdana",
									"id" : "obj-42",
									"numinlets" : 1,
									"patching_rect" : [ 495.0, 95.0, 146.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "filtergain",
									"text" : "sprintf name filtergain.%ld",
									"fontname" : "Verdana",
									"id" : "obj-43",
									"numinlets" : 1,
									"patching_rect" : [ 875.0, 95.0, 146.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "q",
									"text" : "sprintf name q.%ld",
									"fontname" : "Verdana",
									"id" : "obj-44",
									"numinlets" : 1,
									"patching_rect" : [ 760.0, 95.0, 107.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "cf",
									"text" : "sprintf name cf.%ld",
									"fontname" : "Verdana",
									"id" : "obj-45",
									"numinlets" : 1,
									"patching_rect" : [ 645.0, 95.0, 109.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "left",
									"text" : "sprintf name delay.%ld",
									"fontname" : "Verdana",
									"id" : "obj-58",
									"numinlets" : 1,
									"patching_rect" : [ 360.0, 95.0, 127.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf name maxdelay.%ld",
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 95.0, 130.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 130.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 79.5, 75.0, 884.5, 75.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 79.5, 75.0, 769.5, 75.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 79.5, 75.0, 654.5, 75.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 79.5, 75.0, 504.5, 75.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [ 79.5, 75.0, 369.5, 75.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 79.5, 75.0, 214.5, 75.0 ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 79.5, 75.0, 79.5, 75.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"patching_rect" : [ 505.0, 35.0, 58.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out~ 1",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 435.0, 45.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "in~ 1",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 275.0, 38.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ],
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "all parameters are included directly in the model",
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"patching_rect" : [ 115.0, 30.0, 329.0, 22.0 ],
					"numoutlets" : 0,
					"fontsize" : 13.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this one (feedback) could be of audio type (as it is directly connected to the algorithm)",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 220.0, 232.0, 31.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "cf[1]",
					"text" : "jcom.parameter feedback @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"Delay feedback\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"patching_rect" : [ 265.0, 160.0, 340.0, 43.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "left[1]",
					"text" : "jcom.parameter maxdelay @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 100000 @range/clipmode both @description \"Maximum Delay time in milliseconds for left channel.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"patching_rect" : [ 110.0, 105.0, 470.0, 43.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filtertype",
					"text" : "jcom.parameter filtertype @type msg_symbol @repetitions/allow 0 @description \"What kind of filter to use. Possible values: lowpass | highpass | bandpass | bandstop | peaknotch | lowshelf | highshelf\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-42",
					"numinlets" : 1,
					"patching_rect" : [ 680.0, 70.0, 436.0, 43.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "filtergain",
					"text" : "jcom.parameter filtergain @type msg_float @range/bounds -24 24 @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"Gain (dB)\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-43",
					"numinlets" : 1,
					"patching_rect" : [ 780.0, 225.0, 436.0, 43.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "q",
					"text" : "jcom.parameter q @type msg_float @ramp/drive scheduler @range/bounds 0. 100. @range/clipmode both @repetitions/allow 0 @description \"Resonance (Q)\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-44",
					"numinlets" : 1,
					"patching_rect" : [ 760.0, 180.0, 436.0, 31.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "cf",
					"text" : "jcom.parameter cf @type msg_float @range/bounds 30. 11025. @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"Center frequency (Hz)\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-45",
					"numinlets" : 1,
					"patching_rect" : [ 705.0, 125.0, 436.0, 43.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "left",
					"text" : "jcom.parameter delay @type msg_float @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 10000 @range/clipmode both @description \"Delay time in milliseconds for left channel.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-58",
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 280.0, 372.0, 43.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.limiter~ 1",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 400.0, 72.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dbtoa",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 780.0, 275.0, 37.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "filtergraph~",
					"bwidthcolor" : [ 0.298039, 0.423529, 0.67451, 1.0 ],
					"fgcolor" : [ 0.666667, 0.666667, 0.666667, 1.0 ],
					"id" : "obj-13",
					"numinlets" : 8,
					"numdisplay" : 0,
					"patching_rect" : [ 682.0, 322.0, 97.0, 34.0 ],
					"numoutlets" : 7,
					"dbdisplay" : 0,
					"fontsize" : 8.998901,
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"textcolor" : [  ],
					"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
					"markercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
					"bgcolor" : [ 0.819608, 0.819608, 0.819608, 1.0 ],
					"nfilters" : 1,
					"setfilter" : [ 0, 5, 1, 0, 0, 40.0, 1.0, 2.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "biquad~",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 6,
					"patching_rect" : [ 113.0, 376.0, 72.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.2",
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 2,
					"patching_rect" : [ 154.0, 275.0, 43.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tapout~ 250",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 345.0, 72.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tapin~ 10001",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"patching_rect" : [ 113.0, 311.0, 77.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "tapconnect" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 6 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [ 595.5, 145.0, 705.0, 145.0, 705.0, 217.0, 789.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 5 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [ 582.0, 91.0, 681.0, 91.0, 681.0, 178.0, 771.0, 178.0, 771.0, 175.0, 769.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 4 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [ 568.5, 87.0, 681.0, 87.0, 681.0, 124.0, 717.0, 124.0, 717.0, 121.0, 714.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 3 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 555.0, 91.0, 681.0, 91.0, 681.0, 67.0, 689.5, 67.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [ 541.5, 95.0, 610.0, 95.0, 610.0, 265.0, 264.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 528.0, 100.0, 592.0, 100.0, 592.0, 153.0, 273.0, 153.0, 273.0, 157.0, 274.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 514.5, 91.0, 119.5, 91.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 163.5, 301.0, 122.5, 301.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 122.5, 424.0, 72.0, 424.0, 72.0, 266.0, 163.5, 266.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 337.0, 122.5, 337.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 210.0, 187.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-13", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-13", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-13", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 691.5, 369.0, 122.5, 369.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 6 ],
					"hidden" : 0,
					"midpoints" : [ 789.5, 314.0, 758.357117, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
