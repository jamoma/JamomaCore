{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 262.0, 326.0, 953.0, 423.0 ],
		"bglocked" : 0,
		"defrect" : [ 262.0, 326.0, 953.0, 423.0 ],
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
					"varname" : "recordbutton",
					"texton" : "Record",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"bgoveroncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-9",
					"numoutlets" : 3,
					"tosymbol" : 0,
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 179.0, 48.0, 51.0, 16.0 ],
					"fontsize" : 8.0,
					"mode" : 1,
					"outlettype" : [ "int", "", "int" ],
					"patching_rect" : [ 178.0, 47.0, 48.0, 17.0 ],
					"text" : "Record",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"id" : "obj-44",
					"numoutlets" : 2,
					"presentation_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"presentation" : 1
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
					"patching_rect" : [ 101.0, 104.0, 197.0, 16.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 174.0, 320.0, 62.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-3",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 227.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 149.0, 227.0, 75.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 134.0, 243.0, 57.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 472.0, 345.0, 42.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Realtime",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 0,
					"presentation_rect" : [ 110.0, 47.0, 53.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 115.0, 43.0, 53.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 157.0, 378.0, 64.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 100.0, 100.0, 196.0, 211.0 ],
						"bgcolor" : [ 0.588235, 0.588235, 0.588235, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 196.0, 211.0 ],
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
									"maxclass" : "message",
									"text" : "window size 100 100 296 285, window exec",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1.0, 179.0, 228.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-2",
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1.0, 161.0, 260.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-3",
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1.0, 144.0, 171.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 150 150 150",
									"fontname" : "Verdana",
									"numinlets" : 4,
									"id" : "obj-4",
									"numoutlets" : 0,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 228.0, 147.0, 112.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/matrix",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"id" : "obj-5",
									"numoutlets" : 0,
									"args" : [ "matrix" ],
									"name" : "jcom.class.matrix.inspector.maxpat",
									"patching_rect" : [ 3.0, 2.0, 194.0, 175.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "front" ],
									"patching_rect" : [ 228.0, 93.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 2,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 228.0, 74.0, 32.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 2,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 228.0, 112.0, 64.0, 18.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 2,
									"hidden" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 228.0, 55.0, 163.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-10",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 228.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Framerate",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-14",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"presentation_rect" : [ 195.0, 24.0, 34.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"minimum" : 1.0,
					"patching_rect" : [ 463.0, 16.0, 34.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "realtime",
					"text" : "jcom.parameter realtime @type msg_toggle @description \"Realtime (flag). When enabled internal clock is used.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 464.0, 252.0, 300.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "interp",
					"text" : "jcom.parameter interp @type msg_toggle @description \"Interpolate (flag).\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 465.0, 206.0, 386.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message stop @description \"Stop recording QuickTime movie.\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 487.0, 368.0, 366.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message write @description \"Start recording QuickTime movie.\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 472.0, 389.0, 376.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "framerate",
					"text" : "jcom.parameter framerate @type msg_float @ramp/drive none @repetitions/allow 0 @range/bounds 1. 25 @range/clipmode low @description Framerate.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 462.0, 39.0, 423.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "quality",
					"text" : "jcom.parameter quality @type msg_symbol @description \"Codec quality.\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 465.0, 154.0, 379.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "codec",
					"text" : "jcom.parameter codec @type msg_symbol @description \"Codec type.\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 466.0, 105.0, 362.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Quality",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"types" : [  ],
					"id" : "obj-24",
					"numoutlets" : 3,
					"presentation_rect" : [ 3.0, 46.0, 84.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 433.0, 131.0, 84.0, 19.0 ],
					"presentation" : 1,
					"items" : [ "(QUALITY)", ",", "lossless", ",", "max", ",", "min", ",", "low", ",", "normal", ",", "high" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Codec",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"types" : [  ],
					"id" : "obj-25",
					"numoutlets" : 3,
					"presentation_rect" : [ 3.0, 23.0, 84.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 433.0, 83.0, 84.0, 19.0 ],
					"presentation" : 1,
					"items" : [ "(CODEC)", ",", "alphagrey32", ",", "animation", ",", "argb64", ",", "avrjpeg", ",", "bmp", ",", "cinepak", ",", "cmyk", ",", "componentvideo", ",", "componentvideosigned", ",", "componentvideounsigned", ",", "dvntsc", ",", "dvpal", ",", "dvprontsc", ",", "dvpropal", ",", "flc", ",", "gif", ",", "graphics", ",", "grey16", ",", "h261", ",", "h263", ",", "indeo4", ",", "jpeg", ",", "macpaint", ",", "microsoft", ",", "mjpega", ",", "mjpegb", ",", "mpegyuv420", ",", "opendmljpeg", ",", "photocd", ",", "planarrgb", ",", "png", ",", "qd", ",", "qdgx", ",", "raw", ",", "rgb48", ",", "sgi", ",", "sorenson", ",", "sorensonyuv9", ",", "targa", ",", "tiff", ",", "vector", ",", "video", ",", "winraw", ",", "yuv420" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/matrix/type char",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-26",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 453.0, 142.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-27",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 147.0, 430.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r\nmax refresh",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-28",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.0, 256.0, 68.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fps:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-29",
					"numoutlets" : 0,
					"presentation_rect" : [ 165.0, 24.0, 30.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 165.0, 24.0, 30.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-30",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 115.0, 123.0, 135.0, 16.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.record% @module_type video @algorithm_type jitter @inspector 1 @description \"Record video to QuickTime movie.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-31",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 7.0, 153.0, 263.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-32",
					"numoutlets" : 0,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 189.0, 342.0, 85.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 0,
					"patching_rect" : [ 174.0, 342.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.record%",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-34",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 174.0, 299.0, 90.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r\njcom.init bang",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-35",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.0, 221.0, 80.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-36",
					"numoutlets" : 0,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 23.0, 120.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 207.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-38",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 120.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- substitute for desired algorithm",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-39",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 256.0, 301.0, 181.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Interp.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 0,
					"presentation_rect" : [ 111.0, 25.0, 50.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 115.0, 28.0, 50.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Realtime",
					"numinlets" : 1,
					"id" : "obj-41",
					"numoutlets" : 1,
					"presentation_rect" : [ 95.0, 47.0, 59.0, 18.0 ],
					"outlettype" : [ "" ],
					"inactivecolor" : [ 0.85098, 0.85098, 0.85098, 1.0 ],
					"patching_rect" : [ 466.0, 231.0, 59.0, 18.0 ],
					"activecolor" : [ 0.807843, 0.807843, 0.807843, 1.0 ],
					"presentation" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Interpolate",
					"numinlets" : 1,
					"id" : "obj-42",
					"numoutlets" : 1,
					"presentation_rect" : [ 95.0, 25.0, 59.0, 18.0 ],
					"outlettype" : [ "" ],
					"inactivecolor" : [ 0.85098, 0.85098, 0.85098, 1.0 ],
					"patching_rect" : [ 468.0, 184.0, 59.0, 18.0 ],
					"activecolor" : [ 0.807843, 0.807843, 0.807843, 1.0 ],
					"presentation" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_mute" : 1,
					"numinlets" : 1,
					"has_preview" : 1,
					"id" : "obj-43",
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_bypass" : 1,
					"outlettype" : [ "" ],
					"has_freeze" : 1,
					"presentation" : 1,
					"prefix" : "video"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 474.5, 174.0, 420.0, 174.0, 420.0, 126.0, 442.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 475.5, 123.0, 453.0, 123.0, 453.0, 111.0, 420.0, 111.0, 420.0, 78.0, 442.5, 78.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [ 143.5, 279.0, 254.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 471.5, 69.0, 447.0, 69.0, 447.0, 12.0, 472.5, 12.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 474.5, 224.0, 462.0, 224.0, 462.0, 179.0, 477.5, 179.0 ]
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
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 473.5, 283.0, 449.0, 283.0, 449.0, 229.0, 461.0, 229.0, 461.0, 226.0, 475.5, 226.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 110.5, 142.0, 16.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 124.5, 142.0, 16.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
