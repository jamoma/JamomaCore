{
	"patcher" : 	{
		"rect" : [ -4.0, 44.0, 895.0, 444.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ -4.0, 44.0, 895.0, 444.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p presets_and_generic",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"fontsize" : 12.288889,
					"numinlets" : 0,
					"patching_rect" : [ 95.0, 309.0, 172.0, 23.0 ],
					"numoutlets" : 0,
					"patcher" : 					{
						"rect" : [ 238.0, 214.0, 443.0, 449.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 238.0, 214.0, 443.0, 449.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.output~.help",
									"fontname" : "Verdana",
									"hidden" : 1,
									"id" : "obj-1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 246.0, 44.0, 99.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "jmod.preset_params.maxpat",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"numinlets" : 0,
									"args" : [ "jmod.input~" ],
									"patching_rect" : [ 31.0, 34.0, 374.0, 347.0 ],
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "limiter",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"fontsize" : 15.799999,
					"numinlets" : 1,
					"patching_rect" : [ 401.0, 184.0, 128.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.output~",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-3",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999,
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 28.0, 189.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic stereo output module with some master fx and recording",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-4",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 54.0, 296.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-5",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 12.0, 556.0, 62.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input~",
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-6",
					"numinlets" : 1,
					"args" : [ "\/input~" ],
					"patching_rect" : [ 580.0, 89.0, 303.0, 143.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Recording",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"fontsize" : 15.799999,
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 338.0, 128.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-8",
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 336.0, 177.0, 27.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.output~.help",
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-9",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 77.0, 344.0, 98.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend \/record\/samptype",
					"linecount" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 89.0, 399.0, 91.0, 28.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend \/record\/filetype",
					"linecount" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 89.0, 370.0, 91.0, 28.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "FiletypeMenu",
					"fontname" : "Verdana",
					"items" : [ "aiff", ",", "au", ",", "raw", ",", "wave", ",", "sd2" ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-12",
					"types" : [  ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 370.0, 61.0, 17.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "SamptypeMenu",
					"fontname" : "Verdana",
					"items" : [ "int8", ",", "int16", ",", "int24", ",", "int32", ",", "float32", ",", "float64", ",", "mulaw", ",", "alaw" ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-13",
					"types" : [  ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 399.0, 61.0, 17.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set -6",
					"fontname" : "Verdana",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 426.0, 484.0, 81.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 64",
					"fontname" : "Verdana",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 426.0, 463.0, 82.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set 0",
					"fontname" : "Verdana",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 429.0, 442.0, 75.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/limiter\/mode linear",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 415.0, 408.0, 105.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/limiter\/mode exponential",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 415.0, 390.0, 130.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"maximum" : 48.0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"minimum" : -48.0,
					"id" : "obj-19",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 416.0, 366.0, 35.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/limiter\/threshold $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 454.0, 366.0, 110.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hidden parameters",
					"fontname" : "Verdana",
					"id" : "obj-21",
					"fontsize" : 10.533333,
					"numinlets" : 1,
					"patching_rect" : [ 400.0, 306.0, 142.0, 21.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"maximum" : 256.0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"id" : "obj-22",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 416.0, 348.0, 35.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"maximum" : 48.0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"minimum" : -48.0,
					"id" : "obj-23",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 416.0, 330.0, 35.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/limiter\/lookahead $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 454.0, 348.0, 111.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/limiter\/postamp $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 454.0, 330.0, 105.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-26",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 392.0, 304.0, 176.0, 126.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.output~.help",
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-27",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 449.0, 479.0, 98.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"maximum" : 10000.0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"id" : "obj-28",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 416.0, 278.0, 35.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"maximum" : 48.0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"id" : "obj-29",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 416.0, 260.0, 35.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/limiter\/release $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 454.0, 278.0, 101.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/limiter\/preamp $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 454.0, 260.0, 101.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/limiter\/active $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 433.0, 240.0, 96.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-33",
					"numinlets" : 1,
					"patching_rect" : [ 416.0, 240.0, 15.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"maximum" : 99,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"id" : "obj-34",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 219.0, 401.0, 35.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"numinlets" : 1,
					"args" : [ "\/control" ],
					"patching_rect" : [ 579.0, 16.0, 302.0, 74.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 644.0, 394.0, 65.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dac~: Output Channels",
					"fontname" : "Verdana",
					"id" : "obj-37",
					"fontsize" : 10.533333,
					"numinlets" : 1,
					"patching_rect" : [ 399.0, 116.0, 149.0, 21.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"maximum" : 512,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"id" : "obj-38",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 414.0, 159.0, 35.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"maximum" : 512,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"id" : "obj-39",
					"triscale" : 0.9,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 414.0, 139.0, 35.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/ch_2 $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 451.0, 159.0, 53.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/ch_1 $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 451.0, 139.0, 53.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 580.0, 415.0, 127.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-43",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 580.0, 394.0, 61.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.output~.help",
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-44",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 274.0, 88.0, 98.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/saturation\/depth $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 256.0, 401.0, 107.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/saturation\/active $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 235.0, 381.0, 111.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-47",
					"numinlets" : 1,
					"patching_rect" : [ 218.0, 381.0, 15.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.output~.help",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 580.0, 233.0, 98.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/output~",
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"numinlets" : 3,
					"args" : [ "\/output~" ],
					"patching_rect" : [ 580.0, 254.0, 303.0, 142.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output Control",
					"fontname" : "Verdana",
					"id" : "obj-50",
					"fontsize" : 15.799999,
					"numinlets" : 1,
					"patching_rect" : [ 399.0, 85.0, 138.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.gain_params.maxpat",
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"numinlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 11.0, 83.0, 373.0, 221.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-52",
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 391.0, 83.0, 177.0, 27.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-53",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 391.0, 114.0, 177.0, 66.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-54",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 368.0, 178.0, 62.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"fontname" : "Verdana",
					"id" : "obj-55",
					"fontsize" : 15.799999,
					"numinlets" : 1,
					"patching_rect" : [ 203.0, 339.0, 128.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-56",
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 337.0, 177.0, 27.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-57",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 367.0, 177.0, 62.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-58",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 571.0, 12.0, 314.0, 424.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-59",
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 392.0, 183.0, 177.0, 27.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Limiter",
					"fontname" : "Verdana",
					"id" : "obj-60",
					"fontsize" : 15.799999,
					"numinlets" : 1,
					"patching_rect" : [ 400.0, 185.0, 128.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Displayed parameters",
					"fontname" : "Verdana",
					"id" : "obj-61",
					"fontsize" : 10.533333,
					"numinlets" : 1,
					"patching_rect" : [ 400.0, 216.0, 149.0, 21.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-62",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"patching_rect" : [ 392.0, 214.0, 176.0, 85.0 ],
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 653.5, 413.0, 589.5, 413.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0
				}

			}
 ]
	}

}
