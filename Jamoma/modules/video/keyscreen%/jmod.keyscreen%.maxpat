{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 130.0, 44.0, 786.0, 727.0 ],
		"bglocked" : 0,
		"defrect" : [ 130.0, 44.0, 786.0, 727.0 ],
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
					"id" : "obj-68",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"hidden" : 1,
					"patching_rect" : [ 138.0, 308.0, 86.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"patching_rect" : [ 139.0, 327.0, 49.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to pick key color",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 292.0, 458.0, 70.0, 30.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 0",
					"hidden" : 1,
					"patching_rect" : [ 211.0, 477.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar pik 2",
					"hidden" : 1,
					"patching_rect" : [ 211.0, 433.0, 58.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl nth 4",
					"hidden" : 1,
					"patching_rect" : [ 211.0, 456.0, 50.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "pik",
					"patching_rect" : [ 131.0, 17.0, 59.0, 43.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"hidden" : 1,
					"patching_rect" : [ 103.0, 155.0, 193.0, 16.0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"hidden" : 1,
					"patching_rect" : [ 206.0, 378.0, 57.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 3",
					"hidden" : 1,
					"patching_rect" : [ 238.0, 283.0, 139.0, 18.0 ],
					"outlettype" : [ "", "", "", "", "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 3,
					"numoutlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar key",
					"hidden" : 1,
					"patching_rect" : [ 272.0, 415.0, 51.0, 18.0 ],
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
					"maxclass" : "number",
					"varname" : "mask",
					"patching_rect" : [ 66.0, 73.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"mouseup" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "target",
					"patching_rect" : [ 67.0, 56.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"mouseup" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "key",
					"patching_rect" : [ 67.0, 38.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"mouseup" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "switch 3",
					"hidden" : 1,
					"patching_rect" : [ 272.0, 434.0, 106.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 4,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 368.0, 264.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key/blue",
					"text" : "jcom.parameter key/blue @repetitions 0 @type msg_float @range/bounds 0. 1. @description \"blue level of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 482.0, 609.0, 332.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar B",
					"hidden" : 1,
					"patching_rect" : [ 482.0, 581.0, 41.0, 18.0 ],
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
					"varname" : "key/green",
					"text" : "jcom.parameter key/green @repetitions 0 @type msg_float @range/bounds 0. 1. @description \"green level of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 482.0, 531.0, 339.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar G",
					"hidden" : 1,
					"patching_rect" : [ 482.0, 503.0, 42.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key/red",
					"text" : "jcom.parameter key/red @repetitions 0 @type msg_float @range/bounds 0. 1. @description \"red level of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 482.0, 450.0, 327.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar R",
					"hidden" : 1,
					"patching_rect" : [ 482.0, 422.0, 41.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar B",
					"hidden" : 1,
					"patching_rect" : [ 98.0, 481.0, 41.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar G",
					"hidden" : 1,
					"patching_rect" : [ 57.0, 481.0, 42.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar R",
					"hidden" : 1,
					"patching_rect" : [ 16.0, 481.0, 41.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar color",
					"hidden" : 1,
					"patching_rect" : [ 16.0, 407.0, 58.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0. 0.",
					"hidden" : 1,
					"patching_rect" : [ 16.0, 454.0, 93.0, 18.0 ],
					"outlettype" : [ "float", "float", "float" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "vexpr $i1/255.",
					"hidden" : 1,
					"patching_rect" : [ 16.0, 431.0, 82.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "alphaignore",
					"patching_rect" : [ 69.0, 91.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "B",
					"patching_rect" : [ 229.0, 68.0, 27.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "G",
					"patching_rect" : [ 188.0, 68.0, 29.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "R",
					"patching_rect" : [ 145.0, 68.0, 31.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "B",
					"patching_rect" : [ 217.0, 70.0, 17.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-33",
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
					"text" : "G",
					"patching_rect" : [ 176.0, 70.0, 17.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-34",
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
					"text" : "R",
					"patching_rect" : [ 132.0, 70.0, 17.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-35",
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
					"text" : "Mode :",
					"patching_rect" : [ 0.0, 91.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-36",
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
					"text" : "Mask :",
					"patching_rect" : [ 1.0, 73.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-37",
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
					"text" : "Target :",
					"patching_rect" : [ 0.0, 56.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-38",
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
					"text" : "Key :",
					"patching_rect" : [ 0.0, 39.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar alphaignore",
					"hidden" : 1,
					"patching_rect" : [ 482.0, 354.0, 92.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @repetitions 0 @type msg_toggle @range/bounds 0 1 @description \"keying mode\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 482.0, 374.0, 299.0, 30.0 ],
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
					"text" : "pvar mask",
					"hidden" : 1,
					"patching_rect" : [ 482.0, 285.0, 60.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mask[1]",
					"text" : "jcom.parameter mask @repetitions 0 @type msg_int @range/bounds 1 3 @range/clipmode both @description \"input used as mask\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 482.0, 307.0, 358.0, 30.0 ],
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
					"maxclass" : "newobj",
					"text" : "pvar target",
					"hidden" : 1,
					"patching_rect" : [ 482.0, 218.0, 64.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "target[1]",
					"text" : "jcom.parameter target @repetitions 0 @type msg_int @range/bounds 1 3 @range/clipmode both @description \"input used as target\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 482.0, 238.0, 361.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar key",
					"hidden" : 1,
					"patching_rect" : [ 483.0, 129.0, 51.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key[1]",
					"text" : "jcom.parameter key @repetitions 0 @type msg_int @range/bounds 1 3 @range/clipmode both @description \"input used as key\"",
					"linecount" : 3,
					"hidden" : 1,
					"patching_rect" : [ 483.0, 149.0, 249.0, 42.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-47",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 301.0, 263.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"varname" : "color",
					"patching_rect" : [ 132.0, 84.0, 123.0, 34.0 ],
					"outlettype" : [ "", "float" ],
					"id" : "obj-49",
					"compatibility" : 1,
					"numinlets" : 3,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "suckah",
					"patching_rect" : [ 130.0, 19.0, 62.0, 41.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"compatibility" : 1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 34.0, 306.0, 68.0, 28.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tolerance :",
					"patching_rect" : [ 1.0, 22.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-52",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar tol",
					"hidden" : 1,
					"patching_rect" : [ 483.0, 59.0, 47.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tolerance",
					"text" : "jcom.parameter tolerance @repetitions 0 @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"Tolerance of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 483.0, 81.0, 386.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"hidden" : 1,
					"patching_rect" : [ 113.0, 173.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.keyscreen% @size 2U-half @module_type video @algorithm_type jitter @description \"Choke chromakey 3 sources\"",
					"linecount" : 3,
					"hidden" : 1,
					"patching_rect" : [ 7.0, 195.0, 278.0, 42.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"hidden" : 1,
					"patching_rect" : [ 221.0, 399.0, 85.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-57",
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
					"patching_rect" : [ 206.0, 399.0, 13.0, 13.0 ],
					"id" : "obj-58",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 238.0, 264.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-59",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUTs",
					"hidden" : 1,
					"patching_rect" : [ 242.0, 249.0, 80.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-60",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.keyscreen%",
					"hidden" : 1,
					"patching_rect" : [ 206.0, 358.0, 106.0, 18.0 ],
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-61",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 4,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 34.0, 271.0, 80.0, 28.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-62",
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
					"patching_rect" : [ 21.0, 170.0, 86.0, 18.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-63",
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
					"patching_rect" : [ 7.0, 257.0, 13.0, 13.0 ],
					"id" : "obj-64",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 7.0, 170.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-65",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "tol",
					"patching_rect" : [ 68.0, 21.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-66",
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-67",
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
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"midpoints" : [ 492.5, 193.0, 476.0, 193.0, 476.0, 124.0, 492.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [ 492.5, 116.0, 476.0, 116.0, 476.0, 54.0, 492.5, 54.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 491.5, 643.0, 471.0, 643.0, 471.0, 577.0, 491.5, 577.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 491.5, 565.0, 472.0, 565.0, 472.0, 499.0, 491.5, 499.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 491.5, 484.0, 472.0, 484.0, 472.0, 418.0, 491.5, 418.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 491.5, 407.0, 475.0, 407.0, 475.0, 349.0, 491.5, 349.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 491.5, 340.0, 475.0, 340.0, 475.0, 282.0, 491.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [ 491.5, 271.0, 475.0, 271.0, 475.0, 213.0, 491.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-61", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 1,
					"midpoints" : [ 281.5, 458.0, 272.5, 458.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-61", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 220.5, 500.0, 199.0, 500.0, 199.0, 423.0, 220.5, 423.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 3 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 337.5, 304.0, 147.5, 304.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [ 139.5, 82.0, 141.5, 82.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [ 122.5, 192.0, 16.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [ 112.5, 192.0, 16.5, 192.0 ]
				}

			}
 ]
	}

}
