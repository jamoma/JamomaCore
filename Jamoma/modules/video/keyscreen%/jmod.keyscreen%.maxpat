{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 654.0, 154.0, 786.0, 727.0 ],
		"bglocked" : 0,
		"defrect" : [ 654.0, 154.0, 786.0, 727.0 ],
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
					"presentation_rect" : [ 235.0, 21.0, 60.0, 45.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 235.0, 20.0, 60.0, 45.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-68",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 138.0, 308.0, 86.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 139.0, 327.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to pick key color",
					"linecount" : 2,
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 292.0, 458.0, 70.0, 30.0 ],
					"numoutlets" : 0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 211.0, 477.0, 71.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar pik 2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 211.0, 433.0, 59.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl nth 4",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 211.0, 456.0, 50.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-6",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "pik",
					"presentation_rect" : [ 131.0, 22.0, 59.0, 43.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 131.0, 17.0, 59.0, 43.0 ],
					"depthbuffer" : 0,
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 103.0, 155.0, 193.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 206.0, 378.0, 57.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 3",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"fontsize" : 9.873845,
					"patching_rect" : [ 238.0, 283.0, 139.0, 18.0 ],
					"numoutlets" : 5,
					"id" : "obj-10",
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar key",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 272.0, 415.0, 52.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "mask",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 69.0, 81.5, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 481.0, 285.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"id" : "obj-12",
					"outlettype" : [ "int", "bang" ],
					"mouseup" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "target",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 69.0, 61.5, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 483.0, 216.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"id" : "obj-13",
					"outlettype" : [ "int", "bang" ],
					"mouseup" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "key",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 69.0, 41.5, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 484.0, 127.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"id" : "obj-14",
					"outlettype" : [ "int", "bang" ],
					"mouseup" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "switch 3",
					"fontname" : "Verdana",
					"numinlets" : 4,
					"fontsize" : 9.873845,
					"patching_rect" : [ 272.0, 434.0, 106.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 368.0, 264.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key/blue",
					"text" : "jcom.parameter key/blue @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @description \"blue level of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 609.0, 332.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-17",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key/green",
					"text" : "jcom.parameter key/green @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @description \"green level of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 531.0, 339.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key/red",
					"text" : "jcom.parameter key/red @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @description \"red level of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 450.0, 327.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-21",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar B",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 98.0, 481.0, 41.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar G",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 57.0, 481.0, 42.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar R",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 481.0, 41.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar color",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 407.0, 58.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0. 0.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 454.0, 93.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-27",
					"outlettype" : [ "float", "float", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "vexpr $i1/255.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 431.0, 82.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "alphaignore",
					"presentation_rect" : [ 70.0, 102.5, 15.0, 15.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 485.0, 353.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "B",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 229.0, 68.0, 27.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 483.0, 588.0, 27.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"id" : "obj-30",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "G",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 188.0, 68.0, 29.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 483.0, 508.0, 29.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"id" : "obj-31",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "R",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 145.0, 68.0, 31.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 483.0, 429.0, 31.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"id" : "obj-32",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "B",
					"fontname" : "Verdana",
					"presentation_rect" : [ 215.5, 68.0, 17.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 217.0, 70.0, 17.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "G",
					"fontname" : "Verdana",
					"presentation_rect" : [ 173.5, 68.0, 17.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 176.0, 70.0, 17.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "R",
					"fontname" : "Verdana",
					"presentation_rect" : [ 131.453079, 68.0, 17.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 132.0, 70.0, 17.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mode :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 101.0, 65.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 0.0, 91.0, 65.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mask :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 82.0, 65.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 73.0, 65.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Target :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 62.0, 65.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 0.0, 56.0, 65.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Key :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 41.0, 65.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 0.0, 39.0, 65.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @repetitions/allow 0 @type msg_toggle @range/bounds 0 1 @description \"keying mode\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 374.0, 312.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-41",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mask[1]",
					"text" : "jcom.parameter mask @repetitions/allow 0 @type msg_int @range/bounds 1 3 @range/clipmode both @description \"input used as mask\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 307.0, 384.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-43",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "target[1]",
					"text" : "jcom.parameter target @repetitions/allow 0 @type msg_int @range/bounds 1 3 @range/clipmode both @description \"input used as target\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 482.0, 238.0, 387.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-45",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "key[1]",
					"text" : "jcom.parameter key @repetitions/allow 0 @type msg_int @range/bounds 1 3 @range/clipmode both @description \"input used as key\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 483.0, 149.0, 253.0, 42.0 ],
					"numoutlets" : 3,
					"id" : "obj-47",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 301.0, 263.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-48",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"varname" : "color",
					"presentation_rect" : [ 132.0, 88.0, 123.0, 34.0 ],
					"numinlets" : 3,
					"compatibility" : 1,
					"patching_rect" : [ 132.0, 84.0, 123.0, 34.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-49",
					"outlettype" : [ "", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "suckah",
					"presentation_rect" : [ 130.0, 21.0, 62.0, 45.077705 ],
					"numinlets" : 1,
					"compatibility" : 1,
					"patching_rect" : [ 130.0, 19.0, 62.0, 41.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-50",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 34.0, 306.0, 68.0, 28.0 ],
					"numoutlets" : 1,
					"id" : "obj-51",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tolerance :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 21.0, 65.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 1.0, 22.0, 65.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "tolerance",
					"text" : "jcom.parameter tolerance @repetitions/allow 0 @type msg_float @range/bounds 0. 1. @range/clipmode both @description \"Tolerance of the chromakey\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 483.0, 81.0, 412.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-54",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 113.0, 173.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-55",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type video @algorithm_type jitter @description \"Choke chromakey 3 sources\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 7.0, 195.0, 302.0, 30.0 ],
					"numoutlets" : 2,
					"id" : "obj-56",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 221.0, 399.0, 85.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 206.0, 399.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-58",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 238.0, 264.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-59",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUTs",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 242.0, 249.0, 80.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.keyscreen%",
					"fontname" : "Verdana",
					"numinlets" : 4,
					"fontsize" : 9.873845,
					"patching_rect" : [ 206.0, 358.0, 106.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-61",
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 34.0, 271.0, 80.0, 28.0 ],
					"numoutlets" : 1,
					"id" : "obj-62",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 21.0, 170.0, 86.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 257.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-64",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 7.0, 170.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-65",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "tol",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 69.0, 21.5, 35.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 483.0, 60.0, 35.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triscale" : 0.9,
					"id" : "obj-66",
					"outlettype" : [ "float", "bang" ]
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
					"has_freeze" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"has_bypass" : 1,
					"id" : "obj-67",
					"outlettype" : [ "" ],
					"has_preview" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 122.5, 192.0, 16.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.5, 192.0, 16.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-15", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-61", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [ 281.5, 458.0, 272.5, 458.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-61", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 220.5, 500.0, 199.0, 500.0, 199.0, 423.0, 220.5, 423.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 3 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 337.5, 304.0, 147.5, 304.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 139.5, 82.0, 141.5, 82.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 492.5, 111.0, 468.0, 111.0, 468.0, 57.0, 492.5, 57.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 492.5, 192.0, 468.0, 192.0, 468.0, 123.0, 493.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 270.0, 468.0, 270.0, 468.0, 213.0, 492.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 339.0, 468.0, 339.0, 468.0, 282.0, 490.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 405.0, 468.0, 405.0, 468.0, 348.0, 494.0, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 480.0, 468.0, 480.0, 468.0, 426.0, 492.5, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 561.0, 468.0, 561.0, 468.0, 504.0, 492.5, 504.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 639.0, 468.0, 639.0, 468.0, 585.0, 492.5, 585.0 ]
				}

			}
 ]
	}

}
