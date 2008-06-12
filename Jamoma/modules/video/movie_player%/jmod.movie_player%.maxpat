{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 40.0, 45.0, 1119.0, 877.0 ],
		"bglocked" : 0,
		"defrect" : [ 40.0, 45.0, 1119.0, 877.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
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
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-63",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loop:",
					"patching_rect" : [ 93.0, 23.0, 37.0, 18.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "DISPOSE",
					"patching_rect" : [ 204.0, 94.0, 45.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"filename" : "jsui_textbutton.js",
					"jsarguments" : [ "dispose", 225, 225, 225, 68, 68, 68 ],
					"numinlets" : 1,
					"nofsaa" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "GETLENGTH",
					"patching_rect" : [ 157.0, 94.0, 45.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"filename" : "jsui_textbutton.js",
					"jsarguments" : [ "getlength", 225, 225, 225, 68, 68, 68 ],
					"numinlets" : 1,
					"nofsaa" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "STOP",
					"patching_rect" : [ 98.0, 94.0, 45.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"filename" : "jsui_textbutton.js",
					"jsarguments" : [ "Stop", 225, 225, 225, 68, 68, 68 ],
					"numinlets" : 1,
					"nofsaa" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "START",
					"patching_rect" : [ 52.0, 94.0, 45.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"filename" : "jsui_textbutton.js",
					"jsarguments" : [ "Start", 225, 225, 225, 68, 68, 68 ],
					"numinlets" : 1,
					"nofsaa" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "READ",
					"patching_rect" : [ 6.0, 94.0, 45.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"filename" : "jsui_textbutton.js",
					"jsarguments" : [ "Read", 225, 225, 225, 68, 68, 68 ],
					"numinlets" : 1,
					"nofsaa" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 173.0, 244.0, 15.0, 15.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"hidden" : 1,
					"patching_rect" : [ 131.0, 154.0, 193.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"hidden" : 1,
					"patching_rect" : [ 143.0, 172.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"hidden" : 1,
					"patching_rect" : [ 273.0, 172.0, 31.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"patching_rect" : [ 194.0, 340.0, 49.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"hidden" : 1,
					"patching_rect" : [ 194.0, 318.0, 86.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DIM_Y",
					"patching_rect" : [ 218.0, 65.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DIM_X",
					"patching_rect" : [ 185.0, 65.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Colormode:",
					"patching_rect" : [ 93.0, 53.0, 66.0, 18.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dim:",
					"patching_rect" : [ 159.0, 66.0, 33.0, 18.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DIM_Y",
					"hidden" : 1,
					"patching_rect" : [ 604.0, 583.0, 66.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DIM_X",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 583.0, 67.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar COLORMODE 2",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 631.0, 108.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "colormode",
					"text" : "jcom.parameter colormode @type msg_symbol Colormode.",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 657.0, 305.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "COLORMODE",
					"types" : [  ],
					"patching_rect" : [ 93.0, 64.0, 63.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"items" : [ "argb", ",", "uyvy" ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dim",
					"text" : "jcom.parameter dim @type msg_list @ramp/drive none @description \"Image size\"",
					"hidden" : 1,
					"patching_rect" : [ 688.0, 559.0, 420.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 558.0, 144.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 11,
					"numoutlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"hidden" : 1,
					"patching_rect" : [ 312.0, 408.0, 62.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"hidden" : 1,
					"patching_rect" : [ 173.0, 273.0, 55.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message direct @type msg_generic",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 505.0, 213.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar LOOP 2",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 449.0, 71.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter loop @type msg_symbol @description \"Set loop attribute.\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 474.0, 384.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "LOOP",
					"types" : [  ],
					"patching_rect" : [ 93.0, 34.0, 82.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"items" : [ "none", ",", "normal", ",", "palindrome", ",", "looppoints" ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar GETLENGTH",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 390.0, 94.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message getlength @type msg_none @description \"Get movie length in ms\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 410.0, 417.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DISPOSE",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 343.0, 79.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dispose @type msg_none @description \"Playback control\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 363.0, 372.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar STOP",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 296.0, 60.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message stop @type msg_none @description \"Playback control\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 316.0, 356.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar START",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 249.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message start @type msg_none @description \"Playback control\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 269.0, 358.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0 0",
					"hidden" : 1,
					"patching_rect" : [ 448.0, 55.0, 84.0, 18.0 ],
					"outlettype" : [ "int", "int", "int", "int" ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"hidden" : 1,
					"patching_rect" : [ 448.0, 219.0, 68.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0 0 0 0",
					"hidden" : 1,
					"patching_rect" : [ 448.0, 197.0, 69.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 4,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "unique",
					"text" : "jcom.parameter unique @type msg_toggle @description \"Playback quality option.\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 169.0, 420.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "deinterlace",
					"text" : "jcom.parameter deinterlace @type msg_toggle @description \"Playback quality option.\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 144.0, 441.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "singlefield",
					"text" : "jcom.parameter singlefield @type msg_toggle @description \"Playback quality option.\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 119.0, 436.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "deinterlace",
					"patching_rect" : [ 20.0, 54.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "unique",
					"patching_rect" : [ 20.0, 70.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "singlefield",
					"patching_rect" : [ 20.0, 38.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "highquality",
					"patching_rect" : [ 20.0, 22.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-47",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Options",
					"patching_rect" : [ 5.0, 21.0, 80.0, 66.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 4,
					"values" : [ 1, 0, 1, 0 ],
					"disabled" : [ 0, 0, 0, 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 6.0, 383.0, 68.0, 28.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar READ",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 200.0, 61.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message read @type msg_generic @description \"Playback control\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 220.0, 369.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Options",
					"hidden" : 1,
					"patching_rect" : [ 448.0, 33.0, 72.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-52",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "highquality",
					"text" : "jcom.parameter highquality @type msg_toggle @description \"Playback quality option.\"",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 94.0, 441.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.movie_player% @size 2U-half @module_type video @algorithm_type jitter @description \"Read QT movie film.\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 0.0, 195.0, 332.0, 30.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TEXTURE OUTPUT",
					"hidden" : 1,
					"patching_rect" : [ 328.0, 436.0, 98.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-55",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 312.0, 436.0, 13.0, 13.0 ],
					"id" : "obj-56",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "(texture)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.movie_player%",
					"hidden" : 1,
					"patching_rect" : [ 194.0, 384.0, 128.0, 18.0 ],
					"outlettype" : [ "", "jit_matrix" ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjmod.init bang",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 6.0, 348.0, 81.0, 28.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"hidden" : 1,
					"patching_rect" : [ 14.0, 170.0, 86.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-59",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 0.0, 306.0, 13.0, 13.0 ],
					"id" : "obj-60",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 0.0, 170.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-61",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-62",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"has_freeze" : 1,
					"prefix" : "video",
					"has_mute" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"has_preview" : 1,
					"numinlets" : 1,
					"has_bypass" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
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
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 561.0, 579.0, 613.5, 579.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 1,
					"midpoints" : [ 613.5, 607.0, 530.0, 607.0, 530.0, 551.0, 561.0, 551.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 637.5, 653.0, 548.5, 653.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 548.5, 678.0, 533.0, 678.0, 533.0, 626.0, 548.5, 626.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 548.5, 605.0, 536.0, 605.0, 536.0, 554.0, 548.5, 554.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [ 600.5, 470.0, 548.5, 470.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 548.5, 497.0, 532.0, 497.0, 532.0, 444.0, 548.5, 444.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 3 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 2 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-40", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [ 457.5, 243.0, 441.0, 243.0, 441.0, 28.0, 457.5, 28.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 1,
					"midpoints" : [ 182.5, 304.0, 312.5, 304.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [ 270.5, 366.0, 203.5, 366.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [ 152.5, 191.0, 9.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [ 282.5, 191.0, 9.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [ 140.5, 191.0, 9.5, 191.0 ]
				}

			}
 ]
	}

}
