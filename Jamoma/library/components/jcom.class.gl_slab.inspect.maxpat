{
	"patcher" : 	{
		"rect" : [ 19.0, 44.0, 1391.0, 811.0 ],
		"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 19.0, 44.0, 1391.0, 811.0 ],
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
					"maxclass" : "message",
					"text" : "0 0 1 1",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 809.0, 71.0, 43.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "720 480",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 573.0, 74.0, 49.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DIM[1]",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-3",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 134.0, 30.0, 39.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DIM[0]",
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-4",
					"minimum" : 0,
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 93.0, 30.0, 39.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar TEXRECT[3]",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 659.0, 386.0, 88.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar TEXRECT[2]",
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 569.0, 386.0, 88.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar TEXRECT[1]",
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 479.0, 386.0, 88.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar TEXRECT[0]",
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 389.0, 386.0, 88.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slab\/texrect",
					"text" : "jcom.parameter slab\/texrect @type msg_list @ramp/drive none @description \"The extent or rectangular coordinates bounding the texture coordinates for the slab geometry (default = 0 0 1 1).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 536.0, 340.0, 471.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-10",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 389.0, 353.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RECT[3]",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 659.0, 301.0, 71.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RECT[2]",
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 569.0, 301.0, 71.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RECT[1]",
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 479.0, 301.0, 71.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar RECT[0]",
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 389.0, 301.0, 71.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slab\/rect",
					"text" : "jcom.parameter slab\/rect @type msg_list @ramp/drive none @description \"The extent or rectangular coordinates bounding the slab geometry (default = 0 0 1 1).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 536.0, 255.0, 375.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-16",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 389.0, 268.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ADAPT",
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 389.0, 192.0, 66.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slab\/adapt",
					"text" : "jcom.parameter slab\/adapt @type msg_toggle @description \"Enables or disables adapting and resizing to input source dimensions (default = 1).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 389.0, 211.0, 333.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "DIM[Y]",
					"text" : "pvar DIM[1]",
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 479.0, 155.0, 65.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DIM[0]",
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 389.0, 155.0, 65.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slab\/dim",
					"text" : "jcom.parameter slab\/dim @type msg_list @ramp/drive none @description \"The dimensions of the output jit.gl.texture object when adapt is disabled (default = 720 480).\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 536.0, 109.0, 392.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-22",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 389.0, 122.0, 144.0, 17.0 ],
					"numinlets" : 11,
					"numoutlets" : 11,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TEXRECT[0]",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-23",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 92.0, 67.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Adapt",
					"id" : "obj-24",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 192.0, 32.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "ADAPT",
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"patching_rect" : [ 177.0, 30.0, 73.0, 18.0 ],
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
					"maxclass" : "newobj",
					"text" : "r #0_defaults",
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 779.0, 23.0, 73.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_defaults",
					"id" : "obj-27",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 166.0, 741.0, 73.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"filename" : "jsui_textbutton.js",
					"patching_rect" : [ 76.0, 739.0, 84.0, 19.0 ],
					"numinlets" : 1,
					"jsarguments" : [ "Defaults" ],
					"numoutlets" : 1,
					"nofsaa" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 1 b",
					"outlettype" : [ "bang", "int", "bang" ],
					"id" : "obj-29",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 779.0, 43.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RECT[0]",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-30",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 92.0, 49.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RECT[3]",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-31",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 218.0, 49.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RECT[2]",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-32",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 176.0, 49.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RECT[1]",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-33",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 134.0, 49.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TEXRECT[3]",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-34",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 218.0, 67.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TEXRECT[2]",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-35",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 176.0, 67.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TEXRECT[1]",
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-36",
					"triscale" : 0.9,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"transparent" : 1,
					"fontsize" : 9.0,
					"triangle" : 0,
					"patching_rect" : [ 136.0, 67.0, 40.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rect",
					"id" : "obj-37",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 49.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Texrect:",
					"id" : "obj-38",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 67.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimension",
					"id" : "obj-39",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 7.0, 31.0, 64.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 110 110 110",
					"id" : "obj-40",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 336.0, 730.0, 106.0, 17.0 ],
					"numinlets" : 4,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Slab settings",
					"id" : "obj-41",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 10.533333,
					"patching_rect" : [ 7.0, 9.0, 98.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-42",
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"border" : 1,
					"patching_rect" : [ 1.0, 1.0, 265.0, 86.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 398.5, 176.0, 383.0, 176.0, 383.0, 118.0, 398.5, 118.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [ 398.5, 244.0, 382.0, 244.0, 382.0, 188.0, 398.5, 188.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 398.5, 322.0, 383.0, 322.0, 383.0, 264.0, 398.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 398.5, 407.0, 383.0, 407.0, 383.0, 349.0, 398.5, 349.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 1,
					"midpoints" : [ 488.5, 180.0, 379.0, 180.0, 379.0, 115.0, 411.0, 115.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 1,
					"midpoints" : [ 488.5, 326.0, 379.0, 326.0, 379.0, 261.0, 411.0, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 1,
					"midpoints" : [ 488.5, 411.0, 379.0, 411.0, 379.0, 346.0, 411.0, 346.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 2 ],
					"hidden" : 1,
					"midpoints" : [ 578.5, 329.0, 375.0, 329.0, 375.0, 258.0, 423.5, 258.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 2 ],
					"hidden" : 1,
					"midpoints" : [ 578.5, 414.0, 375.0, 414.0, 375.0, 343.0, 423.5, 343.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 3 ],
					"hidden" : 1,
					"midpoints" : [ 668.5, 332.0, 371.0, 332.0, 371.0, 255.0, 436.0, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-10", 3 ],
					"hidden" : 1,
					"midpoints" : [ 668.5, 417.0, 371.0, 417.0, 371.0, 340.0, 436.0, 340.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 411.0, 150.0, 488.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [ 411.0, 296.0, 488.5, 296.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 411.0, 381.0, 488.5, 381.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 10 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 10 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 10 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 10 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 423.5, 293.0, 578.5, 293.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 423.5, 378.0, 578.5, 378.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [ 436.0, 290.0, 668.5, 290.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 436.0, 375.0, 668.5, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
