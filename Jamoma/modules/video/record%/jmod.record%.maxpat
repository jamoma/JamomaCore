{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 273.0, 414.0, 953.0, 423.0 ],
		"bglocked" : 0,
		"defrect" : [ 273.0, 414.0, 953.0, 423.0 ],
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
					"bgoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 475.0, 320.0, 48.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-9",
					"texton" : "Record",
					"rounded" : 8.0,
					"numinlets" : 1,
					"tosymbol" : 0,
					"mode" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"text" : "Record",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 179.0, 48.0, 51.0, 16.0 ],
					"bgoveroncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"presentation" : 1,
					"id" : "obj-44",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 235.0, 20.0, 60.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"patching_rect" : [ 101.0, 104.0, 197.0, 16.0 ],
					"id" : "obj-1",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"patching_rect" : [ 174.0, 320.0, 62.0, 18.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 134.0, 227.0, 13.0, 13.0 ],
					"id" : "obj-3",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"patching_rect" : [ 149.0, 227.0, 75.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"patching_rect" : [ 134.0, 243.0, 57.0, 18.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 0",
					"patching_rect" : [ 472.0, 345.0, 42.0, 18.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Realtime",
					"patching_rect" : [ 115.0, 43.0, 53.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 110.0, 47.0, 53.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"patching_rect" : [ 157.0, 378.0, 64.0, 18.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 100.0, 100.0, 601.0, 529.0 ],
						"bgcolor" : [ 0.588235, 0.588235, 0.588235, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 601.0, 529.0 ],
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
									"text" : "window size 100 100 303 252, window exec",
									"patching_rect" : [ 0.0, 225.0, 228.0, 16.0 ],
									"id" : "obj-1",
									"hidden" : 1,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"patching_rect" : [ 0.0, 207.0, 260.0, 16.0 ],
									"id" : "obj-2",
									"hidden" : 1,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"patching_rect" : [ 0.0, 190.0, 171.0, 16.0 ],
									"id" : "obj-3",
									"hidden" : 1,
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 150 150 150",
									"patching_rect" : [ 228.0, 147.0, 112.0, 18.0 ],
									"id" : "obj-4",
									"hidden" : 1,
									"numinlets" : 4,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "/matrix",
									"args" : [ "matrix" ],
									"patching_rect" : [ 2.0, 3.0, 203.0, 151.0 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"name" : "jcom.class.matrix.inspector.maxpat",
									"numoutlets" : 0,
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"patching_rect" : [ 228.0, 93.0, 40.0, 18.0 ],
									"id" : "obj-6",
									"hidden" : 1,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 228.0, 112.0, 64.0, 18.0 ],
									"id" : "obj-8",
									"hidden" : 1,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845,
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 100, 100, 701, 655, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /panel/open",
									"patching_rect" : [ 228.0, 55.0, 163.0, 18.0 ],
									"id" : "obj-9",
									"hidden" : 1,
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 228.0, 36.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"hidden" : 1,
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
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
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Framerate",
					"triangle" : 0,
					"patching_rect" : [ 463.0, 16.0, 34.0, 19.0 ],
					"triscale" : 0.9,
					"presentation" : 1,
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"minimum" : 1.0,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 195.0, 24.0, 34.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "realtime",
					"text" : "jcom.parameter realtime @type msg_toggle @description \"Realtime (flag). When enabled internal clock is used.\"",
					"linecount" : 2,
					"patching_rect" : [ 464.0, 252.0, 300.0, 30.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "interp",
					"text" : "jcom.parameter interp @type msg_toggle @description \"Interpolate (flag).\"",
					"patching_rect" : [ 465.0, 206.0, 386.0, 18.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message stop @description \"Stop recording QuickTime movie.\"",
					"patching_rect" : [ 487.0, 368.0, 366.0, 18.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message write @description \"Start recording QuickTime movie.\"",
					"patching_rect" : [ 472.0, 389.0, 376.0, 18.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "framerate",
					"text" : "jcom.parameter framerate @type msg_float @ramp/drive none @repetitions/allow 0 @range/bounds 1. 25 @range/clipmode low @description Framerate.",
					"linecount" : 2,
					"patching_rect" : [ 462.0, 39.0, 423.0, 30.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "quality",
					"text" : "jcom.parameter quality @type msg_symbol @description \"Codec quality.\"",
					"patching_rect" : [ 465.0, 154.0, 379.0, 18.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "codec",
					"text" : "jcom.parameter codec @type msg_symbol @description \"Codec type.\"",
					"patching_rect" : [ 466.0, 105.0, 362.0, 18.0 ],
					"id" : "obj-23",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Quality",
					"patching_rect" : [ 433.0, 131.0, 84.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 3.0, 46.0, 84.0, 19.0 ],
					"items" : [ "(QUALITY)", ",", "lossless", ",", "max", ",", "min", ",", "low", ",", "normal", ",", "high" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Codec",
					"patching_rect" : [ 433.0, 83.0, 84.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 3.0, 23.0, 84.0, 19.0 ],
					"items" : [ "(CODEC)", ",", "alphagrey32", ",", "animation", ",", "argb64", ",", "avrjpeg", ",", "bmp", ",", "cinepak", ",", "cmyk", ",", "componentvideo", ",", "componentvideosigned", ",", "componentvideounsigned", ",", "dvntsc", ",", "dvpal", ",", "dvprontsc", ",", "dvpropal", ",", "flc", ",", "gif", ",", "graphics", ",", "grey16", ",", "h261", ",", "h263", ",", "indeo4", ",", "jpeg", ",", "macpaint", ",", "microsoft", ",", "mjpega", ",", "mjpegb", ",", "mpegyuv420", ",", "opendmljpeg", ",", "photocd", ",", "planarrgb", ",", "png", ",", "qd", ",", "qdgx", ",", "raw", ",", "rgb48", ",", "sgi", ",", "sorenson", ",", "sorensonyuv9", ",", "targa", ",", "tiff", ",", "vector", ",", "video", ",", "winraw", ",", "yuv420" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/matrix/type char",
					"patching_rect" : [ 147.0, 453.0, 142.0, 16.0 ],
					"id" : "obj-26",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 147.0, 430.0, 68.0, 18.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"patching_rect" : [ 36.0, 256.0, 68.0, 28.0 ],
					"id" : "obj-28",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fps:",
					"patching_rect" : [ 165.0, 24.0, 30.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-29",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 165.0, 24.0, 30.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 115.0, 123.0, 135.0, 16.0 ],
					"id" : "obj-30",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Record video to QuickTime movie.\"",
					"linecount" : 3,
					"patching_rect" : [ 7.0, 153.0, 263.0, 42.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"patching_rect" : [ 189.0, 342.0, 85.0, 18.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 174.0, 342.0, 13.0, 13.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.record%",
					"patching_rect" : [ 174.0, 299.0, 90.0, 18.0 ],
					"id" : "obj-34",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"patching_rect" : [ 36.0, 221.0, 80.0, 28.0 ],
					"id" : "obj-35",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"patching_rect" : [ 23.0, 120.0, 86.0, 18.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 9.0, 207.0, 13.0, 13.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 9.0, 120.0, 13.0, 13.0 ],
					"id" : "obj-38",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Interp.",
					"patching_rect" : [ 115.0, 28.0, 50.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-40",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 111.0, 25.0, 50.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Realtime",
					"patching_rect" : [ 466.0, 231.0, 59.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-41",
					"inactivecolor" : [ 0.85098, 0.85098, 0.85098, 1.0 ],
					"numinlets" : 1,
					"activecolor" : [ 0.807843, 0.807843, 0.807843, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 95.0, 47.0, 59.0, 18.0 ],
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
					"patching_rect" : [ 468.0, 184.0, 59.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-42",
					"inactivecolor" : [ 0.85098, 0.85098, 0.85098, 1.0 ],
					"numinlets" : 1,
					"activecolor" : [ 0.807843, 0.807843, 0.807843, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 95.0, 25.0, 59.0, 18.0 ],
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
					"prefix" : "video",
					"presentation" : 1,
					"id" : "obj-43",
					"numinlets" : 1,
					"has_freeze" : 1,
					"numoutlets" : 1,
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"has_preview" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"has_panel" : 1,
					"has_bypass" : 1
				}

			}
 ],
		"lines" : [ 			{
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
