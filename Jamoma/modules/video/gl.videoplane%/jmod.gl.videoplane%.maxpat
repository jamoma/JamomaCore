{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 164.0, 106.0, 997.0, 530.0 ],
		"bglocked" : 0,
		"defrect" : [ 164.0, 106.0, 997.0, 530.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 169.0, 434.0, 57.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 96.0, 301.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"linecount" : 2,
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 111.0, 301.0, 65.0, 27.0 ],
					"numoutlets" : 0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 96.0, 318.0, 118.0, 17.0 ],
					"numoutlets" : 3,
					"id" : "obj-4",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 245.0, 191.0, 120.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar OffsetY",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 482.0, 396.0, 68.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ScaleY",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 482.0, 340.0, 64.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DimY",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 210.0, 73.0, 41.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 210.0, 73.0, 41.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-8",
					"outlettype" : [ "int", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "DimX",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 169.0, 73.0, 41.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 169.0, 73.0, 41.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-9",
					"outlettype" : [ "int", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Gridmode 2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 411.0, 183.0, 85.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-10",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "videoplane/gridmode",
					"text" : "jcom.parameter videoplane/gridmode @type msg_symbol @description \"Grid mode (0 = quadrilated, 1 = triangular).\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 558.0, 183.0, 285.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-11",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Colormode 2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 147.0, 90.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "videoplane/colormode",
					"text" : "jcom.parameter videoplane/colormode @type msg_symbol @description \"Color mode (argb or uyvy).\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 559.0, 147.0, 261.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-13",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Interpolate",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 113.0, 83.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "videoplane/interpolate",
					"text" : "jcom.parameter videoplane/interpolate @type msg_toggle @description \\\"Interpolation.\\\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 559.0, 113.0, 236.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-15",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Display",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 79.0, 67.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "videoplane/displaylist",
					"text" : "jcom.parameter videoplane/displaylist @type msg_toggle @description \"Cache in displaylist (might speed up rendering on graphic card).\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 559.0, 79.0, 356.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-17",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Client",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 33.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "videoplane/client_storage",
					"text" : "jcom.parameter videoplane/client_storage @type msg_toggle @description \"When set jit.videoplane use incoming matrix's storage rather than allocating texture memory.\"",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 559.0, 33.0, 284.0, 38.0 ],
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Nudge",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 239.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "videoplane/nudge",
					"text" : "jcom.parameter videoplane/nudge @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"Amount of the texture that is nudged from boundary to accomodate for boundary errors when mapping the texture to the plane.\"",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 559.0, 239.0, 394.0, 38.0 ],
					"numoutlets" : 3,
					"id" : "obj-21",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "round",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 560.0, 284.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "videoplane/dim",
					"text" : "jcom.parameter videoplane/dim @type msg_list @description \"Dimension of the grid (x, y coordinates).\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 560.0, 303.0, 276.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-23",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DimY",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 482.0, 284.0, 57.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar DimX",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 284.0, 57.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Arial",
					"numinlets" : 11,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 306.0, 144.0, 17.0 ],
					"numoutlets" : 11,
					"id" : "obj-26",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "videoplane/texture/scale",
					"text" : "jcom.parameter videoplane/texture/scale @type msg_list @description \"Texture scale (x, y coordinates).\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 560.0, 340.0, 281.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-27",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ScaleX",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 340.0, 64.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Arial",
					"numinlets" : 11,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 362.0, 144.0, 17.0 ],
					"numoutlets" : 11,
					"id" : "obj-29",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "videoplane/texture/offset",
					"text" : "jcom.parameter videoplane/texture/offset @type msg_list @description \"Texture offset (x, y coordinates).\"",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 560.0, 396.0, 285.0, 27.0 ],
					"numoutlets" : 3,
					"id" : "obj-30",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar OffsetX",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 396.0, 68.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 2",
					"fontname" : "Arial",
					"numinlets" : 11,
					"fontsize" : 9.0,
					"patching_rect" : [ 412.0, 418.0, 144.0, 17.0 ],
					"numoutlets" : 11,
					"id" : "obj-32",
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "color",
					"fontname" : "Arial",
					"presentation_rect" : [ 60.0, 97.0, 39.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 60.0, 97.0, 39.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-33",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "grid",
					"fontname" : "Arial",
					"presentation_rect" : [ 60.0, 78.0, 39.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 60.0, 78.0, 39.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-34",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Gridmode",
					"labelclick" : 1,
					"arrowlink" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 6.0, 95.0, 51.0, 17.0 ],
					"numinlets" : 1,
					"items" : [ "quad", ",", "tri" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 6.0, 95.0, 51.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-35",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "interpolate",
					"fontname" : "Arial",
					"presentation_rect" : [ 21.0, 59.0, 75.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 21.0, 59.0, 75.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-36",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Interpolate",
					"presentation_rect" : [ 6.0, 57.0, 90.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 57.0, 90.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "displaylist",
					"fontname" : "Arial",
					"presentation_rect" : [ 21.0, 42.0, 75.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 21.0, 42.0, 75.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-38",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Display",
					"presentation_rect" : [ 6.0, 40.0, 90.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 40.0, 90.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-39",
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Nudge",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 169.0, 58.0, 40.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 169.0, 58.0, 40.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 1.0,
					"id" : "obj-40",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "nudge",
					"fontname" : "Arial",
					"presentation_rect" : [ 103.0, 59.0, 65.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 103.0, 59.0, 65.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-41",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "client_storage",
					"fontname" : "Arial",
					"presentation_rect" : [ 21.0, 26.0, 75.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 21.0, 26.0, 75.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-42",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Client",
					"presentation_rect" : [ 6.0, 24.0, 90.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 24.0, 90.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 1 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tex offset",
					"fontname" : "Arial",
					"presentation_rect" : [ 103.0, 104.0, 65.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 103.0, 104.0, 65.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-44",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tex scale",
					"fontname" : "Arial",
					"presentation_rect" : [ 103.0, 89.0, 65.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 103.0, 89.0, 65.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-45",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dim",
					"fontname" : "Arial",
					"presentation_rect" : [ 103.0, 74.0, 65.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 103.0, 74.0, 65.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-46",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ScaleY",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 211.0, 87.0, 40.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 211.0, 87.0, 40.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-47",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ScaleX",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 169.0, 88.0, 40.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 169.0, 88.0, 40.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-48",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "OffsetY",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 211.0, 103.0, 40.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 211.0, 103.0, 40.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-49",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "OffsetX",
					"fontname" : "Arial",
					"triangle" : 0,
					"presentation_rect" : [ 169.0, 103.0, 40.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontsize" : 9.0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 169.0, 103.0, 40.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-50",
					"outlettype" : [ "float", "bang" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Colormode",
					"labelclick" : 1,
					"arrowlink" : 1,
					"fontname" : "Arial",
					"presentation_rect" : [ 6.0, 76.0, 51.0, 17.0 ],
					"numinlets" : 1,
					"items" : [ "argb", ",", "uyvy" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 6.0, 76.0, 51.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"id" : "obj-51",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 183.0, 366.0, 60.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-52",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 44.0, 47.0, 296.0, 778.0 ],
						"bgcolor" : [ 0.431373, 0.431373, 0.431373, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 44.0, 47.0, 296.0, 778.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 110 110 110",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 4,
									"fontsize" : 9.0,
									"patching_rect" : [ 291.0, 164.0, 106.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.class.gl_group.inspect",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 7.0, 0.0, 268.0, 761.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"args" : [  ],
									"name" : "jcom.class.gl_group.inspect.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"patching_rect" : [ 291.0, 44.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 291.0, 89.0, 40.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "front" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 291.0, 69.0, 151.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Arial",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 291.0, 111.0, 61.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/videoplane/texture/scale 1. 1.",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 150.0, 500.0, 85.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-53",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 150.0, 477.0, 57.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-54",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 19.0, 379.0, 65.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-55",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 116.0, 200.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-56",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Apply incoming video matrix as texture to OpenGL videoplane.\"",
					"linecount" : 3,
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 10.0, 230.0, 258.0, 38.0 ],
					"numoutlets" : 2,
					"id" : "obj-57",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 184.0, 455.0, 76.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 169.0, 455.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-59",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.gl.videoplane%",
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 169.0, 412.0, 134.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-60",
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 19.0, 344.0, 72.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-61",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Arial",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 24.0, 197.0, 79.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 292.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-63",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 10.0, 197.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-64",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jcom.gui.1Uh.v.mxb",
					"numinlets" : 0,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 720.0, 405.0, 255.0, 120.0 ],
					"numoutlets" : 0,
					"id" : "obj-65",
					"args" : [  ],
					"name" : "jcom.gui"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "video",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_mute" : 1,
					"numinlets" : 1,
					"has_panel" : 1,
					"has_freeze" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"has_bypass" : 1,
					"id" : "obj-66",
					"outlettype" : [ "" ],
					"has_preview" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 10 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 125.5, 221.0, 19.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 222.0, 19.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-60", 1 ],
					"hidden" : 0,
					"midpoints" : [ 105.5, 398.0, 293.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 327.0, 408.0, 327.0, 408.0, 281.0, 421.5, 281.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 383.0, 408.0, 383.0, 408.0, 337.0, 421.5, 337.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 439.0, 408.0, 439.0, 408.0, 393.0, 421.5, 393.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 303.0, 434.0, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 359.0, 434.0, 359.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 415.0, 434.0, 415.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 434.0, 329.0, 406.0, 329.0, 406.0, 279.0, 491.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 434.0, 385.0, 405.0, 385.0, 405.0, 335.0, 491.5, 335.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 10 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 10 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
