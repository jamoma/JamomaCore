{
	"patcher" : 	{
		"rect" : [ 672., 165., 743., 661. ],
		"bgcolor" : [ 1., 1., 1., 1. ],
		"bglocked" : 0,
		"defrect" : [ 672., 165., 743., 661. ],
		"openinpresentation" : 0,
		"default_fontsize" : 9.,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15., 15. ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"patching_rect" : [ 545., 339., 39., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 17., 334., 15., 15. ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"patching_rect" : [ 17., 351., 55., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bypass the limiter",
					"patching_rect" : [ 163., 339., 142., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 332., 402., 36. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 17., 371., 15., 15. ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass_dcblocker $1",
					"patching_rect" : [ 17., 388., 104., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 505., 324., 27., 55. ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"orientation" : 2,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This object is currently in use in the open source Jamoma project on sourceforge.",
					"patching_rect" : [ 12., 568., 393., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This object was initially an off-shoot from jhno's limi~ object for MaxMSP. This variant supports attributes, gain-related values specified in decibels, and a built in DC Blocker.",
					"linecount" : 3,
					"patching_rect" : [ 12., 526., 358., 38. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Description",
					"patching_rect" : [ 10., 491., 253., 28. ],
					"numinlets" : 1,
					"fontsize" : 15.799999,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.501961, 0.54902, 0.733333, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 489., 402., 29. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 521., 402., 77. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "reset the history kept by the object internally",
					"linecount" : 2,
					"patching_rect" : [ 56., 449., 142., 28. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"patching_rect" : [ 17., 454., 32., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the threshold, preamp, and postamp attributes are specified in decibels (0 dB = full scale).",
					"linecount" : 2,
					"patching_rect" : [ 163., 264., 232., 28. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the release attribute is specified in milliseconds.",
					"linecount" : 2,
					"patching_rect" : [ 163., 301., 142., 28. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"patching_rect" : [ 88., 314., 45., 17. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"patching_rect" : [ 88., 297., 68., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"hbgcolor" : [ 0., 0.721569, 0.007843, 1. ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.835294, 0.019608, 0.372549, 1. ],
					"id" : "obj-19",
					"minimum" : 0.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"triangle" : 0,
					"patching_rect" : [ 17., 297., 48., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"transparent" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "release $1",
					"patching_rect" : [ 17., 314., 55., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 295., 402., 36. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "lookahead $1",
					"patching_rect" : [ 18., 167., 65., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend mode",
					"patching_rect" : [ 17., 129., 70., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The number of samples (up to 256) to look ahead into the signal to see what is coming.",
					"linecount" : 2,
					"patching_rect" : [ 163., 151., 222., 28. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "gain",
					"patching_rect" : [ 547., 206., 26., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p sound_player",
					"patching_rect" : [ 454., 181., 75., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"id" : "obj-27",
					"patcher" : 					{
						"rect" : [ 374., 251., 400., 326. ],
						"bgcolor" : [ 1., 1., 1., 1. ],
						"bglocked" : 0,
						"defrect" : [ 374., 251., 400., 326. ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15., 15. ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "flonum",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
									"patching_rect" : [ 60., 105., 35., 17. ],
									"numinlets" : 1,
									"fontsize" : 7.9,
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"patching_rect" : [ 278., 47., 46., 17. ],
									"numinlets" : 1,
									"fontsize" : 7.9,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "bang" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace",
									"patching_rect" : [ 224., 90., 41., 15. ],
									"numinlets" : 2,
									"fontsize" : 7.9,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"outlettype" : [ "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "loop 1, startloop",
									"patching_rect" : [ 278., 90., 83., 15. ],
									"numinlets" : 2,
									"fontsize" : 7.9,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"outlettype" : [ "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sig~ 1.5",
									"patching_rect" : [ 60., 123., 45., 17. ],
									"numinlets" : 1,
									"fontsize" : 7.9,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "groove~ foo",
									"patching_rect" : [ 60., 170., 62., 17. ],
									"numinlets" : 3,
									"fontsize" : 7.9,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "signal", "signal" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace drumLoop.aif",
									"patching_rect" : [ 120., 90., 103., 15. ],
									"numinlets" : 2,
									"fontsize" : 7.9,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "buffer~ foo 500",
									"patching_rect" : [ 120., 110., 80., 17. ],
									"numinlets" : 1,
									"fontsize" : 7.9,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 60., 59., 15., 15. ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 60., 213., 15., 15. ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-10",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 233.5, 107., 129.5, 107. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"default_fontface" : 0,
						"fontsize" : 9.,
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontsize" : 9.,
						"fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"patching_rect" : [ 470., 421., 65., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print dumpout",
					"patching_rect" : [ 632., 312., 72., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "atodb",
					"patching_rect" : [ 88., 277., 33., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 470., 387., 33., 33. ],
					"numinlets" : 2,
					"numoutlets" : 0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-> ->",
					"patching_rect" : [ 462., 71., 30., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"patching_rect" : [ 454., 163., 35., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"spacing" : 2,
					"patching_rect" : [ 454., 84., 56., 27. ],
					"numinlets" : 1,
					"bubblesize" : 8,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"margin" : 4,
					"id" : "obj-34",
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-41", "flonum", "float", 11., 5, "obj-40", "number", "int", 10, 5, "obj-19", "flonum", "float", 3., 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 5.30237, 5, "obj-35", "flonum", "float", 0.31405, 5, "obj-33", "flonum", "float", 2.3 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-41", "flonum", "float", 11., 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 0.56, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 3.12, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 1.5 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-41", "flonum", "float", 300., 5, "obj-40", "number", "int", 100, 5, "obj-19", "flonum", "float", 12., 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 234.863205, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.85 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-41", "flonum", "float", 111111., 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 48., 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 15754.263672, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.5 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-41", "flonum", "float", 11111111., 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 87., 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 2087046.375, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.35 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-41", "flonum", "float", 11., 5, "obj-40", "number", "int", 10, 5, "obj-19", "flonum", "float", 3., 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 0.723294, 5, "obj-35", "flonum", "float", 0.12817, 5, "obj-33", "flonum", "float", 2.3 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-41", "flonum", "float", 11., 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 0.56, 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 0.00434, 5, "obj-35", "flonum", "float", 0.004212, 5, "obj-33", "flonum", "float", 1.5 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-41", "flonum", "float", 300., 5, "obj-40", "number", "int", 100, 5, "obj-19", "flonum", "float", 12., 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 115.008751, 5, "obj-35", "flonum", "float", 0.272838, 5, "obj-33", "flonum", "float", 0.85 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-41", "flonum", "float", 111111., 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 48., 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 17612.173828, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.5 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-41", "flonum", "float", 11111111., 5, "obj-40", "number", "int", 441, 5, "obj-19", "flonum", "float", 87., 5, "obj-39", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 1290360.5, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-33", "flonum", "float", 0.35 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"patching_rect" : [ 454., 463., 35., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"rgba5" : [ 0.6, 0.729412, 0., 1. ],
					"numleds" : 20,
					"patching_rect" : [ 454., 448., 80., 13. ],
					"numinlets" : 1,
					"frgba" : [ 0., 0.658824, 0., 1. ],
					"rgba4" : [ 0.85098, 0.85098, 0., 1. ],
					"numoutlets" : 1,
					"brgba" : [ 0., 0., 0., 1. ],
					"interval" : 100,
					"outlettype" : [ "float" ],
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"patching_rect" : [ 471., 252., 35., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"rgba5" : [ 0.6, 0.729412, 0., 1. ],
					"numleds" : 20,
					"patching_rect" : [ 471., 237., 80., 13. ],
					"numinlets" : 1,
					"frgba" : [ 0., 0.658824, 0., 1. ],
					"rgba4" : [ 0.85098, 0.85098, 0., 1. ],
					"numoutlets" : 1,
					"brgba" : [ 0., 0., 0., 1. ],
					"interval" : 100,
					"outlettype" : [ "float" ],
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"patching_rect" : [ 88., 260., 35., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"hbgcolor" : [ 0., 0.721569, 0.007843, 1. ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.356863, 0.019608, 0.372549, 1. ],
					"id" : "obj-39",
					"minimum" : 0.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"triangle" : 0,
					"patching_rect" : [ 18., 150., 35., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"hbgcolor" : [ 0., 0.721569, 0.007843, 1. ],
					"transparent" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"maximum" : 441,
					"outlettype" : [ "int", "bang" ],
					"hfgcolor" : [ 0.835294, 0.019608, 0.372549, 1. ],
					"id" : "obj-40",
					"minimum" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"patching_rect" : [ 488., 204., 57., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"hbgcolor" : [ 0., 0.721569, 0.007843, 1. ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.356863, 0.019608, 0.372549, 1. ],
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 1.",
					"patching_rect" : [ 454., 204., 33., 17. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "signal" ],
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.limiter~ @preamp 0. @postamp 0.",
					"patching_rect" : [ 454., 289., 158., 17. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal", "" ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 471., 324., 27., 55. ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"orientation" : 2,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Demo Presets",
					"patching_rect" : [ 447., 59., 82., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "playback speed",
					"patching_rect" : [ 492., 164., 86., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Messages",
					"patching_rect" : [ 10., 414., 253., 28. ],
					"numinlets" : 1,
					"fontsize" : 15.799999,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.501961, 0.54902, 0.733333, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 412., 402., 29. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 444., 402., 36. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"triangle" : 0,
					"patching_rect" : [ 17., 260., 48., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"transparent" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "threshold $1",
					"patching_rect" : [ 17., 277., 65., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 258., 402., 36. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A gain control that is applied (in decibels) after the limiting process is complete.",
					"linecount" : 2,
					"patching_rect" : [ 163., 226., 220., 28. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A gain control that is applied (in decibels) prior to the signal being limited.",
					"linecount" : 2,
					"patching_rect" : [ 163., 188., 233., 28. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preamp $1",
					"patching_rect" : [ 17., 204., 55., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 17., 110., 88., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "" ],
					"items" : [ "exponential", ",", "linear" ],
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Set the function to be used for calculating the scaling.",
					"linecount" : 2,
					"patching_rect" : [ 163., 116., 138., 28. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"triangle" : 0,
					"patching_rect" : [ 17., 223., 48., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"transparent" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "postamp $1",
					"patching_rect" : [ 17., 240., 61., 15. ],
					"numinlets" : 2,
					"fontsize" : 7.9,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"outlettype" : [ "" ],
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"triangle" : 0,
					"patching_rect" : [ 17., 187., 48., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"transparent" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes",
					"patching_rect" : [ 10., 80., 253., 28. ],
					"numinlets" : 1,
					"fontsize" : 15.799999,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-61"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Look-ahead limiter with built-in DC blocking and Overdrive",
					"frgb" : [ 1., 1., 1., 1. ],
					"textcolor" : [ 1., 1., 1., 1. ],
					"patching_rect" : [ 13., 51., 309., 17. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tt.limiter~",
					"frgb" : [ 1., 1., 1., 1. ],
					"textcolor" : [ 1., 1., 1., 1. ],
					"patching_rect" : [ 13., 14., 309., 35. ],
					"numinlets" : 1,
					"fontsize" : 21.066666,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.501961, 0.54902, 0.733333, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 78., 402., 29. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-64"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 110., 402., 36. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-65"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 147., 402., 36. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 184., 402., 36. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-67"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 221., 402., 36. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bypass the internal DC Blocking component",
					"linecount" : 2,
					"patching_rect" : [ 163., 375., 142., 28. ],
					"numinlets" : 1,
					"fontsize" : 7.9,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"id" : "obj-69"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 369., 402., 36. ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-70"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1. ],
					"rounded" : 0,
					"patching_rect" : [ 8., 9., 402., 60. ],
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 0,
					"id" : "obj-71"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 315., 480.5, 315. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 533., 315., 514.5, 315. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 283., 602.5, 283. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 229., 480.5, 229. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 97.5, 332., 26.5, 295. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 61., 127., 26.5, 127. ]
				}

			}
 ]
	}

}
