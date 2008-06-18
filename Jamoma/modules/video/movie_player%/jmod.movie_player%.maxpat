{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 134.0, 98.0, 1264.0, 877.0 ],
		"bglocked" : 0,
		"defrect" : [ 134.0, 98.0, 1264.0, 877.0 ],
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
					"varname" : "GETLENGTH",
					"prototypename" : "jamoma open",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1,
					"presentation_rect" : [ 130.48761, 96.0, 45.892666, 15.000001 ],
					"fontsize" : 8.0,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 404.695892, 202.353867, 28.017475, 15.000001 ],
					"texton" : "recording",
					"outlettype" : [ "int", "", "int" ],
					"text" : "getlength",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "DISPOSE",
					"prototypename" : "jamoma open",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"presentation_rect" : [ 180.254349, 96.0, 38.882786, 15.000001 ],
					"fontsize" : 8.0,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 404.695892, 154.320404, 28.017475, 15.000001 ],
					"texton" : "recording",
					"outlettype" : [ "int", "", "int" ],
					"text" : "dispose",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "STOP",
					"prototypename" : "jamoma open",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"presentation_rect" : [ 70.298859, 96.0, 28.017475, 15.000001 ],
					"fontsize" : 8.0,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 404.695892, 105.685539, 28.017475, 15.000001 ],
					"texton" : "recording",
					"outlettype" : [ "int", "", "int" ],
					"text" : "stop",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "START",
					"prototypename" : "jamoma open",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"presentation_rect" : [ 38.979446, 96.0, 28.017475, 15.000001 ],
					"fontsize" : 8.0,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 404.695892, 57.877117, 28.017475, 15.000001 ],
					"texton" : "recording",
					"outlettype" : [ "int", "", "int" ],
					"text" : "start",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "READ",
					"prototypename" : "jamoma open",
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"presentation_rect" : [ 7.936831, 96.0, 28.017475, 15.000001 ],
					"fontsize" : 8.0,
					"numoutlets" : 3,
					"border" : 1,
					"patching_rect" : [ 404.695892, 6.537872, 28.017475, 15.000001 ],
					"texton" : "recording",
					"outlettype" : [ "int", "", "int" ],
					"text" : "read",
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-63",
					"numinlets" : 1,
					"presentation_rect" : [ 235.0, 23.0, 60.0, 45.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"outlettype" : [ "", "" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loop:",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"presentation_rect" : [ 106.0, 24.0, 37.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 93.0, 23.0, 37.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-7",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 76.0, 249.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 131.0, 154.0, 193.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 143.0, 172.0, 135.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 273.0, 172.0, 31.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 97.0, 345.0, 49.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 97.0, 323.0, 86.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DIM_Y",
					"fontname" : "Verdana",
					"minimum" : 1,
					"id" : "obj-13",
					"numinlets" : 1,
					"presentation_rect" : [ 184.0, 67.0, 37.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"patching_rect" : [ 437.0, 377.0, 37.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DIM_X",
					"fontname" : "Verdana",
					"minimum" : 1,
					"id" : "obj-14",
					"numinlets" : 1,
					"presentation_rect" : [ 146.0, 67.0, 37.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"patching_rect" : [ 404.0, 377.0, 37.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Colormode:",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"presentation_rect" : [ 94.0, 47.0, 67.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 93.0, 53.0, 67.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dim:",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"presentation_rect" : [ 116.0, 67.0, 33.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 159.0, 66.0, 33.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "colormode",
					"text" : "jcom.parameter colormode @type msg_symbol Colormode.",
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 402.0, 453.0, 305.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "COLORMODE",
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-21",
					"numinlets" : 1,
					"presentation_rect" : [ 158.0, 45.0, 63.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 381.0, 432.0, 63.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"items" : [ "argb", ",", "uyvy" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dim",
					"text" : "jcom.parameter dim @type msg_list @ramp/drive none @description \"Image size\"",
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 552.0, 357.0, 421.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 11,
					"fontsize" : 9.873845,
					"numoutlets" : 11,
					"patching_rect" : [ 403.0, 356.0, 144.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 215.0, 413.0, 62.0, 18.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 76.0, 278.0, 55.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message direct @type msg_generic",
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 403.0, 303.0, 213.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter loop @type msg_symbol @description \"Set loop attribute.\"",
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 403.0, 272.0, 384.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "LOOP",
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-29",
					"numinlets" : 1,
					"presentation_rect" : [ 139.0, 23.0, 82.0, 19.0 ],
					"pattrmode" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 371.0, 250.0, 82.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"presentation" : 1,
					"items" : [ "none", ",", "normal", ",", "palindrome", ",", "looppoints" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message getlength @type msg_none @description \"Get movie length in ms\"",
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 404.695892, 222.0, 417.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dispose @type msg_none @description \"Playback control\"",
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 404.695892, 175.0, 372.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message stop @type msg_none @description \"Playback control\"",
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 404.695892, 128.0, 356.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message start @type msg_none @description \"Playback control\"",
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 404.695892, 81.0, 358.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0 0",
					"fontname" : "Verdana",
					"id" : "obj-38",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 4,
					"patching_rect" : [ 14.0, 558.0, 84.0, 18.0 ],
					"outlettype" : [ "int", "int", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"id" : "obj-39",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 14.0, 722.0, 68.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0 0 0 0",
					"fontname" : "Verdana",
					"id" : "obj-40",
					"numinlets" : 4,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 14.0, 700.0, 69.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "unique",
					"text" : "jcom.parameter unique @type msg_toggle @description \"Playback quality option.\"",
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 105.0, 672.0, 420.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "deinterlace",
					"text" : "jcom.parameter deinterlace @type msg_toggle @description \"Playback quality option.\"",
					"fontname" : "Verdana",
					"id" : "obj-42",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 105.0, 647.0, 441.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "singlefield",
					"text" : "jcom.parameter singlefield @type msg_toggle @description \"Playback quality option.\"",
					"fontname" : "Verdana",
					"id" : "obj-43",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 105.0, 622.0, 436.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "deinterlace",
					"fontname" : "Verdana",
					"id" : "obj-44",
					"numinlets" : 1,
					"presentation_rect" : [ 20.0, 56.0, 67.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 54.0, 67.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unique",
					"fontname" : "Verdana",
					"id" : "obj-45",
					"numinlets" : 1,
					"presentation_rect" : [ 20.0, 72.0, 65.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 70.0, 65.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "singlefield",
					"fontname" : "Verdana",
					"id" : "obj-46",
					"numinlets" : 1,
					"presentation_rect" : [ 20.0, 40.0, 67.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 38.0, 67.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "highquality",
					"fontname" : "Verdana",
					"id" : "obj-47",
					"numinlets" : 1,
					"presentation_rect" : [ 20.0, 23.0, 67.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 22.0, 67.0, 19.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Options",
					"id" : "obj-48",
					"numinlets" : 1,
					"presentation_rect" : [ 5.0, 22.0, 80.0, 66.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 490.0, 80.0, 66.0 ],
					"activecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"itemtype" : 1,
					"size" : 4,
					"values" : [ 0, 0, 1, 0 ],
					"disabled" : [ 0, 0, 0, 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message read @type msg_generic @description \"Playback control\"",
					"fontname" : "Verdana",
					"id" : "obj-51",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 404.695892, 32.0, 369.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "highquality",
					"text" : "jcom.parameter highquality @type msg_toggle @description \"Playback quality option.\"",
					"fontname" : "Verdana",
					"id" : "obj-53",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 105.0, 597.0, 441.0, 18.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.movie_player% @module_type video @algorithm_type jitter @description \"Read QT movie film.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-54",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 1.0, 194.0, 320.0, 30.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TEXTURE OUTPUT",
					"fontname" : "Verdana",
					"id" : "obj-55",
					"numinlets" : 1,
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 231.0, 441.0, 98.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-56",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 215.0, 441.0, 13.0, 13.0 ],
					"comment" : "(texture)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.movie_player%",
					"fontname" : "Verdana",
					"id" : "obj-57",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"patching_rect" : [ 97.0, 389.0, 128.0, 18.0 ],
					"outlettype" : [ "", "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r\njmod.init bang",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-58",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"patching_rect" : [ 6.0, 348.0, 81.0, 28.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"id" : "obj-59",
					"numinlets" : 1,
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 170.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-60",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 306.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-61",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 170.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"has_preview" : 1,
					"has_bypass" : 1,
					"id" : "obj-62",
					"numinlets" : 1,
					"has_freeze" : 1,
					"presentation_rect" : [ 0.0, -1.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"prefix" : "video",
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"has_mute" : 1,
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 10 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 3 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 2 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-40", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [ 85.5, 309.0, 215.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 371.0, 106.5, 371.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 140.5, 191.0, 10.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 282.5, 191.0, 10.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 152.5, 191.0, 10.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 23.5, 741.0, 0.0, 741.0, 0.0, 486.0, 24.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 412.5, 291.0, 357.0, 291.0, 357.0, 246.0, 380.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 413.5, 396.0, 390.0, 396.0, 390.0, 351.0, 412.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [ 446.5, 405.0, 390.0, 405.0, 390.0, 342.0, 425.0, 342.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 411.5, 471.0, 378.0, 471.0, 378.0, 429.0, 390.5, 429.0 ]
				}

			}
 ]
	}

}
