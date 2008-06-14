{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 23.0, 44.0, 1159.0, 797.0 ],
		"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 23.0, 44.0, 1159.0, 797.0 ],
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
					"maxclass" : "message",
					"text" : "0 0 1 1",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 718.0, 223.0, 44.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "720 480",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 670.0, 79.0, 52.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DIM[1]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 134.0, 30.0, 39.0, 18.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 152.0, 141.0, 39.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DIM[0]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 92.0, 30.0, 39.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 111.0, 141.0, 39.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slab/texrect",
					"text" : "jcom.parameter slab/texrect @type msg_list @ramp/drive none @description \"The extent or rectangular coordinates bounding the texture coordinates for the slab geometry (default = 0 0 1 1).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 219.0, 357.0, 511.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 42.0, 360.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slab/rect",
					"text" : "jcom.parameter slab/rect @type msg_list @ramp/drive none @description \"The extent or rectangular coordinates bounding the slab geometry (default = 0 0 1 1).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 191.0, 255.0, 423.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 4",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 44.0, 268.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slab/adapt",
					"text" : "jcom.parameter slab/adapt @type msg_toggle @description \"Enables or disables adapting and resizing to input source dimensions (default = 1).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 80.0, 184.0, 372.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slab/dim",
					"text" : "jcom.parameter slab/dim @type msg_list @ramp/drive none @description \"The dimensions of the output jit.gl.texture object when adapt is disabled (default = 720 480).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 256.0, 111.0, 460.0, 30.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 111.0, 114.0, 144.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TEXRECT[0]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 92.0, 68.0, 39.0, 18.0 ],
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 45.0, 398.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Adapt",
					"fontname" : "Verdana",
					"presentation_rect" : [ 193.0, 30.0, 45.0, 18.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 43.0, 166.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "ADAPT",
					"presentation_rect" : [ 178.0, 30.0, 73.0, 18.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 53.0, 191.0, 18.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"nofsaa" : 1,
					"jsarguments" : [ "Defaults" ],
					"presentation_rect" : [ 85.0, 740.0, 84.0, 19.0 ],
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 670.0, 15.0, 84.0, 19.0 ],
					"presentation" : 1,
					"filename" : "jsui_textbutton.js",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 1 b",
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 670.0, 40.0, 67.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RECT[0]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 92.0, 49.0, 39.0, 18.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 44.0, 302.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RECT[3]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 220.0, 49.0, 40.0, 18.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 170.0, 302.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RECT[2]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 177.0, 49.0, 40.0, 18.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 128.0, 302.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "RECT[1]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 134.0, 49.0, 40.0, 18.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 86.0, 302.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TEXRECT[3]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 220.0, 68.0, 40.0, 18.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 171.0, 398.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TEXRECT[2]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 177.0, 68.0, 40.0, 18.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 129.0, 398.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "TEXRECT[1]",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"presentation_rect" : [ 134.0, 68.0, 40.0, 18.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 89.0, 398.0, 40.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rect",
					"fontname" : "Verdana",
					"presentation_rect" : [ 7.0, 49.0, 64.0, 18.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 302.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Texrect:",
					"fontname" : "Verdana",
					"presentation_rect" : [ 7.0, 68.0, 64.0, 18.0 ],
					"id" : "obj-38",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 222.0, 398.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dimension",
					"fontname" : "Verdana",
					"presentation_rect" : [ 7.0, 31.0, 64.0, 18.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 141.0, 64.0, 18.0 ],
					"fontsize" : 9.873845,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Slab settings",
					"fontname" : "Verdana",
					"presentation_rect" : [ 7.0, 9.0, 98.0, 21.0 ],
					"id" : "obj-41",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 26.0, 98.0, 21.0 ],
					"fontsize" : 11.556055,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 265.0, 93.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 141.0, 26.0, 146.0, 16.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 703.5, 68.0, 89.0, 68.0, 89.0, 90.0, 89.5, 90.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 679.5, 103.0, 265.5, 103.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 10 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 727.5, 247.0, 624.0, 247.0, 624.0, 247.0, 200.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 10 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 727.5, 347.0, 228.5, 347.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 10 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 120.5, 140.0, 120.5, 140.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 133.0, 137.0, 161.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 120.5, 165.0, 104.0, 165.0, 104.0, 110.0, 120.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [ 161.5, 170.0, 99.0, 170.0, 99.0, 104.0, 133.0, 104.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 53.5, 324.0, 38.0, 324.0, 38.0, 264.0, 53.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [ 95.5, 328.0, 33.0, 328.0, 33.0, 260.0, 66.0, 260.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-16", 2 ],
					"hidden" : 0,
					"midpoints" : [ 137.5, 332.0, 29.0, 332.0, 29.0, 255.0, 78.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-16", 3 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 336.0, 25.0, 336.0, 25.0, 250.0, 91.0, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 53.5, 288.0, 53.5, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 66.0, 296.0, 95.5, 296.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 78.5, 293.0, 137.5, 293.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 91.0, 290.0, 179.5, 290.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 421.0, 38.0, 421.0, 38.0, 355.0, 51.5, 355.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 98.5, 426.0, 34.0, 426.0, 34.0, 351.0, 64.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-10", 2 ],
					"hidden" : 0,
					"midpoints" : [ 138.5, 431.0, 29.0, 431.0, 29.0, 346.0, 76.5, 346.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-10", 3 ],
					"hidden" : 0,
					"midpoints" : [ 180.5, 435.0, 24.0, 435.0, 24.0, 385.0, 24.0, 385.0, 24.0, 341.0, 89.0, 341.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 51.5, 394.0, 54.5, 394.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.0, 391.0, 98.5, 391.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 76.5, 385.0, 138.5, 385.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 3 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 89.0, 381.0, 180.5, 381.0 ]
				}

			}
 ]
	}

}
