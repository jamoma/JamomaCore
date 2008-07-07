{
	"patcher" : 	{
		"rect" : [ 65., 47., 672., 573. ],
		"bgcolor" : [ 1., 1., 1., 1. ],
		"bglocked" : 0,
		"defrect" : [ 65., 47., 672., 573. ],
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
					"maxclass" : "flonum",
					"patching_rect" : [ 48., 145., 50., 18. ],
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.,
					"id" : "obj-33",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"patching_rect" : [ 319., 294., 130., 130. ],
					"numoutlets" : 0,
					"id" : "obj-32",
					"presentation_rect" : [ 319., 294., 0., 0. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
					"patching_rect" : [ 394., 158., 35., 17. ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 7.9,
					"triscale" : 0.9,
					"id" : "obj-1",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "preamp $1",
					"patching_rect" : [ 394., 180., 58., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 7.9,
					"id" : "obj-2",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"patching_rect" : [ 295., 132., 60., 17. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 7.9,
					"id" : "obj-3",
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend mode",
					"patching_rect" : [ 295., 178., 71., 17. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 7.9,
					"id" : "obj-4",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 295., 157., 95., 17. ],
					"numoutlets" : 3,
					"fontname" : "Arial",
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 7.9,
					"id" : "obj-5",
					"items" : [ "s-shape", ",", "sinus", "(default)" ],
					"labelclick" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"overdrive~ vs. jcom.saturation~\"",
					"patching_rect" : [ 30., 510., 176., 17. ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 7.9,
					"id" : "obj-6",
					"numinlets" : 0,
					"patcher" : 					{
						"rect" : [ 355., 182., 635., 586. ],
						"bgcolor" : [ 1., 1., 1., 1. ],
						"bglocked" : 0,
						"defrect" : [ 355., 182., 635., 586. ],
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
									"maxclass" : "message",
									"text" : "stop",
									"patching_rect" : [ 241., 460., 27., 15. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 7.9,
									"id" : "obj-1",
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startwindow",
									"patching_rect" : [ 174., 460., 65., 15. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 7.9,
									"id" : "obj-2",
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dac~",
									"patching_rect" : [ 174., 491., 29., 17. ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 7.9,
									"id" : "obj-3",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 50., 283., 33., 15. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 7.9,
									"id" : "obj-4",
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
									"patching_rect" : [ 174., 50., 35., 17. ],
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 7.9,
									"triscale" : 0.9,
									"id" : "obj-5",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
									"patching_rect" : [ 216., 99., 35., 17. ],
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 7.9,
									"triscale" : 0.9,
									"id" : "obj-6",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 5",
									"patching_rect" : [ 174., 70., 48., 17. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ],
									"fontsize" : 7.9,
									"id" : "obj-7",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 50., 261., 15., 15. ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-8",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 50., 239., 15., 15. ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-9",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "bypass_dcblocker $1",
									"patching_rect" : [ 67., 261., 104., 15. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 7.9,
									"id" : "obj-10",
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "bypass $1",
									"patching_rect" : [ 67., 239., 55., 15. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 7.9,
									"id" : "obj-11",
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "overdrive $1",
									"patching_rect" : [ 196., 287., 69., 15. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 7.9,
									"id" : "obj-12",
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.saturation~",
									"patching_rect" : [ 174., 316., 91., 17. ],
									"numoutlets" : 3,
									"fontname" : "Arial",
									"outlettype" : [ "signal", "signal", "" ],
									"fontsize" : 7.9,
									"id" : "obj-13",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 174., 341., 128., 74. ],
									"numoutlets" : 0,
									"rounded" : 0,
									"id" : "obj-14",
									"brgba" : [ 0.529412, 0.529412, 0.529412, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "50",
									"patching_rect" : [ 422., 168., 20., 15. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 7.9,
									"id" : "obj-15",
									"hidden" : 1,
									"color2" : [ 0.867, 0.867, 0.867, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"patching_rect" : [ 422., 148., 46., 17. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "bang" ],
									"fontsize" : 7.9,
									"id" : "obj-16",
									"hidden" : 1,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
									"patching_rect" : [ 422., 229., 35., 17. ],
									"numoutlets" : 2,
									"fontname" : "Arial",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 7.9,
									"triscale" : 0.9,
									"id" : "obj-17",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "\/ 10.",
									"patching_rect" : [ 422., 208., 32., 17. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "float" ],
									"fontsize" : 7.9,
									"id" : "obj-18",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"patching_rect" : [ 422., 187., 144., 18. ],
									"size" : 100.,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"min" : 10.,
									"id" : "obj-19",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "original sine wave",
									"linecount" : 3,
									"patching_rect" : [ 320., 142., 45., 38. ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 7.9,
									"id" : "obj-20",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 189., 124., 128., 74. ],
									"numoutlets" : 0,
									"rounded" : 0,
									"id" : "obj-21",
									"brgba" : [ 0.529412, 0.529412, 0.529412, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "overdrive~",
									"patching_rect" : [ 330., 316., 59., 17. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ],
									"fontsize" : 7.9,
									"id" : "obj-22",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 330., 341., 128., 74. ],
									"numoutlets" : 0,
									"drawstyle" : 1,
									"rounded" : 0,
									"id" : "obj-23",
									"brgba" : [ 0.529412, 0.529412, 0.529412, 1. ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+~ 1.",
									"patching_rect" : [ 174., 98., 39., 17. ],
									"numoutlets" : 1,
									"fontname" : "Arial",
									"outlettype" : [ "signal" ],
									"fontsize" : 7.9,
									"id" : "obj-24",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "shaped sine waves",
									"linecount" : 3,
									"patching_rect" : [ 461., 361., 45., 38. ],
									"numoutlets" : 0,
									"fontname" : "Arial",
									"fontsize" : 7.9,
									"id" : "obj-25",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 300., 183.5, 300. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 205.5, 307., 183.5, 307. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 76.5, 256., 183.5, 256. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 76.5, 278., 183.5, 278. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 183.5, 485., 183.5, 485. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 250.5, 485., 183.5, 485. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 183.5, 120., 198.5, 120. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 431.5, 265., 205.5, 265. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 431.5, 268., 339.5, 268. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 183.5, 218., 339.5, 218. ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 9.,
						"fontsize" : 9.,
						"fontface" : 0,
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 147., 113., 46., 17. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "bang" ],
					"fontsize" : 7.9,
					"id" : "obj-7",
					"hidden" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"patching_rect" : [ 42., 325., 22., 122. ],
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-8",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~ 2.",
					"patching_rect" : [ 41., 179., 54., 17. ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "" ],
					"fontsize" : 7.9,
					"id" : "obj-10",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 459., 158., 15., 15. ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-11",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 567., 158., 15., 15. ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass_dcblocker $1",
					"patching_rect" : [ 459., 180., 104., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 7.9,
					"id" : "obj-13",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"patching_rect" : [ 567., 180., 55., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 7.9,
					"id" : "obj-14",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "overdrive $1",
					"patching_rect" : [ 147., 218., 69., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 7.9,
					"id" : "obj-15",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tt.overdrive~ 8",
					"patching_rect" : [ 41., 289., 88.117645, 17. ],
					"numoutlets" : 9,
					"fontname" : "Arial",
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"fontsize" : 7.9,
					"id" : "obj-16",
					"numinlets" : 8
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "50",
					"patching_rect" : [ 147., 134., 20., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 7.9,
					"id" : "obj-17",
					"hidden" : 1,
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hfgcolor" : [ 0.870588, 0.870588, 0.870588, 1. ],
					"patching_rect" : [ 147., 197., 35., 17. ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 7.9,
					"triscale" : 0.9,
					"id" : "obj-18",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1. ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "\/ 10.",
					"patching_rect" : [ 147., 176., 32., 17. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "float" ],
					"fontsize" : 7.9,
					"id" : "obj-19",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"patching_rect" : [ 147., 155., 144., 18. ],
					"size" : 100.,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"min" : 10.,
					"id" : "obj-20",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.saturation~",
					"patching_rect" : [ 29., 34., 199., 28. ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 15.799999,
					"id" : "obj-21",
					"frgb" : [ 1., 1., 1., 1. ],
					"textcolor" : [ 1., 1., 1., 1. ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "saturate audio signals",
					"patching_rect" : [ 29., 65., 144., 17. ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 7.9,
					"id" : "obj-22",
					"frgb" : [ 1., 1., 1., 1. ],
					"textcolor" : [ 1., 1., 1., 1. ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"frgba" : [ 0.501961, 0.043137, 0.039216, 1. ],
					"patching_rect" : [ 21., 25., 273., 63. ],
					"numoutlets" : 0,
					"rounded" : 0,
					"id" : "obj-23",
					"brgba" : [ 0.262745, 0.254902, 0.419608, 1. ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"frgba" : [ 0.501961, 0.043137, 0.039216, 1. ],
					"patching_rect" : [ 21., 25., 273., 63. ],
					"numoutlets" : 0,
					"rounded" : 0,
					"id" : "obj-24",
					"brgba" : [ 0.262745, 0.254902, 0.419608, 1. ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mono or stereo",
					"patching_rect" : [ 29., 108., 193., 17. ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 7.9,
					"id" : "obj-25",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"patching_rect" : [ 141., 432., 27., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 7.9,
					"id" : "obj-26",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"patching_rect" : [ 74., 432., 65., 15. ],
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"fontsize" : 7.9,
					"id" : "obj-27",
					"color2" : [ 0.867, 0.867, 0.867, 1. ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"patching_rect" : [ 41., 463., 29., 17. ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 7.9,
					"id" : "obj-28",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "optional argument sets initial drive",
					"patching_rect" : [ 29., 94., 168., 17. ],
					"numoutlets" : 0,
					"fontname" : "Arial",
					"fontsize" : 7.9,
					"id" : "obj-29",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"patching_rect" : [ 319., 427., 130., 130. ],
					"numoutlets" : 0,
					"id" : "obj-31",
					"numinlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 403.5, 245., 50.5, 245. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 156.5, 245., 50.5, 245. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 576.5, 245., 50.5, 245. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 468.5, 245., 50.5, 245. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 304.5, 245., 50.5, 245. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 150.5, 457., 50.5, 457. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 83.5, 457., 50.5, 457. ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
