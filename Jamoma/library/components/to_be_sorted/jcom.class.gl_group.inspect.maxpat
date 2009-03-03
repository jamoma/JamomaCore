{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 37.0, 44.0, 1391.0, 811.0 ],
		"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 37.0, 44.0, 1391.0, 811.0 ],
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
					"maxclass" : "jsui",
					"numoutlets" : 1,
					"presentation_rect" : [ 80.0, 750.0, 84.0, 19.0 ],
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"jsarguments" : [ "Defaults" ],
					"patching_rect" : [ 595.0, 15.0, 84.0, 19.0 ],
					"presentation" : 1,
					"filename" : "jsui_textbutton.js",
					"nofsaa" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render/layer",
					"text" : "jcom.parameter render/layer @type msg_int @range/bounds 0 255 @range/clipmode none @ramp/drive none @description \"Object layer number. Only valid when /render/automatic is enabled.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-1",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 864.0, 583.0, 349.0, 42.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Layer",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 657.0, 35.0, 19.0 ],
					"id" : "obj-3",
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 824.0, 592.0, 35.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Layer",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 220.0, 640.0, 40.0, 18.0 ],
					"id" : "obj-4",
					"frgb" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 751.0, 592.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "none",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1148.0, 527.0, 33.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Context",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 94.0, 640.0, 53.0, 18.0 ],
					"id" : "obj-6",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 753.0, 535.0, 53.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 864.0, 528.0, 58.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render/context",
					"text" : "jcom.parameter render/context @type msg_symbol @description \"The named drawing context in which to draw.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-8",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 864.0, 547.0, 313.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "Context",
					"text" : "none",
					"fontname" : "Geneva",
					"numoutlets" : 3,
					"presentation_rect" : [ 94.0, 656.0, 110.0, 18.0 ],
					"id" : "obj-10",
					"outlettype" : [ "", "int", "" ],
					"keymode" : 1,
					"lines" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"patching_rect" : [ 824.0, 555.0, 32.0, 18.0 ],
					"fontsize" : 8.998901,
					"presentation" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1137.0, 436.0, 18.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1131.0, 658.0, 18.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1185.0, 203.0, 18.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "16.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"patching_rect" : [ 1133.0, 346.0, 25.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 0 b",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-18",
					"outlettype" : [ "bang", "int", "bang" ],
					"patching_rect" : [ 594.0, 39.0, 561.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"patching_rect" : [ 394.0, 831.0, 58.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"patching_rect" : [ 376.0, 764.0, 58.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"patching_rect" : [ 382.0, 696.0, 58.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"patching_rect" : [ 394.0, 628.0, 58.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"patching_rect" : [ 623.0, 438.0, 18.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1. 1. 1.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"patching_rect" : [ 623.0, 457.0, 45.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0. 0. 0. 0. 0.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ],
					"patching_rect" : [ 597.0, 550.0, 98.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "6 7",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"patching_rect" : [ 364.0, 318.0, 25.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1. 1. 1.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"patching_rect" : [ 302.0, 256.0, 45.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 1. 0.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "" ],
					"patching_rect" : [ 359.0, 191.0, 58.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0. 0. 0.",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"patching_rect" : [ 287.0, 120.0, 45.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "blend/mode",
					"text" : "jcom.parameter blend/mode @type msg_list @description \"Blend modes for source and destination planes.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-30",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 251.0, 340.0, 302.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-31",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 105.0, 345.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "round",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ],
					"patching_rect" : [ 295.0, 315.0, 65.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mode destination:",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 156.0, 98.0, 18.0 ],
					"id" : "obj-35",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 14.0, 317.0, 98.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "BlendModeDst",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 111.0, 156.0, 146.0, 18.0 ],
					"id" : "obj-36",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 184.0, 314.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"items" : [ "0:", "zero", ",", "1:", "one", ",", "2:", "destination", "color", ",", "3:", "source", "color", ",", "4:", "one", "minus", "destination", "color", ",", "5:", "one", "minus", "source", "color", ",", "6:", "source", "alpha", ",", "7:", "one", "minus", "source", "alpha", ",", "8:", "destination", "alpha", ",", "9:", "one", "minus", "destination", "alpha", ",", "10:", "source", "alpha", "saturate" ],
					"labelclick" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material/shininess",
					"text" : "jcom.parameter material/shininess @type msg_float @range/bounds 0. 255. @range/clipmode both @ramp/drive scheduler @description \"Material shininess.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-37",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 369.0, 413.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render/enable",
					"text" : "jcom.parameter render/enable @type msg_toggle @description \"Enable drawing.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-39",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 864.0, 711.0, 265.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render/automatic",
					"text" : "jcom.parameter render/automatic @type msg_toggle @description \"Automatic rendering flag.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-40",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 864.0, 674.0, 273.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "render/antialias",
					"text" : "jcom.parameter render/antialias @type msg_toggle @description \"Aliasing flag.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-41",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 864.0, 637.0, 270.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material/inherit",
					"text" : "jcom.parameter material/inherit @type msg_toggle @description \"Inherit material properties from context.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-42",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 492.0, 287.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material/automatic",
					"text" : "jcom.parameter material/automatic @type msg_toggle @description \"Automatic material attributes.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-43",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 455.0, 286.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material/light/enable",
					"text" : "jcom.parameter material/light/enable @type msg_toggle @description \"Calculate lighting.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-44",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 418.0, 236.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fog/amount",
					"text" : "jcom.parameter fog/amount @type msg_float @range/bounds 0. 1. @description \"The amount of fog effect.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-52",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 295.0, 322.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fog/inherit",
					"text" : "jcom.parameter fog/inherit @type msg_toggle @description \"inherit fog properties from context.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-53",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 332.0, 261.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "depth/inherit",
					"text" : "jcom.parameter depth/inherit @type msg_toggle @description \"Inherit depth properties from context.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-55",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 258.0, 275.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "depth/enable",
					"text" : "jcom.parameter depth/enable @type msg_toggle @description \"Enable depth buffering.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-57",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 221.0, 281.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "depth/clear",
					"text" : "jcom.parameter depth/clear @type msg_toggle @description \"Clear depth buffer before rendering the object.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-59",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 184.0, 315.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color/inherit",
					"text" : "jcom.parameter color/inherit @type msg_toggle @description \"Inherit color properties from context.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-61",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 147.0, 270.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "blend/enable",
					"text" : "jcom.parameter blend/enable @type msg_toggle @description \"Enable blending.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-63",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 867.0, 110.0, 265.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material/light/specular",
					"text" : "jcom.parameter material/light/specular @type msg_list @ramp/drive scheduler @description \"The specular light material property as red, green, blue, alpha (0.-1.).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-66",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 290.0, 857.0, 436.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-67",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 144.0, 864.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material/light/emission",
					"text" : "jcom.parameter material/light/emission @type msg_list @ramp/drive scheduler @description \"The material emission property as red, green, blue, alpha (0.-1.).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-72",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 290.0, 787.0, 412.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-73",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 142.0, 793.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material/light/diffuse",
					"text" : "jcom.parameter material/light/diffuse @type msg_list @ramp/drive scheduler @description \"The diffuse light material property as red, green, blue, alpha (0.-1.).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-78",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 290.0, 721.0, 427.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-79",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 139.0, 726.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "material/light/ambient",
					"text" : "jcom.parameter material/light/ambient @type msg_list @ramp/drive scheduler @description \"The ambient light material property as red, green, blue, alpha (0.-1.).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-84",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 290.0, 653.0, 435.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-85",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 139.0, 657.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fog/params",
					"text" : "jcom.parameter fog/params @type msg_list @ramp/drive scheduler @description \"Fog color (RGBA), density,start and end.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-93",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 290.0, 551.0, 339.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 7",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-94",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 142.0, 557.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color/alpha",
					"text" : "jcom.parameter color/alpha @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler @description \"Object alpha transparency (0.-1.).\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-98",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 307.0, 392.0, 352.0, 42.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "color/rgb",
					"text" : "jcom.parameter color/rgb @type msg_list @ramp/drive scheduler @description \"Object color as red, green, blue (0.-1.).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-100",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 290.0, 442.0, 334.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-101",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 134.0, 445.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "3D/scale",
					"text" : "jcom.parameter 3D/scale @ramp/drive scheduler @type msg_list @description \"3D scaling factor as xyz coordinates.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-105",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 251.0, 278.0, 313.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-106",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 103.0, 283.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "3D/rotate",
					"text" : "jcom.parameter 3D/rotate @type msg_list @ramp/drive scheduler @description \"3D rotation as angle and xyz rotation axis coordinates.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-111",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 251.0, 215.0, 358.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-112",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 101.0, 222.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "3D/position",
					"text" : "jcom.parameter 3D/position @type msg_list @ramp/drive scheduler @description \"3D origin as xyz coordinates.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-116",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 251.0, 143.0, 300.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"fontname" : "Verdana",
					"numoutlets" : 11,
					"id" : "obj-117",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 105.0, 149.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Automatic",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 112.0, 695.0, 59.0, 18.0 ],
					"id" : "obj-121",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 756.0, 685.0, 59.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "RenderAutomatic",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 695.0, 73.0, 18.0 ],
					"id" : "obj-122",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 682.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 112.0, 679.0, 51.0, 18.0 ],
					"id" : "obj-123",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 755.0, 645.0, 51.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Antialias",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 679.0, 73.0, 18.0 ],
					"id" : "obj-124",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 642.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 112.0, 711.0, 45.0, 18.0 ],
					"id" : "obj-125",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 756.0, 719.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "RenderEnable",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 711.0, 73.0, 18.0 ],
					"id" : "obj-126",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 716.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 636.0, 64.0, 21.0 ],
					"id" : "obj-127",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 744.0, 615.0, 64.0, 21.0 ],
					"fontsize" : 11.556055,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Shininess",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 94.0, 550.0, 40.0, 19.0 ],
					"id" : "obj-128",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 824.0, 374.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 255.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Shininess:",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 552.0, 76.0, 18.0 ],
					"id" : "obj-129",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 737.0, 376.0, 62.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inherit",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 112.0, 600.0, 45.0, 18.0 ],
					"id" : "obj-130",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 760.0, 495.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "MaterialInherit",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 601.0, 73.0, 18.0 ],
					"id" : "obj-131",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 493.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 585.0, 18.0, 18.0 ],
					"id" : "obj-132",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 459.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 110.0, 569.0, 91.0, 18.0 ],
					"id" : "obj-133",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 701.0, 427.0, 91.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "LightingEnable",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 569.0, 73.0, 18.0 ],
					"id" : "obj-134",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 425.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 94.0, 533.0, 40.0, 19.0 ],
					"id" : "obj-135",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 138.0, 826.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SpecA",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 533.0, 40.0, 19.0 ],
					"id" : "obj-136",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 264.0, 826.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SpecB",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 533.0, 40.0, 19.0 ],
					"id" : "obj-137",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 222.0, 826.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "SpecG",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 533.0, 40.0, 19.0 ],
					"id" : "obj-138",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 180.0, 826.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Specular light:",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 535.0, 81.0, 18.0 ],
					"id" : "obj-139",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 42.0, 828.0, 81.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "EmR",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 94.0, 515.0, 40.0, 19.0 ],
					"id" : "obj-140",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 140.0, 759.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "EmA",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 515.0, 40.0, 19.0 ],
					"id" : "obj-141",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 266.0, 759.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "EmB",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 515.0, 40.0, 19.0 ],
					"id" : "obj-142",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 224.0, 759.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "EmG",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 515.0, 40.0, 19.0 ],
					"id" : "obj-143",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 182.0, 759.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Emmision light:",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 517.0, 86.0, 18.0 ],
					"id" : "obj-144",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 42.0, 760.0, 86.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "DiffR",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 94.0, 497.0, 40.0, 19.0 ],
					"id" : "obj-145",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 138.0, 695.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "DiffA",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 497.0, 40.0, 19.0 ],
					"id" : "obj-146",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 264.0, 695.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "DiffB",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 497.0, 40.0, 19.0 ],
					"id" : "obj-147",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 222.0, 695.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "DiffG",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 497.0, 40.0, 19.0 ],
					"id" : "obj-148",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 180.0, 695.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Diffuse light:",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 499.0, 73.0, 18.0 ],
					"id" : "obj-149",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 51.0, 695.0, 73.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "AmbR",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 94.0, 479.0, 40.0, 19.0 ],
					"id" : "obj-150",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 137.0, 624.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "AmbA",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 479.0, 40.0, 19.0 ],
					"id" : "obj-151",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 263.0, 624.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "AmbB",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 479.0, 40.0, 19.0 ],
					"id" : "obj-152",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 221.0, 624.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "AmbG",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 479.0, 40.0, 19.0 ],
					"id" : "obj-153",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 179.0, 624.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Alpha",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 220.0, 462.0, 38.0, 18.0 ],
					"id" : "obj-154",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 262.0, 591.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blue",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 178.0, 462.0, 38.0, 18.0 ],
					"id" : "obj-155",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 220.0, 591.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Green",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 136.0, 462.0, 38.0, 18.0 ],
					"id" : "obj-156",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 178.0, 591.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Red",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 94.0, 462.0, 38.0, 18.0 ],
					"id" : "obj-157",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 136.0, 591.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambient light:",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 481.0, 79.0, 18.0 ],
					"id" : "obj-158",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 50.0, 626.0, 79.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Material",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 460.0, 64.0, 21.0 ],
					"id" : "obj-159",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 49.0, 589.0, 64.0, 21.0 ],
					"fontsize" : 11.556055,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogDens",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 94.0, 403.0, 40.0, 19.0 ],
					"id" : "obj-160",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 307.0, 517.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogAmount",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 403.0, 40.0, 19.0 ],
					"id" : "obj-161",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 824.0, 303.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogEnd",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 403.0, 40.0, 19.0 ],
					"id" : "obj-162",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 391.0, 517.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogStart",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 403.0, 40.0, 19.0 ],
					"id" : "obj-163",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 349.0, 517.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Amount",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 220.0, 386.0, 47.0, 18.0 ],
					"id" : "obj-164",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 756.0, 303.714294, 47.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "End",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 178.0, 386.0, 38.0, 18.0 ],
					"id" : "obj-165",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 393.0, 489.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Start",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 136.0, 386.0, 38.0, 18.0 ],
					"id" : "obj-166",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 351.0, 489.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Density",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 94.0, 386.0, 46.0, 18.0 ],
					"id" : "obj-167",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 309.0, 489.0, 46.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inherit",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 109.0, 426.0, 45.0, 18.0 ],
					"id" : "obj-168",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 760.0, 337.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "FogInherit",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 425.0, 73.0, 18.0 ],
					"id" : "obj-169",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 335.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 94.0, 362.0, 40.0, 19.0 ],
					"id" : "obj-170",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 136.0, 517.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogA",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 362.0, 40.0, 19.0 ],
					"id" : "obj-171",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 262.0, 517.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogB",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 362.0, 40.0, 19.0 ],
					"id" : "obj-172",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 220.0, 517.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "FogG",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 362.0, 40.0, 19.0 ],
					"id" : "obj-173",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 178.0, 517.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Alpha",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 220.0, 345.0, 38.0, 18.0 ],
					"id" : "obj-174",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 264.0, 489.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blue",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 178.0, 345.0, 38.0, 18.0 ],
					"id" : "obj-175",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 222.0, 489.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Green",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 136.0, 345.0, 38.0, 18.0 ],
					"id" : "obj-176",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 180.0, 489.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Red",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 94.0, 345.0, 38.0, 18.0 ],
					"id" : "obj-177",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 138.0, 489.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fog",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 342.0, 64.0, 21.0 ],
					"id" : "obj-178",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 31.0, 453.0, 64.0, 21.0 ],
					"fontsize" : 11.556055,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Enable",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 109.0, 288.0, 45.0, 18.0 ],
					"id" : "obj-179",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 759.0, 233.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "DepthEnable",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 287.0, 73.0, 18.0 ],
					"id" : "obj-180",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 229.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 109.0, 271.0, 45.0, 18.0 ],
					"id" : "obj-181",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 759.0, 195.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "DepthClear",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 270.0, 73.0, 18.0 ],
					"id" : "obj-182",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 191.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 109.0, 305.0, 45.0, 18.0 ],
					"id" : "obj-183",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 759.0, 268.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "DepthInherit",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 304.0, 73.0, 18.0 ],
					"id" : "obj-184",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 264.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 271.0, 64.0, 21.0 ],
					"id" : "obj-185",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 705.0, 336.0, 45.0, 21.0 ],
					"fontsize" : 11.556055,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inherit",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 109.0, 235.0, 45.0, 18.0 ],
					"id" : "obj-186",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 759.0, 152.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "ColorInherit",
					"numoutlets" : 1,
					"presentation_rect" : [ 94.0, 235.0, 73.0, 18.0 ],
					"id" : "obj-187",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 148.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 94.0, 217.0, 40.0, 19.0 ],
					"id" : "obj-188",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 134.0, 412.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColA",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 217.0, 40.0, 19.0 ],
					"id" : "obj-189",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 263.0, 412.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColB",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 217.0, 40.0, 19.0 ],
					"id" : "obj-190",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 218.0, 412.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ColG",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 217.0, 40.0, 19.0 ],
					"id" : "obj-191",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 176.0, 412.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"maximum" : 1.0,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Alpha",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 220.0, 200.0, 38.0, 18.0 ],
					"id" : "obj-192",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 263.0, 395.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blue",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 178.0, 200.0, 38.0, 18.0 ],
					"id" : "obj-193",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 218.0, 395.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Green",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 136.0, 200.0, 38.0, 18.0 ],
					"id" : "obj-194",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 176.0, 395.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Red",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 94.0, 200.0, 38.0, 18.0 ],
					"id" : "obj-195",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 134.0, 395.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Position",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 219.0, 64.0, 18.0 ],
					"id" : "obj-196",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 47.0, 414.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Color",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 198.0, 64.0, 21.0 ],
					"id" : "obj-197",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 47.0, 393.0, 64.0, 21.0 ],
					"fontsize" : 11.556055,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Blend",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 98.0, 64.0, 21.0 ],
					"id" : "obj-198",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 9.0, 287.0, 64.0, 21.0 ],
					"fontsize" : 11.556055,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mode source:",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 128.0, 75.0, 18.0 ],
					"id" : "obj-199",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 15.0, 338.0, 75.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Enable",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 130.0, 100.0, 45.0, 18.0 ],
					"id" : "obj-200",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 759.0, 118.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "BlendEnable",
					"numoutlets" : 1,
					"presentation_rect" : [ 112.0, 99.0, 73.0, 18.0 ],
					"id" : "obj-201",
					"outlettype" : [ "" ],
					"patching_rect" : [ 843.0, 114.0, 18.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
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
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"presentation_rect" : [ 111.0, 128.0, 146.0, 18.0 ],
					"id" : "obj-202",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 113.0, 314.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"items" : [ "0:", "zero", ",", "1:", "one", ",", "2:", "destination", "color", ",", "3:", "source", "color", ",", "4:", "one", "minus", "destination", "color", ",", "5:", "one", "minus", "source", "color", ",", "6:", "source", "alpha", ",", "7:", "one", "minus", "source", "alpha", ",", "8:", "destination", "alpha", ",", "9:", "one", "minus", "destination", "alpha", ",", "10:", "source", "alpha", "saturate" ],
					"labelclick" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotAngle",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 94.0, 48.0, 40.0, 19.0 ],
					"id" : "obj-203",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 99.0, 191.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotZ",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 48.0, 40.0, 19.0 ],
					"id" : "obj-204",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 225.0, 191.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotY",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 48.0, 40.0, 19.0 ],
					"id" : "obj-205",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 183.0, 191.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RotX",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 48.0, 40.0, 19.0 ],
					"id" : "obj-206",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 141.0, 191.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ScaleZ",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 66.0, 40.0, 19.0 ],
					"id" : "obj-207",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 190.0, 251.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ScaleY",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 66.0, 40.0, 19.0 ],
					"id" : "obj-208",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 148.0, 251.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ScaleX",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 66.0, 40.0, 19.0 ],
					"id" : "obj-209",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 106.0, 251.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"minimum" : 0.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "PosZ",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 220.0, 30.0, 40.0, 19.0 ],
					"id" : "obj-210",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 196.0, 116.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "PosY",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 178.0, 30.0, 40.0, 19.0 ],
					"id" : "obj-211",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 154.0, 116.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "PosX",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"presentation_rect" : [ 136.0, 30.0, 40.0, 19.0 ],
					"id" : "obj-212",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 112.0, 116.0, 40.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"triangle" : 0,
					"triscale" : 0.9,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Z",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 220.0, 12.0, 38.0, 18.0 ],
					"id" : "obj-213",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 196.0, 89.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Y",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 178.0, 12.0, 38.0, 18.0 ],
					"id" : "obj-214",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 154.0, 89.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "X",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 136.0, 12.0, 38.0, 18.0 ],
					"id" : "obj-215",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 112.0, 89.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Angle",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 94.0, 12.0, 38.0, 18.0 ],
					"id" : "obj-216",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 47.0, 120.0, 38.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rotate:",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 48.0, 64.0, 18.0 ],
					"id" : "obj-217",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 12.0, 191.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Scale:",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 66.0, 64.0, 18.0 ],
					"id" : "obj-218",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 10.0, 255.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Position",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 30.0, 64.0, 18.0 ],
					"id" : "obj-219",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 348.0, 112.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3D position",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 8.0, 81.0, 21.0 ],
					"id" : "obj-221",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 19.0, 84.0, 81.0, 21.0 ],
					"fontsize" : 11.556055,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Color",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 362.0, 64.0, 18.0 ],
					"id" : "obj-222",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 48.0, 517.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"presentation_rect" : [ 1.0, 1.0, 265.0, 86.0 ],
					"id" : "obj-223",
					"patching_rect" : [ 25.0, 18.0, 523.0, 48.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"presentation_rect" : [ 1.0, 92.0, 265.0, 95.0 ],
					"id" : "obj-224",
					"patching_rect" : [ 25.0, 18.0, 523.0, 48.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"presentation_rect" : [ 1.0, 192.0, 265.0, 66.0 ],
					"id" : "obj-225",
					"patching_rect" : [ 25.0, 18.0, 523.0, 48.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"presentation_rect" : [ 1.0, 264.0, 265.0, 64.0 ],
					"id" : "obj-226",
					"patching_rect" : [ 25.0, 18.0, 523.0, 48.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"presentation_rect" : [ 1.0, 335.0, 265.0, 112.0 ],
					"id" : "obj-227",
					"patching_rect" : [ 25.0, 18.0, 523.0, 48.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"presentation_rect" : [ 1.0, 629.0, 265.0, 104.0 ],
					"id" : "obj-228",
					"patching_rect" : [ 25.0, 18.0, 523.0, 48.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Automatic material",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"presentation_rect" : [ 111.0, 584.0, 103.0, 18.0 ],
					"id" : "obj-229",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 701.0, 461.0, 103.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"presentation_rect" : [ 1.0, 454.0, 265.0, 168.0 ],
					"id" : "obj-230",
					"patching_rect" : [ 25.0, 18.0, 523.0, 48.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- converting to list of ints",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-231",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 389.0, 319.0, 143.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 3 ],
					"destination" : [ "obj-136", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 2 ],
					"destination" : [ "obj-137", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-135", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-67", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-137", 0 ],
					"destination" : [ "obj-67", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-67", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 10 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 3 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 2 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 1 ],
					"destination" : [ "obj-143", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-73", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-73", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-143", 0 ],
					"destination" : [ "obj-73", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-73", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 10 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 3 ],
					"destination" : [ "obj-146", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 2 ],
					"destination" : [ "obj-147", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-148", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-145", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-79", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-147", 0 ],
					"destination" : [ "obj-79", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-148", 0 ],
					"destination" : [ "obj-79", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-79", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 10 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 3 ],
					"destination" : [ "obj-151", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 2 ],
					"destination" : [ "obj-152", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 1 ],
					"destination" : [ "obj-153", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-150", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-85", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-85", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-153", 0 ],
					"destination" : [ "obj-85", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-150", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-85", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 10 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 6 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 5 ],
					"destination" : [ "obj-163", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 4 ],
					"destination" : [ "obj-160", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 3 ],
					"destination" : [ "obj-171", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 2 ],
					"destination" : [ "obj-172", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 1 ],
					"destination" : [ "obj-173", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-170", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-162", 0 ],
					"destination" : [ "obj-94", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-163", 0 ],
					"destination" : [ "obj-94", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-160", 0 ],
					"destination" : [ "obj-94", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 0 ],
					"destination" : [ "obj-94", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-172", 0 ],
					"destination" : [ "obj-94", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-173", 0 ],
					"destination" : [ "obj-94", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-170", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-94", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 10 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 2 ],
					"destination" : [ "obj-190", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 1 ],
					"destination" : [ "obj-191", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-188", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-190", 0 ],
					"destination" : [ "obj-101", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-191", 0 ],
					"destination" : [ "obj-101", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-188", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-101", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 10 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-202", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-202", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 10 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 2 ],
					"destination" : [ "obj-207", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 1 ],
					"destination" : [ "obj-208", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-209", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-207", 0 ],
					"destination" : [ "obj-106", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-208", 0 ],
					"destination" : [ "obj-106", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-209", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-106", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 10 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 3 ],
					"destination" : [ "obj-204", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 2 ],
					"destination" : [ "obj-205", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 1 ],
					"destination" : [ "obj-206", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-203", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-204", 0 ],
					"destination" : [ "obj-112", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-205", 0 ],
					"destination" : [ "obj-112", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-206", 0 ],
					"destination" : [ "obj-112", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-203", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-112", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 10 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 2 ],
					"destination" : [ "obj-210", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 1 ],
					"destination" : [ "obj-211", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-212", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-210", 0 ],
					"destination" : [ "obj-117", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-211", 0 ],
					"destination" : [ "obj-117", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-212", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-117", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 10 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [ 1140.5, 753.0, 861.0, 753.0, 861.0, 708.0, 873.5, 708.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-189", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-189", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-122", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-169", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-169", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-161", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-161", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-184", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-184", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-180", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-180", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-182", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-182", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-187", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-187", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-201", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-201", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
