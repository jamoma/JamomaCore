{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 213.0, 158.0, 953.0, 423.0 ],
		"bglocked" : 0,
		"defrect" : [ 213.0, 158.0, 953.0, 423.0 ],
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
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"tosymbol" : 0,
					"id" : "obj-9",
					"mode" : 1,
					"texton" : "Record",
					"presentation_rect" : [ 165.0, 48.0, 64.0, 16.0 ],
					"bgoveroncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "int", "", "int" ],
					"fontsize" : 10.970939,
					"text" : "Record",
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 178.0, 47.0, 48.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-44",
					"presentation_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 101.0, 104.0, 197.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 174.0, 320.0, 62.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 227.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-4",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 149.0, 227.0, 75.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 134.0, 243.0, 57.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 0",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-6",
					"outlettype" : [ "bang", "bang", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 472.0, 345.0, 42.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Realtime",
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-11",
					"presentation_rect" : [ 110.0, 47.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 115.0, 43.0, 53.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-12",
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
									"numinlets" : 2,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 1.0, 179.0, 228.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 1.0, 161.0, 260.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 1.0, 144.0, 171.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 150 150 150",
									"numinlets" : 4,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
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
									"numoutlets" : 0,
									"args" : [ "matrix" ],
									"id" : "obj-5",
									"name" : "jcom.class.matrix.inspector.maxpat",
									"patching_rect" : [ 3.0, 2.0, 194.0, 175.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "front" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 228.0, 93.0, 40.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"numinlets" : 2,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numoutlets" : 2,
									"id" : "obj-7",
									"outlettype" : [ "bang", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 228.0, 74.0, 32.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 228.0, 112.0, 64.0, 18.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numoutlets" : 2,
									"id" : "obj-9",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 228.0, 55.0, 163.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"hidden" : 1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"patching_rect" : [ 228.0, 36.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-3", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
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
					"maxclass" : "flonum",
					"varname" : "Framerate",
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"id" : "obj-14",
					"presentation_rect" : [ 195.0, 24.0, 34.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"minimum" : 1.0,
					"patching_rect" : [ 463.0, 16.0, 34.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "realtime",
					"text" : "jcom.parameter realtime @type msg_toggle @description \"Realtime (flag). When enabled internal clock is used.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-17",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 464.0, 252.0, 300.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "interp",
					"text" : "jcom.parameter interp @type msg_toggle @description \"Interpolate (flag).\"",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-18",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 465.0, 206.0, 386.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message stop @description \"Stop recording QuickTime movie.\"",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 487.0, 368.0, 366.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message write @description \"Start recording QuickTime movie.\"",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-20",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 472.0, 389.0, 376.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "framerate",
					"text" : "jcom.parameter framerate @type msg_float @ramp/drive none @repetitions/allow 0 @range/bounds 1. 25 @range/clipmode low @description Framerate.",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-21",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 462.0, 39.0, 420.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "quality",
					"text" : "jcom.parameter quality @type msg_symbol @description \"Codec quality.\"",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-22",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 465.0, 154.0, 379.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "codec",
					"text" : "jcom.parameter codec @type msg_symbol @description \"Codec type.\"",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-23",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 466.0, 105.0, 362.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Quality",
					"presentation" : 1,
					"items" : [ "(QUALITY)", ",", "lossless", ",", "max", ",", "min", ",", "low", ",", "normal", ",", "high" ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"numoutlets" : 3,
					"id" : "obj-24",
					"presentation_rect" : [ 3.0, 46.0, 84.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 433.0, 131.0, 84.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Codec",
					"presentation" : 1,
					"items" : [ "(CODEC)", ",", "alphagrey32", ",", "animation", ",", "argb64", ",", "avrjpeg", ",", "bmp", ",", "cinepak", ",", "cmyk", ",", "componentvideo", ",", "componentvideosigned", ",", "componentvideounsigned", ",", "dvntsc", ",", "dvpal", ",", "dvprontsc", ",", "dvpropal", ",", "flc", ",", "gif", ",", "graphics", ",", "grey16", ",", "h261", ",", "h263", ",", "indeo4", ",", "jpeg", ",", "macpaint", ",", "microsoft", ",", "mjpega", ",", "mjpegb", ",", "mpegyuv420", ",", "opendmljpeg", ",", "photocd", ",", "planarrgb", ",", "png", ",", "qd", ",", "qdgx", ",", "raw", ",", "rgb48", ",", "sgi", ",", "sorenson", ",", "sorensonyuv9", ",", "targa", ",", "tiff", ",", "vector", ",", "video", ",", "winraw", ",", "yuv420" ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"numoutlets" : 3,
					"id" : "obj-25",
					"presentation_rect" : [ 3.0, 23.0, 84.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 433.0, 83.0, 84.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/matrix/type char",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 147.0, 453.0, 142.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 147.0, 430.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r\nmax refresh",
					"linecount" : 2,
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 36.0, 256.0, 68.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fps:",
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-29",
					"presentation_rect" : [ 165.0, 24.0, 30.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 165.0, 24.0, 30.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 115.0, 123.0, 135.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.record% @module_type video @algorithm_type jitter @inspector 1 @description \"Record video to QuickTime movie.\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-31",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 7.0, 153.0, 263.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-32",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 189.0, 342.0, 85.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-33",
					"patching_rect" : [ 174.0, 342.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.record%",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "jit_matrix" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 174.0, 299.0, 90.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r\njcom.init bang",
					"linecount" : 2,
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 36.0, 221.0, 80.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-36",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 23.0, 120.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-37",
					"patching_rect" : [ 9.0, 207.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-38",
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 120.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- substitute for desired algorithm",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-39",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 256.0, 301.0, 181.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Interp.",
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-40",
					"presentation_rect" : [ 111.0, 25.0, 50.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 115.0, 28.0, 50.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Realtime",
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"activecolor" : [ 0.807843, 0.807843, 0.807843, 1.0 ],
					"id" : "obj-41",
					"presentation_rect" : [ 95.0, 47.0, 59.0, 18.0 ],
					"outlettype" : [ "" ],
					"inactivecolor" : [ 0.85098, 0.85098, 0.85098, 1.0 ],
					"patching_rect" : [ 466.0, 231.0, 59.0, 18.0 ],
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
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"activecolor" : [ 0.807843, 0.807843, 0.807843, 1.0 ],
					"id" : "obj-42",
					"presentation_rect" : [ 95.0, 25.0, 59.0, 18.0 ],
					"outlettype" : [ "" ],
					"inactivecolor" : [ 0.85098, 0.85098, 0.85098, 1.0 ],
					"patching_rect" : [ 468.0, 184.0, 59.0, 18.0 ],
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
					"presentation" : 1,
					"has_mute" : 1,
					"has_preview" : 1,
					"numinlets" : 1,
					"has_bypass" : 1,
					"numoutlets" : 1,
					"id" : "obj-43",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_freeze" : 1,
					"outlettype" : [ "" ],
					"prefix" : "video"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 110.5, 142.0, 16.5, 142.0 ]
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
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-21", 0 ],
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
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
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
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-34", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-33", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-20", 0 ],
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
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 475.5, 123.0, 453.0, 123.0, 453.0, 111.0, 420.0, 111.0, 420.0, 78.0, 442.5, 78.0 ]
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 474.5, 174.0, 420.0, 174.0, 420.0, 126.0, 442.5, 126.0 ]
				}

			}
 ]
	}

}
