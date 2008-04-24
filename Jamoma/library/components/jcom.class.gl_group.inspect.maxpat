{
	"patcher" : 	{
		"rect" : [ 1.0, 46.0, 1391.0, 811.0 ],
		"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 1.0, 46.0, 1391.0, 811.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render\/layer",
					"text" : "jcom.parameter render\/layer @type msg_int @range/bounds 0 255 @range/clipmode none @ramp/drive none @description \"Object layer number. Only valid when \/render\/automatic is enabled.\"",
					"linecount" : 3,
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1038.0, 543.0, 278.0, 38.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Layer",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 943.0, 552.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Layer",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-3",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 657.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Layer",
					"id" : "obj-4",
					"textcolor" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"frgb" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 220.0, 640.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "none",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1002.0, 490.0, 30.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Context",
					"id" : "obj-6",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 94.0, 640.0, 53.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1038.0, 488.0, 56.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render\/context",
					"text" : "jcom.parameter render\/context @type msg_symbol @description \"The named drawing context in which to draw.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1038.0, 507.0, 285.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Context 3",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-9",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 943.0, 516.0, 78.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Context",
					"text" : "none",
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-10",
					"keymode" : 1,
					"lines" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 94.0, 656.0, 110.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Geneva"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_defaults",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 779.0, 22.0, 73.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_defaults",
					"id" : "obj-12",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 166.0, 740.0, 73.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"filename" : "jsui_textbutton.js",
					"patching_rect" : [ 76.0, 738.0, 84.0, 19.0 ],
					"numinlets" : 1,
					"jsarguments" : [ "Defaults" ],
					"numoutlets" : 1,
					"nofsaa" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.",
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1022.0, 393.0, 17.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.",
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1020.0, 613.0, 17.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.",
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1016.0, 142.0, 17.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "16.",
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1005.0, 318.0, 23.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 0 b",
					"outlettype" : [ "bang", "int", "bang" ],
					"id" : "obj-18",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 779.0, 42.0, 226.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0.",
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 601.0, 658.0, 55.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0.",
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 583.0, 591.0, 55.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0.",
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 589.0, 523.0, 55.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0.",
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 601.0, 455.0, 55.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.",
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 830.0, 323.0, 17.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1. 1. 1.",
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 830.0, 342.0, 43.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0. 0. 0. 0.",
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 804.0, 408.0, 91.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "6 7",
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 610.0, 237.0, 23.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1. 1. 1.",
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 548.0, 175.0, 43.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 1. 0.",
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 605.0, 110.0, 55.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0.",
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 533.0, 39.0, 43.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "blend\/mode",
					"text" : "jcom.parameter blend\/mode @type msg_list @description \"Blend modes for source and destination planes.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 259.0, 290.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 2",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-31",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 259.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar BlendModeDst",
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 447.0, 235.0, 96.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar BlendModeSrc",
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 235.0, 97.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.round",
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 547.0, 235.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mode destination:",
					"id" : "obj-35",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 143.0, 89.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "BlendModeDst",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-36",
					"labelclick" : 1,
					"fontsize" : 9.0,
					"items" : [ "0:", "zero", ",", "1:", "one", ",", "2:", "destination", "color", ",", "3:", "source", "color", ",", "4:", "one", "minus", "destination", "color", ",", "5:", "one", "minus", "source", "color", ",", "6:", "source", "alpha", ",", "7:", "one", "minus", "source", "alpha", ",", "8:", "destination", "alpha", ",", "9:", "one", "minus", "destination", "alpha", ",", "10:", "source", "alpha", "saturate" ],
					"patching_rect" : [ 94.0, 143.0, 158.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material\/shininess",
					"text" : "jcom.parameter material\/shininess @type msg_float @range/bounds 0. 255. @range/clipmode both @ramp/drive scheduler @description \"Material shininess.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 329.0, 336.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Shininess",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 944.0, 329.0, 52.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render\/enable",
					"text" : "jcom.parameter render\/enable @type msg_toggle @description \"Enable drawing.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-39",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1038.0, 671.0, 265.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render\/automatic",
					"text" : "jcom.parameter render\/automatic @type msg_toggle @description \"Automatic rendering flag.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1038.0, 634.0, 255.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render\/antialias",
					"text" : "jcom.parameter render\/antialias @type msg_toggle @description \"Aliasing flag.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1038.0, 597.0, 268.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material\/inherit",
					"text" : "jcom.parameter material\/inherit @type msg_toggle @description \"Inherit material properties from context.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 452.0, 267.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material\/automatic",
					"text" : "jcom.parameter material\/automatic @type msg_toggle @description \"Automatic material attributes.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-43",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 415.0, 263.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material\/light\/enable",
					"text" : "jcom.parameter material\/light\/enable @type msg_toggle @description \"Calculate lighting.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 378.0, 222.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RenderEnable",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 943.0, 671.0, 69.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RenderAutomatic",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 943.0, 634.0, 87.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Antialias",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 943.0, 597.0, 50.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MaterialInherit",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 943.0, 452.0, 78.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MaterialAutomatic",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 943.0, 415.0, 94.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar LightingEnable",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 943.0, 378.0, 73.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FogAmount",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 944.0, 255.0, 59.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fog\/amount",
					"text" : "jcom.parameter fog\/amount @type msg_float @range/bounds 0. 1. @description \"The amount of fog effect.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-52",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 255.0, 254.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fog\/inherit",
					"text" : "jcom.parameter fog\/inherit @type msg_toggle @description \"inherit fog properties from context.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-53",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 292.0, 243.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FogInherit",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-54",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 944.0, 292.0, 55.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "depth\/inherit",
					"text" : "jcom.parameter depth\/inherit @type msg_toggle @description \"Inherit depth properties from context.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 218.0, 253.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DepthInherit",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-56",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 944.0, 218.0, 65.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "depth\/enable",
					"text" : "jcom.parameter depth\/enable @type msg_toggle @description \"Enable depth buffering.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-57",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 181.0, 281.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DepthEnable",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-58",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 944.0, 181.0, 63.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "depth\/clear",
					"text" : "jcom.parameter depth\/clear @type msg_toggle @description \"Clear depth buffer before rendering the object.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-59",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 144.0, 282.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DepthClear",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-60",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 944.0, 144.0, 59.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color\/inherit",
					"text" : "jcom.parameter color\/inherit @type msg_toggle @description \"Inherit color properties from context.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-61",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 107.0, 252.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ColorInherit",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-62",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 944.0, 107.0, 64.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "blend\/enable",
					"text" : "jcom.parameter blend\/enable @type msg_toggle @description \"Enable blending.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-63",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 1041.0, 70.0, 265.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar BlendEnable",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-64",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 944.0, 70.0, 62.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SpecA",
					"outlettype" : [ "" ],
					"id" : "obj-65",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 535.0, 658.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material\/light\/specular",
					"text" : "jcom.parameter material\/light\/specular @type msg_list @ramp/drive scheduler @description \"The specular light material property as red\\, green\\, blue\\, alpha (0.-1.).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-66",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 684.0, 427.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 4",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-67",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 684.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SpecB",
					"outlettype" : [ "" ],
					"id" : "obj-68",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 472.0, 658.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SpecG",
					"outlettype" : [ "" ],
					"id" : "obj-69",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 409.0, 658.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SpecR",
					"outlettype" : [ "" ],
					"id" : "obj-70",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 658.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar EmA",
					"outlettype" : [ "" ],
					"id" : "obj-71",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 524.0, 590.0, 54.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material\/light\/emission",
					"text" : "jcom.parameter material\/light\/emission @type msg_list @ramp/drive scheduler @description \"The material emission property as red\\, green\\, blue\\, alpha (0.-1.).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-72",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 614.0, 401.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 4",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-73",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 616.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar EmB",
					"outlettype" : [ "" ],
					"id" : "obj-74",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 462.0, 590.0, 53.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar EmG",
					"outlettype" : [ "" ],
					"id" : "obj-75",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 404.0, 590.0, 53.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar EmR",
					"outlettype" : [ "" ],
					"id" : "obj-76",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 590.0, 53.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DiffA",
					"outlettype" : [ "" ],
					"id" : "obj-77",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 524.0, 522.0, 58.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material\/light\/diffuse",
					"text" : "jcom.parameter material\/light\/diffuse @type msg_list @ramp/drive scheduler @description \"The diffuse light material property as red\\, green\\, blue\\, alpha (0.-1.).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-78",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 548.0, 411.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 4",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-79",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 548.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DiffB",
					"outlettype" : [ "" ],
					"id" : "obj-80",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 462.0, 522.0, 57.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DiffG",
					"outlettype" : [ "" ],
					"id" : "obj-81",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 404.0, 522.0, 57.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DiffR",
					"outlettype" : [ "" ],
					"id" : "obj-82",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 522.0, 57.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar AmbA",
					"outlettype" : [ "" ],
					"id" : "obj-83",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 532.0, 454.0, 61.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material\/light\/ambient",
					"text" : "jcom.parameter material\/light\/ambient @type msg_list @ramp/drive scheduler @description \"The ambient light material property as red\\, green\\, blue\\, alpha (0.-1.).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-84",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 480.0, 428.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 4",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-85",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 480.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar AmbB",
					"outlettype" : [ "" ],
					"id" : "obj-86",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 470.0, 454.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar AmbG",
					"outlettype" : [ "" ],
					"id" : "obj-87",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 408.0, 454.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar AmbR",
					"outlettype" : [ "" ],
					"id" : "obj-88",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 454.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FogEnd",
					"outlettype" : [ "" ],
					"id" : "obj-89",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 727.0, 376.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FogStart",
					"outlettype" : [ "" ],
					"id" : "obj-90",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 652.0, 376.0, 73.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FogDens",
					"outlettype" : [ "" ],
					"id" : "obj-91",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 580.0, 376.0, 70.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FogA",
					"outlettype" : [ "" ],
					"id" : "obj-92",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 521.0, 376.0, 56.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fog\/params",
					"text" : "jcom.parameter fog\/params @type msg_list @ramp/drive scheduler @description \"Fog color (RGBA)\\, density\\,start and end.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-93",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 409.0, 302.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 7",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-94",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 409.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FogB",
					"outlettype" : [ "" ],
					"id" : "obj-95",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 463.0, 376.0, 55.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FogG",
					"outlettype" : [ "" ],
					"id" : "obj-96",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 405.0, 376.0, 55.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar FogR",
					"outlettype" : [ "" ],
					"id" : "obj-97",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 376.0, 55.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color\/alpha",
					"text" : "jcom.parameter color\/alpha @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler @description \"Object alpha transparency (0.-1.).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-98",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 583.0, 293.0, 351.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ColA",
					"outlettype" : [ "" ],
					"id" : "obj-99",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 524.0, 301.0, 55.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color\/rgb",
					"text" : "jcom.parameter color\/rgb @type msg_list @ramp/drive scheduler @description \"Object color as red\\, green\\, blue (0.-1.).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-100",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 327.0, 293.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 3",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-101",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 327.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ColB",
					"outlettype" : [ "" ],
					"id" : "obj-102",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 462.0, 301.0, 54.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ColG",
					"outlettype" : [ "" ],
					"id" : "obj-103",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 404.0, 301.0, 54.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ColR",
					"outlettype" : [ "" ],
					"id" : "obj-104",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 346.0, 301.0, 54.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "3D\/scale",
					"text" : "jcom.parameter 3D\/scale @ramp/drive scheduler @type msg_list @description \"3D scaling factor as xyz coordinates.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-105",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 197.0, 290.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 3",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-106",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 197.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ScaleZ",
					"outlettype" : [ "" ],
					"id" : "obj-107",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 479.0, 173.0, 63.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ScaleY",
					"outlettype" : [ "" ],
					"id" : "obj-108",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 413.0, 173.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ScaleX",
					"outlettype" : [ "" ],
					"id" : "obj-109",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 173.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RotZ",
					"outlettype" : [ "" ],
					"id" : "obj-110",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 547.0, 108.0, 54.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "3D\/rotate",
					"text" : "jcom.parameter 3D\/rotate @type msg_list @ramp/drive scheduler @description \"3D rotation as angle and xyz rotation axis coordinates.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-111",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 134.0, 328.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 4",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-112",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 134.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RotY",
					"outlettype" : [ "" ],
					"id" : "obj-113",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 485.0, 108.0, 55.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RotX",
					"outlettype" : [ "" ],
					"id" : "obj-114",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 423.0, 108.0, 55.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RotAngle",
					"outlettype" : [ "" ],
					"id" : "obj-115",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 108.0, 74.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "3D\/position",
					"text" : "jcom.parameter 3D\/position @type msg_list @ramp/drive scheduler @description \"3D origin as xyz coordinates.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-116",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 62.0, 270.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter.mxt 3",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-117",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 62.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar PosZ",
					"outlettype" : [ "" ],
					"id" : "obj-118",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 470.0, 38.0, 55.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar PosY",
					"outlettype" : [ "" ],
					"id" : "obj-119",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 410.0, 38.0, 56.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar PosX",
					"outlettype" : [ "" ],
					"id" : "obj-120",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 347.0, 38.0, 56.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Automatic",
					"id" : "obj-121",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 112.0, 697.0, 56.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "RenderAutomatic",
					"outlettype" : [ "" ],
					"id" : "obj-122",
					"patching_rect" : [ 94.0, 695.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Antialias",
					"id" : "obj-123",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 112.0, 681.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Antialias",
					"outlettype" : [ "" ],
					"id" : "obj-124",
					"patching_rect" : [ 94.0, 679.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Enable",
					"id" : "obj-125",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 112.0, 713.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "RenderEnable",
					"outlettype" : [ "" ],
					"id" : "obj-126",
					"patching_rect" : [ 94.0, 711.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Render",
					"id" : "obj-127",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.533333,
					"patching_rect" : [ 7.0, 636.0, 64.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Shininess",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-128",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 94.0, 550.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 255.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Shininess:",
					"id" : "obj-129",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 552.0, 76.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inherit",
					"id" : "obj-130",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 112.0, 603.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "MaterialInherit",
					"outlettype" : [ "" ],
					"id" : "obj-131",
					"patching_rect" : [ 94.0, 601.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "MaterialAutomatic",
					"outlettype" : [ "" ],
					"id" : "obj-132",
					"patching_rect" : [ 94.0, 585.0, 118.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Lighting enabled",
					"id" : "obj-133",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 110.0, 571.0, 81.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "LightingEnable",
					"outlettype" : [ "" ],
					"id" : "obj-134",
					"patching_rect" : [ 94.0, 569.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SpecR",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-135",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 94.0, 533.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SpecA",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-136",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 533.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SpecB",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-137",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 533.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SpecG",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-138",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 533.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Specular light:",
					"id" : "obj-139",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 535.0, 76.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "EmR",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-140",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 94.0, 515.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "EmA",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-141",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 515.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "EmB",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-142",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 515.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "EmG",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-143",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 515.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Emmision light:",
					"id" : "obj-144",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 517.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "DiffR",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-145",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 94.0, 497.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "DiffA",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-146",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 497.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "DiffB",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-147",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 497.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "DiffG",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-148",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 497.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Diffuse light:",
					"id" : "obj-149",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 499.0, 70.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "AmbR",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-150",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 94.0, 479.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "AmbA",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-151",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 479.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "AmbB",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-152",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 479.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "AmbG",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-153",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 479.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Alpha",
					"id" : "obj-154",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 220.0, 462.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blue",
					"id" : "obj-155",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 178.0, 462.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Green",
					"id" : "obj-156",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 136.0, 462.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Red",
					"id" : "obj-157",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 94.0, 462.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambient light:",
					"id" : "obj-158",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 481.0, 74.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Material",
					"id" : "obj-159",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.533333,
					"patching_rect" : [ 7.0, 460.0, 64.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogDens",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-160",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 94.0, 403.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogAmount",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-161",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 403.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogEnd",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-162",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 403.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogStart",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-163",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 403.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Amount",
					"id" : "obj-164",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 220.0, 386.0, 44.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "End",
					"id" : "obj-165",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 178.0, 386.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Start",
					"id" : "obj-166",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 136.0, 386.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Density",
					"id" : "obj-167",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 94.0, 386.0, 44.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inherit",
					"id" : "obj-168",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 109.0, 427.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "FogInherit",
					"outlettype" : [ "" ],
					"id" : "obj-169",
					"patching_rect" : [ 94.0, 425.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogR",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-170",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 94.0, 362.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogA",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-171",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 362.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogB",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-172",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 362.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogG",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-173",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 362.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Alpha",
					"id" : "obj-174",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 220.0, 345.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blue",
					"id" : "obj-175",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 178.0, 345.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Green",
					"id" : "obj-176",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 136.0, 345.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Red",
					"id" : "obj-177",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 94.0, 345.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fog",
					"id" : "obj-178",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.533333,
					"patching_rect" : [ 7.0, 342.0, 64.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Enable",
					"id" : "obj-179",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 109.0, 292.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "DepthEnable",
					"outlettype" : [ "" ],
					"id" : "obj-180",
					"patching_rect" : [ 94.0, 290.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Clear",
					"id" : "obj-181",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 109.0, 276.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "DepthClear",
					"outlettype" : [ "" ],
					"id" : "obj-182",
					"patching_rect" : [ 94.0, 274.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inherit",
					"id" : "obj-183",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 109.0, 308.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "DepthInherit",
					"outlettype" : [ "" ],
					"id" : "obj-184",
					"patching_rect" : [ 94.0, 306.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Depth",
					"id" : "obj-185",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.533333,
					"patching_rect" : [ 7.0, 271.0, 64.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inherit",
					"id" : "obj-186",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 109.0, 237.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "ColorInherit",
					"outlettype" : [ "" ],
					"id" : "obj-187",
					"patching_rect" : [ 94.0, 235.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColR",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-188",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 94.0, 217.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColA",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-189",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 217.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColB",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-190",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 217.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColG",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-191",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 217.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Alpha",
					"id" : "obj-192",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 220.0, 200.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blue",
					"id" : "obj-193",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 178.0, 200.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Green",
					"id" : "obj-194",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 136.0, 200.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Red",
					"id" : "obj-195",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 94.0, 200.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Position",
					"id" : "obj-196",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 219.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Color",
					"id" : "obj-197",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.533333,
					"patching_rect" : [ 7.0, 198.0, 64.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blend",
					"id" : "obj-198",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.533333,
					"patching_rect" : [ 7.0, 98.0, 64.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mode source:",
					"id" : "obj-199",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 124.0, 70.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Enable",
					"id" : "obj-200",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 109.0, 167.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "BlendEnable",
					"outlettype" : [ "" ],
					"id" : "obj-201",
					"patching_rect" : [ 94.0, 165.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "BlendModeSrc",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-202",
					"labelclick" : 1,
					"fontsize" : 9.0,
					"items" : [ "0:", "zero", ",", "1:", "one", ",", "2:", "destination", "color", ",", "3:", "source", "color", ",", "4:", "one", "minus", "destination", "color", ",", "5:", "one", "minus", "source", "color", ",", "6:", "source", "alpha", ",", "7:", "one", "minus", "source", "alpha", ",", "8:", "destination", "alpha", ",", "9:", "one", "minus", "destination", "alpha", ",", "10:", "source", "alpha", "saturate" ],
					"patching_rect" : [ 94.0, 124.0, 158.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotAngle",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-203",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 94.0, 48.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotZ",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-204",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 48.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotY",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-205",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 48.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotX",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-206",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 48.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ScaleZ",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-207",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 66.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ScaleY",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-208",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 66.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ScaleX",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-209",
					"minimum" : 0.0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 66.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "PosZ",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-210",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 220.0, 30.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "PosY",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-211",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 178.0, 30.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "PosX",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-212",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 30.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Z",
					"id" : "obj-213",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 220.0, 12.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Y",
					"id" : "obj-214",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 178.0, 12.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "X",
					"id" : "obj-215",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 136.0, 12.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Angle",
					"id" : "obj-216",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 94.0, 12.0, 38.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rotate:",
					"id" : "obj-217",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 48.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Scale:",
					"id" : "obj-218",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 66.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Position",
					"id" : "obj-219",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 30.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 110 110 110",
					"id" : "obj-220",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 336.0, 729.0, 106.0, 17.0 ],
					"numinlets" : 4,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3D position",
					"id" : "obj-221",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.533333,
					"patching_rect" : [ 7.0, 8.0, 81.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Color",
					"id" : "obj-222",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 362.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-223",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 1.0, 1.0, 265.0, 86.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-224",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 1.0, 92.0, 265.0, 95.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-225",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 1.0, 192.0, 265.0, 66.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-226",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 1.0, 264.0, 265.0, 64.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-227",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 1.0, 335.0, 265.0, 112.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-228",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 1.0, 629.0, 265.0, 104.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Automatic material",
					"id" : "obj-229",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 111.0, 587.0, 98.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-230",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 1.0, 454.0, 265.0, 168.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- converting to list of ints",
					"id" : "obj-231",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 635.0, 238.0, 133.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-31", 10 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [ 369.0, 279.0, 338.0, 279.0, 338.0, 230.0, 456.5, 230.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 253.0, 369.0, 253.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [ 356.5, 277.0, 341.0, 277.0, 341.0, 232.0, 356.5, 232.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 3 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"midpoints" : [ 393.0, 709.0, 331.0, 709.0, 331.0, 649.0, 544.5, 649.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 10 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-67", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 2 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [ 380.5, 707.0, 334.0, 707.0, 334.0, 651.0, 481.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [ 368.0, 705.0, 337.0, 705.0, 337.0, 653.0, 418.5, 653.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-67", 3 ],
					"hidden" : 1,
					"midpoints" : [ 544.5, 680.0, 393.0, 680.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-67", 2 ],
					"hidden" : 1,
					"midpoints" : [ 481.5, 678.0, 380.5, 678.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 1,
					"midpoints" : [ 418.5, 676.0, 368.0, 676.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [ 355.5, 703.0, 340.0, 703.0, 340.0, 655.0, 355.5, 655.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 3 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [ 393.0, 641.0, 331.0, 641.0, 331.0, 581.0, 533.5, 581.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 10 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-73", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 2 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 1,
					"midpoints" : [ 380.5, 639.0, 334.0, 639.0, 334.0, 583.0, 471.5, 583.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 1 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [ 368.0, 637.0, 337.0, 637.0, 337.0, 585.0, 413.5, 585.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-73", 3 ],
					"hidden" : 1,
					"midpoints" : [ 533.5, 612.0, 393.0, 612.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-73", 2 ],
					"hidden" : 1,
					"midpoints" : [ 471.5, 610.0, 380.5, 610.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-73", 1 ],
					"hidden" : 1,
					"midpoints" : [ 413.5, 608.0, 368.0, 608.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [ 355.5, 635.0, 340.0, 635.0, 340.0, 587.0, 355.5, 587.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 3 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [ 393.0, 573.0, 331.0, 573.0, 331.0, 513.0, 533.5, 513.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 10 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-79", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 2 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 1,
					"midpoints" : [ 380.5, 571.0, 334.0, 571.0, 334.0, 515.0, 471.5, 515.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1,
					"midpoints" : [ 368.0, 569.0, 337.0, 569.0, 337.0, 517.0, 413.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-79", 3 ],
					"hidden" : 1,
					"midpoints" : [ 533.5, 544.0, 393.0, 544.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-79", 2 ],
					"hidden" : 1,
					"midpoints" : [ 471.5, 542.0, 380.5, 542.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-79", 1 ],
					"hidden" : 1,
					"midpoints" : [ 413.5, 540.0, 368.0, 540.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"midpoints" : [ 355.5, 567.0, 340.0, 567.0, 340.0, 519.0, 355.5, 519.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 3 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 1,
					"midpoints" : [ 393.0, 505.0, 331.0, 505.0, 331.0, 445.0, 541.5, 445.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 10 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-85", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 2 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 380.5, 503.0, 334.0, 503.0, 334.0, 447.0, 479.5, 447.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 1 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1,
					"midpoints" : [ 368.0, 501.0, 337.0, 501.0, 337.0, 449.0, 417.5, 449.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-85", 3 ],
					"hidden" : 1,
					"midpoints" : [ 541.5, 476.0, 393.0, 476.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-85", 2 ],
					"hidden" : 1,
					"midpoints" : [ 479.5, 474.0, 380.5, 474.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-85", 1 ],
					"hidden" : 1,
					"midpoints" : [ 417.5, 472.0, 368.0, 472.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"midpoints" : [ 355.5, 499.0, 340.0, 499.0, 340.0, 451.0, 355.5, 451.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 6 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 1,
					"midpoints" : [ 431.5, 440.0, 323.0, 440.0, 323.0, 361.0, 736.5, 361.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 5 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"midpoints" : [ 419.0, 438.0, 326.0, 438.0, 326.0, 363.0, 661.5, 363.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 4 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 1,
					"midpoints" : [ 406.5, 436.0, 329.0, 436.0, 329.0, 365.0, 589.5, 365.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 3 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 1,
					"midpoints" : [ 394.0, 434.0, 332.0, 434.0, 332.0, 367.0, 530.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 10 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-94", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 2 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 1,
					"midpoints" : [ 381.5, 432.0, 335.0, 432.0, 335.0, 369.0, 472.5, 369.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-94", 6 ],
					"hidden" : 1,
					"midpoints" : [ 736.5, 404.0, 431.5, 404.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-94", 5 ],
					"hidden" : 1,
					"midpoints" : [ 661.5, 402.0, 419.0, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 1 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 1,
					"midpoints" : [ 369.0, 430.0, 338.0, 430.0, 338.0, 371.0, 414.5, 371.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-94", 4 ],
					"hidden" : 1,
					"midpoints" : [ 589.5, 400.0, 406.5, 400.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-94", 3 ],
					"hidden" : 1,
					"midpoints" : [ 530.5, 398.0, 394.0, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-94", 2 ],
					"hidden" : 1,
					"midpoints" : [ 472.5, 396.0, 381.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-94", 1 ],
					"hidden" : 1,
					"midpoints" : [ 414.5, 394.0, 369.0, 394.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 1,
					"midpoints" : [ 356.5, 428.0, 341.0, 428.0, 341.0, 373.0, 356.5, 373.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 10 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-101", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 2 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 1,
					"midpoints" : [ 380.5, 347.0, 334.0, 347.0, 334.0, 294.0, 471.5, 294.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 1 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 1,
					"midpoints" : [ 368.0, 345.0, 337.0, 345.0, 337.0, 296.0, 413.5, 296.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-101", 2 ],
					"hidden" : 1,
					"midpoints" : [ 471.5, 321.0, 380.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-101", 1 ],
					"hidden" : 1,
					"midpoints" : [ 413.5, 319.0, 368.0, 319.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 1,
					"midpoints" : [ 355.5, 343.0, 340.0, 343.0, 340.0, 298.0, 355.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 10 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 2 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 1,
					"midpoints" : [ 381.5, 219.0, 335.0, 219.0, 335.0, 166.0, 488.5, 166.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-106", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 1 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 1,
					"midpoints" : [ 369.0, 217.0, 338.0, 217.0, 338.0, 168.0, 422.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-106", 2 ],
					"hidden" : 1,
					"midpoints" : [ 488.5, 193.0, 381.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-106", 1 ],
					"hidden" : 1,
					"midpoints" : [ 422.5, 191.0, 369.0, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 1,
					"midpoints" : [ 356.5, 215.0, 341.0, 215.0, 341.0, 170.0, 356.5, 170.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 3 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 1,
					"midpoints" : [ 394.0, 156.0, 332.0, 156.0, 332.0, 99.0, 556.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 10 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 2 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 1,
					"midpoints" : [ 381.5, 154.0, 335.0, 154.0, 335.0, 101.0, 494.5, 101.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-112", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 1 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 1,
					"midpoints" : [ 369.0, 152.0, 338.0, 152.0, 338.0, 103.0, 432.5, 103.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-112", 3 ],
					"hidden" : 1,
					"midpoints" : [ 556.5, 130.0, 394.0, 130.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-112", 2 ],
					"hidden" : 1,
					"midpoints" : [ 494.5, 128.0, 381.5, 128.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-112", 1 ],
					"hidden" : 1,
					"midpoints" : [ 432.5, 126.0, 369.0, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 1,
					"midpoints" : [ 356.5, 150.0, 341.0, 150.0, 341.0, 105.0, 356.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 10 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-117", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 2 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 1,
					"midpoints" : [ 381.5, 84.0, 335.0, 84.0, 335.0, 31.0, 479.5, 31.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 1 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 1,
					"midpoints" : [ 369.0, 82.0, 338.0, 82.0, 338.0, 33.0, 419.5, 33.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-118", 0 ],
					"destination" : [ "obj-117", 2 ],
					"hidden" : 1,
					"midpoints" : [ 479.5, 58.0, 381.5, 58.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-117", 1 ],
					"hidden" : 1,
					"midpoints" : [ 419.5, 56.0, 369.0, 56.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 1,
					"midpoints" : [ 356.5, 80.0, 341.0, 80.0, 341.0, 35.0, 356.5, 35.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
