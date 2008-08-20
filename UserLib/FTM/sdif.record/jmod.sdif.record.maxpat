{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 528.0, 52.0, 1395.0, 750.0 ],
		"bglocked" : 0,
		"defrect" : [ 528.0, 52.0, 1395.0, 750.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"varname" : "print_button",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"nofsaa" : 1,
					"filename" : "jcom.jsui_texttoggle.js",
					"jsarguments" : [ "Print", "Print" ],
					"id" : "obj-1",
					"patching_rect" : [ 2.0, 157.0, 45.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar print_button",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 640.0, 79.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "print",
					"text" : "jcom.parameter print @type msg_toggle @description \"Print script messages to Max window\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 663.0, 252.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"patching_rect" : [ 619.0, 573.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/7/description",
					"text" : "jcom.parameter stream/7/description @type msg_symbol @description \"one word stream description\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 559.0, 245.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/7/variables",
					"text" : "jcom.parameter stream/7/variables @type msg_symbol @description \"Martix row variables. separated by \\\\,\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"patching_rect" : [ 619.0, 593.0, 242.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/7/ID",
					"text" : "jcom.parameter stream/7/ID @type msg_symbol @description \"4 letter frame/matrix identificator. e.g. 1MID or XPOS\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"patching_rect" : [ 570.0, 627.0, 271.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/6/description",
					"text" : "jcom.parameter stream/6/description @type msg_symbol @description \"one word stream description\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 428.0, 245.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/6/variables",
					"text" : "jcom.parameter stream/6/variables @type msg_symbol @description \"Martix row variables. separated by \\\\,\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"patching_rect" : [ 619.0, 462.0, 242.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/6/ID",
					"text" : "jcom.parameter stream/6/ID @type msg_symbol @description \"4 letter frame/matrix identificator. e.g. 1MID or XPOS\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"patching_rect" : [ 570.0, 496.0, 271.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"patching_rect" : [ 570.0, 607.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 539.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"patching_rect" : [ 619.0, 442.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"patching_rect" : [ 570.0, 476.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 408.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"patching_rect" : [ 619.0, 309.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/5/description",
					"text" : "jcom.parameter stream/5/description @type msg_symbol @description \"one word stream description\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 295.0, 245.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/5/variables",
					"text" : "jcom.parameter stream/5/variables @type msg_symbol @description \"Martix row variables. separated by \\\\,\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"patching_rect" : [ 619.0, 329.0, 242.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/5/ID",
					"text" : "jcom.parameter stream/5/ID @type msg_symbol @description \"4 letter frame/matrix identificator. e.g. 1MID or XPOS\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"patching_rect" : [ 570.0, 363.0, 271.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/4/description",
					"text" : "jcom.parameter stream/4/description @type msg_symbol @description \"one word stream description\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 161.0, 245.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/4/variables",
					"text" : "jcom.parameter stream/4/variables @type msg_symbol @description \"Martix row variables. separated by \\\\,\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"patching_rect" : [ 619.0, 195.0, 242.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/4/ID",
					"text" : "jcom.parameter stream/4/ID @type msg_symbol @description \"4 letter frame/matrix identificator. e.g. 1MID or XPOS\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"patching_rect" : [ 570.0, 229.0, 271.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"patching_rect" : [ 570.0, 343.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 275.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"patching_rect" : [ 619.0, 175.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"patching_rect" : [ 570.0, 209.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"patching_rect" : [ 668.0, 141.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"patching_rect" : [ 392.0, 219.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : "data input to be recorded"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jalg.sdif.player[5]",
					"text" : "jcom.message file @type msg_symbol @description \"full path of sdif file to record\"",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 608.0, 388.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"outputmode" : 1,
					"id" : "obj-30",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 157.0, 155.0, 220.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stream 7",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 156.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 109.0, 155.0, 37.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 380.0, 155.0, 123.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"outputmode" : 1,
					"id" : "obj-34",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 157.0, 138.0, 220.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stream 6",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 139.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-36",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 109.0, 138.0, 37.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-37",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 380.0, 138.0, 123.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"outputmode" : 1,
					"id" : "obj-38",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 157.0, 121.0, 220.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stream 5",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-39",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 122.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-40",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 109.0, 121.0, 37.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-41",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 380.0, 121.0, 123.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"outputmode" : 1,
					"id" : "obj-42",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 157.0, 104.0, 220.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stream 4",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-43",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 105.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-44",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 109.0, 104.0, 37.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-45",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 380.0, 104.0, 123.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar record_button",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 556.0, 87.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "record",
					"text" : "jcom.parameter record @type msg_toggle @description \"Start/Stop recording\"",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-47",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 579.0, 362.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-48",
					"fontname" : "Arial",
					"patching_rect" : [ 1015.0, 486.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/3/description",
					"text" : "jcom.parameter stream/3/description @type msg_symbol @description \"one word stream description\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-49",
					"fontname" : "Arial",
					"patching_rect" : [ 1064.0, 472.0, 245.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/3/variables",
					"text" : "jcom.parameter stream/3/variables @type msg_symbol @description \"Martix row variables. separated by \\\\,\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-50",
					"fontname" : "Arial",
					"patching_rect" : [ 1015.0, 506.0, 242.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/3/ID",
					"text" : "jcom.parameter stream/3/ID @type msg_symbol @description \"4 letter frame/matrix identificator. e.g. 1MID or XPOS\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-51",
					"fontname" : "Arial",
					"patching_rect" : [ 966.0, 540.0, 271.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/2/description",
					"text" : "jcom.parameter stream/2/description @type msg_symbol @description \"one word stream description\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-52",
					"fontname" : "Arial",
					"patching_rect" : [ 1064.0, 341.0, 245.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/2/variables",
					"text" : "jcom.parameter stream/2/variables @type msg_symbol @description \"Martix row variables. separated by \\\\,\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"patching_rect" : [ 1015.0, 375.0, 242.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/2/ID",
					"text" : "jcom.parameter stream/2/ID @type msg_symbol @description \"4 letter frame/matrix identificator. e.g. 1MID or XPOS\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"patching_rect" : [ 966.0, 409.0, 271.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"patching_rect" : [ 966.0, 520.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-56",
					"fontname" : "Arial",
					"patching_rect" : [ 1064.0, 452.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"patching_rect" : [ 1015.0, 355.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-58",
					"fontname" : "Arial",
					"patching_rect" : [ 966.0, 389.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-59",
					"fontname" : "Arial",
					"patching_rect" : [ 1064.0, 321.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "variable names must be seperaed by \\,",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"hidden" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-60",
					"fontname" : "Arial",
					"patching_rect" : [ 512.0, 21.0, 199.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "streamcount",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-61",
					"fontname" : "Arial",
					"minimum" : 1,
					"patching_rect" : [ 18.0, 61.0, 17.0, 17.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"maximum" : 8,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar streamcount",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-62",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 484.0, 82.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Number of streams to record:",
					"linecount" : 3,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-63",
					"fontname" : "Arial",
					"patching_rect" : [ 2.0, 19.0, 60.0, 38.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "streamcount[1]",
					"text" : "jcom.parameter streamcount @range 1 8 @clipmode both @type msg_int @description \"Number of streams to be recorded\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-64",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 509.0, 306.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"patching_rect" : [ 1015.0, 222.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/1/description",
					"text" : "jcom.parameter stream/1/description @type msg_symbol @description \"one word stream description\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-66",
					"fontname" : "Arial",
					"patching_rect" : [ 1064.0, 208.0, 245.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/1/variables",
					"text" : "jcom.parameter stream/1/variables @type msg_symbol @description \"Martix row variables. separated by \\\\,\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-67",
					"fontname" : "Arial",
					"patching_rect" : [ 1015.0, 242.0, 242.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/1/ID",
					"text" : "jcom.parameter stream/1/ID @type msg_symbol @description \"4 letter frame/matrix identificator. e.g. 1MID or XPOS\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-68",
					"fontname" : "Arial",
					"patching_rect" : [ 966.0, 276.0, 271.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/0/description",
					"text" : "jcom.parameter stream/0/description @type msg_symbol @description \"one word stream description\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-69",
					"fontname" : "Arial",
					"patching_rect" : [ 1064.0, 74.0, 245.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/0/variables",
					"text" : "jcom.parameter stream/0/variables @type msg_symbol @description \"Martix row variables. separated by \\\\,\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-70",
					"fontname" : "Arial",
					"patching_rect" : [ 1015.0, 108.0, 242.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "stream/0/ID",
					"text" : "jcom.parameter stream/0/ID @type msg_symbol @description \"4 letter frame/matrix identificator. e.g. 1MID or XPOS\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-71",
					"fontname" : "Arial",
					"patching_rect" : [ 966.0, 142.0, 271.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-72",
					"fontname" : "Arial",
					"patching_rect" : [ 966.0, 256.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-73",
					"fontname" : "Arial",
					"patching_rect" : [ 1064.0, 188.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-74",
					"fontname" : "Arial",
					"patching_rect" : [ 1015.0, 88.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"outputmode" : 1,
					"id" : "obj-75",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 157.0, 87.0, 220.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stream 3",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-76",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 88.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-77",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 109.0, 87.0, 37.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-78",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 380.0, 87.0, 123.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"outputmode" : 1,
					"id" : "obj-79",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 157.0, 70.0, 220.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stream 2",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-80",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 71.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-81",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 109.0, 70.0, 37.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-82",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 380.0, 70.0, 123.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"outputmode" : 1,
					"id" : "obj-83",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 157.0, 53.0, 220.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stream 1",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-84",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 54.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-85",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 109.0, 53.0, 37.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-86",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 380.0, 53.0, 123.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-87",
					"fontname" : "Arial",
					"patching_rect" : [ 966.0, 122.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-88",
					"fontname" : "Arial",
					"patching_rect" : [ 1064.0, 54.0, 48.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Frame description",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-89",
					"fontname" : "Arial",
					"patching_rect" : [ 380.0, 24.0, 88.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"outputmode" : 1,
					"id" : "obj-90",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 157.0, 36.0, 220.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Variable names",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-91",
					"fontname" : "Arial",
					"patching_rect" : [ 157.0, 24.0, 71.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stream 0",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-92",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 37.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-93",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 109.0, 36.0, 37.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-94",
					"fontname" : "Arial",
					"patching_rect" : [ 66.0, 227.0, 191.0, 15.0 ],
					"numinlets" : 2,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-95",
					"fontname" : "Arial",
					"patching_rect" : [ 280.0, 362.0, 75.0, 25.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/ui/freeze 0",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-96",
					"fontname" : "Arial",
					"patching_rect" : [ 146.0, 420.0, 243.0, 15.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-97",
					"fontname" : "Arial",
					"patching_rect" : [ 146.0, 399.0, 62.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-98",
					"fontname" : "Arial",
					"patching_rect" : [ 93.0, 245.0, 125.0, 15.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ID",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-99",
					"fontname" : "Arial",
					"patching_rect" : [ 109.0, 24.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "record_button",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"nofsaa" : 1,
					"filename" : "jcom.jsui_texttoggle.js",
					"jsarguments" : [ "Record", "Record", 68, 68, 68, 225, 225, 225, 255, 40, 40, 0, 0, 0 ],
					"id" : "obj-100",
					"patching_rect" : [ 2.0, 81.0, 45.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-101",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 348.0, 43.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-102",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 396.0, 45.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-103",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 372.0, 78.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-104",
					"fontname" : "Arial",
					"patching_rect" : [ 210.0, 362.0, 65.0, 25.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-105",
					"fontname" : "Arial",
					"patching_rect" : [ 219.0, 245.0, 31.0, 15.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jalg.sdif.player",
					"text" : "jalg.sdif.record",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"hidden" : 1,
					"id" : "obj-106",
					"fontname" : "Arial",
					"patching_rect" : [ 63.0, 449.0, 70.0, 17.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"SDIF record module\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-107",
					"fontname" : "Arial",
					"patching_rect" : [ 30.0, 280.0, 215.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-108",
					"patching_rect" : [ 30.0, 219.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"hidden" : 1,
					"id" : "obj-109",
					"patching_rect" : [ 30.0, 472.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"outlettype" : [ "", "int", "" ],
					"id" : "obj-110",
					"fontname" : "Arial",
					"keymode" : 1,
					"patching_rect" : [ 380.0, 36.0, 123.0, 18.0 ],
					"lines" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-111",
					"patching_rect" : [ 62.0, 23.0, 446.0, 154.0 ],
					"numinlets" : 1,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"rounded" : 20
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sorry for the messy patching.. didn't know how else to solve it..",
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"hidden" : 1,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-112",
					"fontname" : "Arial",
					"patching_rect" : [ 723.0, 13.0, 319.0, 17.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-114",
					"patching_rect" : [ 0.0, 0.0, 600.0, 210.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 1,
					"midpoints" : [ 228.5, 266.0, 39.5, 266.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [ 389.5, 103.0, 939.0, 103.0, 939.0, 450.0, 1073.5, 450.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [ 389.5, 85.0, 949.0, 85.0, 949.0, 319.0, 1073.5, 319.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"midpoints" : [ 389.5, 68.0, 959.0, 68.0, 959.0, 186.0, 1073.5, 186.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 1,
					"midpoints" : [ 389.5, 52.0, 1073.5, 52.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [ 166.5, 104.0, 938.0, 104.0, 938.0, 451.0, 1024.5, 451.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [ 166.5, 86.0, 948.0, 86.0, 948.0, 320.0, 1024.5, 320.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"midpoints" : [ 166.5, 69.0, 958.0, 69.0, 958.0, 187.0, 1024.5, 187.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 1,
					"midpoints" : [ 166.5, 53.0, 1024.5, 53.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [ 118.5, 105.0, 937.0, 105.0, 937.0, 452.0, 975.5, 452.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [ 118.5, 87.0, 947.0, 87.0, 947.0, 321.0, 975.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1,
					"midpoints" : [ 118.5, 70.0, 957.0, 70.0, 957.0, 187.0, 975.5, 187.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 1,
					"midpoints" : [ 118.5, 54.0, 975.5, 54.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 389.5, 171.0, 547.0, 171.0, 547.0, 535.0, 677.5, 535.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 389.5, 154.0, 555.0, 154.0, 555.0, 405.0, 677.5, 405.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [ 389.5, 137.0, 564.0, 137.0, 564.0, 268.0, 677.5, 268.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 389.5, 120.0, 677.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 166.5, 172.0, 546.0, 172.0, 546.0, 536.0, 628.5, 536.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [ 166.5, 155.0, 554.0, 155.0, 554.0, 406.0, 628.5, 406.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 166.5, 138.0, 563.0, 138.0, 563.0, 269.0, 628.5, 269.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 166.5, 121.0, 628.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [ 118.5, 173.0, 545.0, 173.0, 545.0, 537.0, 579.5, 537.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 118.5, 156.0, 553.0, 156.0, 553.0, 407.0, 579.5, 407.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 118.5, 139.0, 562.0, 139.0, 562.0, 270.0, 579.5, 270.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 118.5, 122.0, 579.5, 122.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 677.5, 591.0, 926.0, 591.0, 926.0, 533.0, 550.0, 533.0, 550.0, 159.0, 389.5, 159.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 677.5, 460.0, 922.0, 460.0, 922.0, 399.0, 559.0, 399.0, 559.0, 142.0, 389.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 677.5, 327.0, 919.0, 327.0, 919.0, 266.0, 566.0, 266.0, 566.0, 125.0, 389.5, 125.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 677.5, 193.0, 920.0, 193.0, 920.0, 108.0, 389.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 1073.5, 504.0, 1307.0, 504.0, 1307.0, 445.0, 944.0, 445.0, 944.0, 90.0, 389.5, 90.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 1073.5, 373.0, 1307.0, 373.0, 1307.0, 312.0, 954.0, 312.0, 954.0, 73.0, 389.5, 73.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 1073.5, 240.0, 1307.0, 240.0, 1307.0, 182.0, 961.0, 182.0, 961.0, 57.0, 389.5, 57.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 1073.5, 106.0, 1308.0, 106.0, 1308.0, 36.0, 389.5, 36.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 628.5, 625.0, 927.0, 625.0, 927.0, 532.0, 551.0, 532.0, 551.0, 158.0, 166.5, 158.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 628.5, 494.0, 923.0, 494.0, 923.0, 398.0, 560.0, 398.0, 560.0, 141.0, 166.5, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 628.5, 361.0, 920.0, 361.0, 920.0, 265.0, 567.0, 265.0, 567.0, 124.0, 166.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 628.5, 227.0, 921.0, 227.0, 921.0, 107.0, 166.5, 107.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 1024.5, 538.0, 1308.0, 538.0, 1308.0, 444.0, 945.0, 444.0, 945.0, 89.0, 166.5, 89.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 1024.5, 407.0, 1308.0, 407.0, 1308.0, 311.0, 955.0, 311.0, 955.0, 72.0, 166.5, 72.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 1024.5, 274.0, 1308.0, 274.0, 1308.0, 181.0, 962.0, 181.0, 962.0, 56.0, 166.5, 56.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 1024.5, 140.0, 1309.0, 140.0, 1309.0, 35.0, 166.5, 35.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 1 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 1,
					"midpoints" : [ 131.5, 396.0, 155.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-106", 1 ],
					"hidden" : 1,
					"midpoints" : [ 399.0, 440.0, 123.5, 440.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 579.5, 660.0, 928.0, 660.0, 928.0, 531.0, 552.0, 531.0, 552.0, 157.0, 118.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 579.5, 528.0, 924.0, 528.0, 924.0, 397.0, 561.0, 397.0, 561.0, 140.0, 118.5, 140.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 579.5, 395.0, 921.0, 395.0, 921.0, 264.0, 568.0, 264.0, 568.0, 123.0, 118.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 579.5, 261.0, 922.0, 261.0, 922.0, 106.0, 118.5, 106.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 975.5, 572.0, 1309.0, 572.0, 1309.0, 443.0, 946.0, 443.0, 946.0, 88.0, 118.5, 88.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 975.5, 441.0, 1309.0, 441.0, 1309.0, 310.0, 956.0, 310.0, 956.0, 71.0, 118.5, 71.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 975.5, 308.0, 1309.0, 308.0, 1309.0, 180.0, 963.0, 180.0, 963.0, 55.0, 118.5, 55.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 1,
					"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
					"midpoints" : [ 975.5, 174.0, 1310.0, 174.0, 1310.0, 34.0, 118.5, 34.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 72.5, 699.0, 59.0, 699.0, 59.0, 635.0, 72.5, 635.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [ 72.5, 604.0, 59.0, 604.0, 59.0, 551.0, 72.5, 551.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 1,
					"midpoints" : [ 72.5, 544.0, 59.0, 544.0, 59.0, 479.0, 72.5, 479.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 1 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 1,
					"midpoints" : [ 131.5, 435.0, 72.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
