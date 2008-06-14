{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 30.0, 50.0, 912.0, 733.0 ],
		"bglocked" : 0,
		"defrect" : [ 30.0, 50.0, 912.0, 733.0 ],
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
					"maxclass" : "jit.pwindow",
					"presentation_rect" : [ 230.0, 29.0, 60.0, 45.0 ],
					"id" : "obj-64",
					"numinlets" : 1,
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 0",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 2,
					"patching_rect" : [ 111.0, 379.0, 71.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl nth 4",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 2,
					"patching_rect" : [ 111.0, 358.0, 50.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"patching_rect" : [ 117.0, 429.0, 86.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"patching_rect" : [ 117.0, 455.0, 49.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"patching_rect" : [ 185.0, 503.0, 52.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-8",
					"numinlets" : 0,
					"patching_rect" : [ 260.0, 359.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-9",
					"numinlets" : 0,
					"patching_rect" : [ 187.0, 360.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUTs",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 202.0, 360.0, 65.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 2",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 2,
					"patching_rect" : [ 187.0, 391.0, 83.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-12",
					"numinlets" : 2,
					"patching_rect" : [ 103.0, 172.0, 193.0, 16.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key/blue",
					"text" : "jcom.parameter key/blue @repetitions 0 @type msg_float @range/bounds 0. 1. @description \"blue level of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 566.0, 592.0, 332.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key/green",
					"text" : "jcom.parameter key/green @repetitions 0 @type msg_float @range/bounds 0. 1. @description \"green level of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 566.0, 508.0, 339.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key/red",
					"text" : "jcom.parameter key/red @repetitions 0 @type msg_float @range/bounds 0. 1. @description \"red level of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"patching_rect" : [ 566.0, 433.0, 327.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0. 0.",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"patching_rect" : [ 449.0, 399.0, 93.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "minkey",
					"fontname" : "Verdana",
					"presentation_rect" : [ 78.0, 67.0, 35.0, 18.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 515.0, 231.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"presentation" : 1,
					"bordercolor" : [ 0.94902, 0.94902, 0.94902, 0.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "alphaignore",
					"bgcolor" : [ 1.0, 1.0, 0.898039, 0.0 ],
					"presentation_rect" : [ 78.0, 108.0, 15.0, 15.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 517.0, 361.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "B",
					"fontname" : "Verdana",
					"presentation_rect" : [ 263.0, 82.0, 33.0, 18.0 ],
					"id" : "obj-27",
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 523.0, 593.0, 28.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"presentation" : 1,
					"textcolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "G",
					"fontname" : "Verdana",
					"presentation_rect" : [ 202.0, 82.0, 34.0, 18.0 ],
					"id" : "obj-28",
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 486.0, 516.0, 29.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"presentation" : 1,
					"textcolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "R",
					"fontname" : "Verdana",
					"presentation_rect" : [ 152.0, 82.0, 34.0, 18.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 449.0, 435.0, 29.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"presentation" : 1,
					"textcolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "B",
					"fontname" : "Verdana",
					"presentation_rect" : [ 247.0, 81.0, 17.0, 18.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 510.0, 595.0, 17.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "G",
					"fontname" : "Verdana",
					"presentation_rect" : [ 186.0, 82.0, 17.0, 18.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 473.0, 518.0, 17.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "R",
					"fontname" : "Verdana",
					"presentation_rect" : [ 133.0, 82.0, 17.0, 18.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 436.0, 437.0, 17.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Alpha :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 11.0, 108.0, 65.0, 18.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 449.0, 361.0, 65.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Maximum :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 11.0, 88.0, 65.0, 18.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 450.0, 297.0, 65.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "maxkey",
					"fontname" : "Verdana",
					"presentation_rect" : [ 78.0, 87.0, 35.0, 18.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 517.0, 296.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Minimum :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 11.0, 68.0, 65.0, 18.0 ],
					"id" : "obj-36",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 447.0, 232.0, 65.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Fade :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 11.0, 48.0, 65.0, 18.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 445.0, 164.0, 65.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "fade",
					"fontname" : "Verdana",
					"presentation_rect" : [ 78.0, 47.0, 35.0, 18.0 ],
					"id" : "obj-38",
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 513.0, 163.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"presentation" : 1,
					"bordercolor" : [ 0.94902, 0.94902, 0.94902, 0.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "alpha",
					"text" : "jcom.parameter alpha @repetitions 0 @type msg_toggle @range/bounds 0. 1. @description \"alpha of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-40",
					"numinlets" : 1,
					"patching_rect" : [ 566.0, 357.0, 312.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "maxkey[1]",
					"text" : "jcom.parameter maxkey @repetitions 0 @type msg_float @range/bounds 0. 10. @description \"maxkey of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-42",
					"numinlets" : 1,
					"patching_rect" : [ 566.0, 290.0, 330.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "minkey[1]",
					"text" : "jcom.parameter minkey @repetitions 0 @type msg_float @range/bounds 0. 10. @description \"minkey of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-44",
					"numinlets" : 1,
					"patching_rect" : [ 566.0, 221.0, 327.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fade[1]",
					"text" : "jcom.parameter fade @repetitions 0 @type msg_float @range/bounds 0. 10. @description \"fade of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-46",
					"numinlets" : 1,
					"patching_rect" : [ 566.0, 152.0, 312.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"varname" : "color",
					"presentation_rect" : [ 131.0, 99.0, 161.0, 33.0 ],
					"id" : "obj-47",
					"numinlets" : 3,
					"patching_rect" : [ 386.0, 367.0, 32.0, 24.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tolerance :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 11.0, 28.0, 65.0, 18.0 ],
					"id" : "obj-50",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 449.0, 93.0, 65.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tolerance",
					"text" : "jcom.parameter tolerance @repetitions 0 @type msg_float @range/bounds 0. 1. @description \"Tolerance of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-52",
					"numinlets" : 1,
					"patching_rect" : [ 566.0, 84.0, 333.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"id" : "obj-53",
					"numinlets" : 2,
					"patching_rect" : [ 114.0, 190.0, 135.0, 16.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.chromakey% @size 2U-half @module_type video @algorithm_type jitter @description \"Simple 2-source chromakey : Keying based on chromatic distance\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-54",
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 218.0, 326.0, 42.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"id" : "obj-55",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 200.0, 524.0, 85.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-56",
					"numinlets" : 1,
					"patching_rect" : [ 185.0, 524.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.chromakey%",
					"fontname" : "Verdana",
					"id" : "obj-57",
					"numinlets" : 3,
					"patching_rect" : [ 185.0, 481.0, 109.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"id" : "obj-59",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 22.0, 187.0, 86.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-60",
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 274.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-61",
					"numinlets" : 0,
					"patching_rect" : [ 8.0, 187.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "tol",
					"fontname" : "Verdana",
					"presentation_rect" : [ 78.0, 27.0, 35.0, 18.0 ],
					"id" : "obj-62",
					"numinlets" : 1,
					"triscale" : 0.9,
					"patching_rect" : [ 516.0, 92.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "pik",
					"presentation_rect" : [ 130.0, 28.0, 60.0, 45.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 105.0, 331.0, 25.0, 22.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "suckah",
					"presentation_rect" : [ 130.0, 29.0, 57.0, 42.0 ],
					"id" : "obj-48",
					"numinlets" : 1,
					"patching_rect" : [ 103.0, 332.0, 28.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"compatibility" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_freeze" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-63",
					"has_bypass" : 1,
					"has_mute" : 1,
					"numinlets" : 1,
					"prefix" : "video",
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"has_preview" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.5, 209.0, 17.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [ 123.5, 209.0, 17.5, 209.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [ 194.0, 377.0, 172.5, 377.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.5, 356.0, 395.5, 356.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-57", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 120.5, 404.0, 98.0, 404.0, 98.0, 322.0, 114.5, 322.0 ]
				}

			}
 ]
	}

}
