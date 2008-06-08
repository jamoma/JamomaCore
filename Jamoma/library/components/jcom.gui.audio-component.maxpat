{
	"patcher" : 	{
		"rect" : [ 495.0, 44.0, 949.0, 654.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 495.0, 44.0, 949.0, 654.0 ],
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
					"varname" : "metercontrol",
					"text" : "p metercontrol",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 4.0, 147.0, 77.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 133.0, 155.0, 1184.0, 756.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 133.0, 155.0, 1184.0, 756.0 ],
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
									"varname" : "audio\/enveloppe\/1[1]",
									"text" : "jcom.return audio\/amplitude\/2 @type msg_float @range/bounds 0. 1. @description \"Instant amplitude of the signal of track 2 (range 0. 1.)\"",
									"linecount" : 4,
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 944.0, 149.0, 176.0, 49.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 944.0, 120.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "audio\/enveloppe_follower\/2",
									"text" : "jcom.parameter audio\/enveloppe_follower\/2 @type msg_toggle @range/bounds 0 1 @description \"Turn on\/off the enveloppe follower for track 2 of this module\"",
									"linecount" : 3,
									"outlettype" : [ "", "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 825.0, 30.0, 248.0, 38.0 ],
									"numinlets" : 0,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "audio\/enveloppe\/1",
									"text" : "jcom.return audio\/amplitude\/1 @type msg_float @range/bounds 0. 1. @description \"Instant amplitude of the signal of track 1 (range 0. 1.)\"",
									"linecount" : 5,
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 0.0, 137.0, 147.0, 59.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 127.0, 110.0, 39.0, 28.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "audio\/enveloppe_follower\/1",
									"text" : "jcom.parameter audio\/enveloppe_follower\/1 @type msg_toggle @range/bounds 0 1 @description \"Turn on\/off the enveloppe follower for track 1 of this module\"",
									"linecount" : 3,
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 8.0, 21.0, 248.0, 38.0 ],
									"numinlets" : 0,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "local 0",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 924.0, 477.0, 40.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "defeat the meters",
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 604.0, 100.0, 90.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"id" : "obj-9",
									"patching_rect" : [ 586.0, 120.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"patching_rect" : [ 586.0, 100.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "these receive amplitude envelope info from jcom.out~",
									"id" : "obj-11",
									"fontsize" : 9.0,
									"patching_rect" : [ 315.0, 72.0, 252.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 1",
									"outlettype" : [ "bang" ],
									"id" : "obj-12",
									"fontsize" : 9.0,
									"patching_rect" : [ 334.0, 248.0, 22.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recordsprite, paintrect 66 1 70 4 250 0 0, closesprite myPeak1, drawsprite myPeak1 0 0",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"fontsize" : 9.0,
									"patching_rect" : [ 334.0, 269.0, 223.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-14",
									"fontsize" : 9.0,
									"patching_rect" : [ 173.0, 365.0, 36.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "deletesprite myPeak1",
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontsize" : 9.0,
									"patching_rect" : [ 69.0, 311.0, 108.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 1 70 35 255",
									"outlettype" : [ "int" ],
									"id" : "obj-16",
									"fontsize" : 9.0,
									"patching_rect" : [ 212.0, 270.0, 93.0, 17.0 ],
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontsize" : 9.0,
									"patching_rect" : [ 192.0, 291.0, 30.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"outlettype" : [ "bang", "" ],
									"id" : "obj-18",
									"fontsize" : 9.0,
									"patching_rect" : [ 104.0, 252.0, 32.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 70",
									"outlettype" : [ "int", "int" ],
									"id" : "obj-19",
									"fontsize" : 9.0,
									"patching_rect" : [ 104.0, 230.0, 54.0, 17.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peak",
									"outlettype" : [ "int", "int", "int" ],
									"id" : "obj-20",
									"fontsize" : 9.0,
									"patching_rect" : [ 104.0, 208.0, 40.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recordsprite, linesegment $1 1 $1 3 $2 255 16, closesprite myPeak1, drawsprite myPeak1 0 0",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontsize" : 9.0,
									"patching_rect" : [ 192.0, 315.0, 230.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 1",
									"outlettype" : [ "bang" ],
									"id" : "obj-22",
									"fontsize" : 9.0,
									"patching_rect" : [ 820.0, 245.0, 22.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recordsprite, paintrect 66 6 70 9 250 0 0, closesprite myPeak2, drawsprite myPeak2 0 0",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontsize" : 9.0,
									"patching_rect" : [ 820.0, 266.0, 223.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-24",
									"fontsize" : 9.0,
									"patching_rect" : [ 678.0, 353.0, 36.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "deletesprite myPeak2",
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"fontsize" : 9.0,
									"patching_rect" : [ 562.0, 309.0, 108.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 1 70 35 255",
									"outlettype" : [ "int" ],
									"id" : "obj-26",
									"fontsize" : 9.0,
									"patching_rect" : [ 698.0, 267.0, 93.0, 17.0 ],
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"outlettype" : [ "" ],
									"id" : "obj-27",
									"fontsize" : 9.0,
									"patching_rect" : [ 678.0, 288.0, 30.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"outlettype" : [ "bang", "" ],
									"id" : "obj-28",
									"fontsize" : 9.0,
									"patching_rect" : [ 656.0, 239.0, 32.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 70",
									"outlettype" : [ "int", "int" ],
									"id" : "obj-29",
									"fontsize" : 9.0,
									"patching_rect" : [ 656.0, 217.0, 54.0, 17.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"id" : "obj-30",
									"patching_rect" : [ 489.0, 119.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"outlettype" : [ "" ],
									"id" : "obj-31",
									"fontsize" : 9.0,
									"patching_rect" : [ 489.0, 139.0, 16.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peak",
									"outlettype" : [ "int", "int", "int" ],
									"id" : "obj-32",
									"fontsize" : 9.0,
									"patching_rect" : [ 656.0, 195.0, 40.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "bang" ],
									"id" : "obj-33",
									"patching_rect" : [ 489.0, 100.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "drawsprite myMask1 $1 0",
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"fontsize" : 9.0,
									"patching_rect" : [ 186.0, 177.0, 130.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-35",
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"patching_rect" : [ 186.0, 153.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -96 0 0 70 1.035",
									"outlettype" : [ "float" ],
									"id" : "obj-36",
									"fontsize" : 9.0,
									"patching_rect" : [ 186.0, 132.0, 116.0, 17.0 ],
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"outlettype" : [ "float" ],
									"id" : "obj-37",
									"fontsize" : 9.0,
									"patching_rect" : [ 186.0, 111.0, 34.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-38",
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"patching_rect" : [ 186.0, 92.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"outlettype" : [ "" ],
									"id" : "obj-39",
									"fontsize" : 9.0,
									"patching_rect" : [ 763.0, 393.0, 50.0, 17.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "drawsprite myMask2 $1 0",
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"fontsize" : 9.0,
									"patching_rect" : [ 790.0, 181.0, 130.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recordsprite, paintrect 0 6 70 9 50 50 50, closesprite myMask2, drawsprite myMask2 0 0",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"fontsize" : 9.0,
									"patching_rect" : [ 211.0, 473.0, 224.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recordsprite, paintrect 0 1 70 4 50 50 50, closesprite myMask1, drawsprite myMask1 0 0",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-42",
									"fontsize" : 9.0,
									"patching_rect" : [ 438.0, 473.0, 224.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-43",
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"patching_rect" : [ 790.0, 157.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale -96 0 0 70 1.035",
									"outlettype" : [ "float" ],
									"id" : "obj-44",
									"fontsize" : 9.0,
									"patching_rect" : [ 790.0, 136.0, 116.0, 17.0 ],
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"outlettype" : [ "float" ],
									"id" : "obj-45",
									"fontsize" : 9.0,
									"patching_rect" : [ 790.0, 115.0, 34.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-46",
									"triscale" : 0.9,
									"fontsize" : 9.0,
									"patching_rect" : [ 790.0, 96.0, 35.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.remote __meter__2",
									"outlettype" : [ "" ],
									"id" : "obj-47",
									"fontsize" : 9.0,
									"patching_rect" : [ 790.0, 75.0, 127.0, 17.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.remote __meter__1",
									"outlettype" : [ "" ],
									"id" : "obj-48",
									"fontsize" : 9.0,
									"patching_rect" : [ 186.0, 71.0, 127.0, 17.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 11",
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang" ],
									"id" : "obj-49",
									"fontsize" : 9.0,
									"patching_rect" : [ 764.0, 432.0, 144.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 11,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"outlettype" : [ "" ],
									"id" : "obj-50",
									"fontsize" : 9.0,
									"patching_rect" : [ 555.0, 596.0, 30.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 1 70 35 255",
									"outlettype" : [ "int" ],
									"id" : "obj-51",
									"fontsize" : 9.0,
									"patching_rect" : [ 585.0, 574.0, 93.0, 17.0 ],
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "linesegment $1 6 $1 8 $2 255 16",
									"outlettype" : [ "" ],
									"id" : "obj-52",
									"fontsize" : 9.0,
									"patching_rect" : [ 555.0, 618.0, 162.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "linesegment $1 6 $1 8 250 0 0",
									"outlettype" : [ "" ],
									"id" : "obj-53",
									"fontsize" : 9.0,
									"patching_rect" : [ 610.0, 547.0, 150.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 1 65",
									"outlettype" : [ "int", "int" ],
									"id" : "obj-54",
									"fontsize" : 9.0,
									"patching_rect" : [ 566.0, 524.0, 54.0, 17.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"outlettype" : [ "" ],
									"id" : "obj-55",
									"fontsize" : 9.0,
									"patching_rect" : [ 763.0, 597.0, 30.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 1 70 35 255",
									"outlettype" : [ "int" ],
									"id" : "obj-56",
									"fontsize" : 9.0,
									"patching_rect" : [ 793.0, 575.0, 93.0, 17.0 ],
									"numinlets" : 6,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "linesegment $1 1 $1 3 $2 255 16",
									"outlettype" : [ "" ],
									"id" : "obj-57",
									"fontsize" : 9.0,
									"patching_rect" : [ 763.0, 619.0, 162.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "linesegment $1 1 $1 3 250 0 0",
									"outlettype" : [ "" ],
									"id" : "obj-58",
									"fontsize" : 9.0,
									"patching_rect" : [ 818.0, 548.0, 150.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 1 65",
									"outlettype" : [ "int", "int" ],
									"id" : "obj-59",
									"fontsize" : 9.0,
									"patching_rect" : [ 774.0, 525.0, 54.0, 17.0 ],
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "meter 2 (right)",
									"id" : "obj-60",
									"fontsize" : 9.0,
									"patching_rect" : [ 534.0, 480.0, 79.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "meter 1 (left)",
									"id" : "obj-61",
									"fontsize" : 9.0,
									"patching_rect" : [ 779.0, 483.0, 73.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru.mxt",
									"outlettype" : [ "int" ],
									"id" : "obj-62",
									"fontsize" : 9.0,
									"patching_rect" : [ 567.0, 501.0, 75.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.thru.mxt",
									"outlettype" : [ "int" ],
									"id" : "obj-63",
									"fontsize" : 9.0,
									"patching_rect" : [ 774.0, 502.0, 75.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"id" : "obj-64",
									"patching_rect" : [ 763.0, 415.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 70",
									"outlettype" : [ "bang", "bang", "int" ],
									"id" : "obj-65",
									"fontsize" : 9.0,
									"patching_rect" : [ 649.0, 446.0, 40.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"outlettype" : [ "" ],
									"id" : "obj-66",
									"fontsize" : 9.0,
									"patching_rect" : [ 969.0, 439.0, 33.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 170 170 170",
									"outlettype" : [ "" ],
									"id" : "obj-67",
									"fontsize" : 9.0,
									"patching_rect" : [ 1004.0, 439.0, 93.0, 15.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-68",
									"patching_rect" : [ 613.0, 699.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "For now we assume two meters - we can make this dynamic later...",
									"linecount" : 2,
									"id" : "obj-69",
									"fontsize" : 9.0,
									"patching_rect" : [ 654.0, 41.0, 162.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in from lcd",
									"id" : "obj-70",
									"fontsize" : 9.0,
									"patching_rect" : [ 507.0, 100.0, 59.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recordsprite, linesegment $1 6 $1 8 $2 255 16, closesprite myPeak2, drawsprite myPeak2 0 0",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-71",
									"fontsize" : 9.0,
									"patching_rect" : [ 678.0, 312.0, 230.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 2 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 2 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 136.5, 132.0, 9.5, 132.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
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
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 195.5, 108.0, 156.5, 108.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
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
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 6 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 7 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-50", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 1 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 182.5, 688.0, 622.0, 688.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 687.5, 391.0, 202.0, 391.0, 202.0, 681.0, 622.0, 681.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1013.5, 667.0, 622.0, 667.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 978.5, 665.0, 622.0, 665.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 827.5, 663.0, 622.0, 663.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 772.5, 661.0, 622.0, 661.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 447.5, 664.0, 622.0, 664.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 220.5, 672.0, 622.0, 672.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 933.5, 684.0, 622.0, 684.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 8 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 766.0, 453.0, 658.5, 431.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-55", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 1 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0
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
									"source" : [ "obj-49", 3 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 953.5, 142.0, 953.5, 142.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 9 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 799.5, 113.0, 984.5, 113.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 10 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mult_mix_out[4]",
					"text" : "route set",
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 404.0, 51.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mult_mix_out[3]",
					"text" : "route set",
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 327.0, 478.0, 51.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "output master gain",
					"id" : "obj-4",
					"patching_rect" : [ 74.0, 191.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mult_mix_out[2]",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 450.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0. 1. 0. 157.",
					"outlettype" : [ "float" ],
					"id" : "obj-6",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 347.0, 93.0, 17.0 ],
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0. 157. 0. 1.",
					"outlettype" : [ "float" ],
					"id" : "obj-7",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 429.0, 93.0, 17.0 ],
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"outlettype" : [ "list", "list", "int", "" ],
					"id" : "obj-8",
					"local" : 0,
					"border" : 0,
					"patching_rect" : [ 4.0, 192.0, 70.0, 10.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"enablesprites" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"border" : 0,
					"filename" : "jcom.jsui_3dknob.js",
					"patching_rect" : [ 73.0, 192.0, 13.0, 11.0 ],
					"numinlets" : 1,
					"jsarguments" : [  ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mult_mix_out[1]",
					"text" : "* 0.01",
					"outlettype" : [ "float" ],
					"id" : "obj-10",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 327.0, 502.0, 40.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "send #1_FROM_GUI_AUDIO_COMPONENT",
					"id" : "obj-11",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 234.0, 139.0, 193.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio_meter_freeze_prepend",
					"text" : "prepend audio_meters_freeze",
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 234.0, 117.0, 144.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "mute",
					"id" : "obj-13",
					"patching_rect" : [ 110.0, 191.0, 13.0, 12.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "bypass",
					"id" : "obj-14",
					"patching_rect" : [ 98.0, 191.0, 13.0, 12.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "wet\/dry mix",
					"id" : "obj-15",
					"patching_rect" : [ 87.0, 192.0, 13.0, 12.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mult_mix_in",
					"text" : "* 100.",
					"outlettype" : [ "float" ],
					"id" : "obj-16",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 300.0, 388.0, 40.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mult_mix_out",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 327.0, 526.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"border" : 0,
					"filename" : "jcom.jsui_3dknob.js",
					"patching_rect" : [ 86.0, 192.0, 13.0, 11.0 ],
					"numinlets" : 1,
					"jsarguments" : [  ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[4]",
					"text" : "b 1",
					"outlettype" : [ "bang" ],
					"id" : "obj-19",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 4.0, 64.0, 22.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message audio\/meters\/clear",
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 4.0, 44.0, 166.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "button_bypass",
					"outlettype" : [ "int" ],
					"id" : "obj-21",
					"trackhorizontal" : 1,
					"snap" : 1,
					"mode" : 1,
					"trackvertical" : 1,
					"ratio" : 1,
					"patching_rect" : [ 99.0, 192.0, 11.0, 11.0 ],
					"numinlets" : 1,
					"multiplier" : 1,
					"tracking" : 1,
					"name" : "jcom.button.bypass.pct",
					"numoutlets" : 1,
					"frames" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "button_mute",
					"outlettype" : [ "int" ],
					"id" : "obj-22",
					"trackhorizontal" : 1,
					"snap" : 1,
					"mode" : 1,
					"trackvertical" : 1,
					"ratio" : 1,
					"patching_rect" : [ 109.0, 192.0, 11.0, 11.0 ],
					"numinlets" : 1,
					"multiplier" : 1,
					"tracking" : 1,
					"name" : "jcom.button.mute.pct",
					"numoutlets" : 1,
					"frames" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-23",
					"angle" : 270.0,
					"grad1" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"mode" : 1,
					"grad2" : [ 0.784314, 0.784314, 0.784314, 1.0 ],
					"patching_rect" : [ 0.0, 190.0, 123.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 7
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio\/mute",
					"text" : "jcom.parameter audio\/mute @type msg_toggle @range/bounds 0 1 @description \"When active\\, this attribute turns off the module's processing algorithm to save CPU\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 300.0, 272.0, 377.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio\/bypass",
					"text" : "jcom.parameter audio\/bypass @type msg_toggle @range/bounds 0 1 @description \"When active\\, this attribute bypasses the module's processing algtorithm\\, letting audio pass through unaffected.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 300.0, 317.0, 439.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio\/mix",
					"text" : "jcom.parameter audio\/mix @repetitions 0 @ramp/drive scheduler @type msg_float @range/bounds 0 100 @description \"Controls the wet\/dry mix of the module's processing routine in percent.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 300.0, 411.0, 432.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio\/meters\/freeze",
					"text" : "jcom.parameter audio\/meters\/freeze @type msg_toggle @range/bounds 0 1 @description \"When active\\, this attribute turns off the signal level meters in the module to conserve CPU.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-27",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 53.0, 75.0, 433.0, 28.0 ],
					"numinlets" : 0,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter.gain.mxt audio\/gain",
					"outlettype" : [ "", "" ],
					"id" : "obj-28",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 20.0, 367.0, 174.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "this is sent to the js in the gui so that it can flag the menu item correctly.",
					"id" : "obj-29",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 235.0, 159.0, 342.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
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
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
