{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 315.0, 44.0, 912.0, 733.0 ],
		"bglocked" : 0,
		"defrect" : [ 315.0, 44.0, 912.0, 733.0 ],
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
					"id" : "obj-64",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 0",
					"hidden" : 1,
					"patching_rect" : [ 20.0, 370.0, 71.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-1",
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
					"patching_rect" : [ 20.0, 326.0, 58.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
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
					"patching_rect" : [ 20.0, 349.0, 50.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
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
					"patching_rect" : [ 130.0, 20.0, 59.0, 43.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"hidden" : 1,
					"patching_rect" : [ 100.0, 343.0, 86.0, 18.0 ],
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
					"text" : "pcontrol",
					"hidden" : 1,
					"patching_rect" : [ 100.0, 369.0, 49.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"hidden" : 1,
					"patching_rect" : [ 168.0, 417.0, 52.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 243.0, 273.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"patching_rect" : [ 170.0, 274.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUTs",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 185.0, 274.0, 65.0, 30.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 2",
					"hidden" : 1,
					"patching_rect" : [ 170.0, 305.0, 83.0, 18.0 ],
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"hidden" : 1,
					"patching_rect" : [ 103.0, 158.0, 193.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-12",
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
					"varname" : "key/blue",
					"text" : "jcom.parameter key/blue @repetitions 0 @type msg_float @range/bounds 0. 1. @description \"blue level of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 484.0, 592.0, 332.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-13",
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
					"patching_rect" : [ 484.0, 564.0, 41.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-14",
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
					"patching_rect" : [ 484.0, 508.0, 339.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-15",
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
					"patching_rect" : [ 484.0, 486.0, 42.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-16",
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
					"patching_rect" : [ 484.0, 433.0, 327.0, 30.0 ],
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
					"text" : "pvar R",
					"hidden" : 1,
					"patching_rect" : [ 484.0, 405.0, 41.0, 18.0 ],
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
					"text" : "pvar B",
					"hidden" : 1,
					"patching_rect" : [ 278.0, 561.0, 41.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-19",
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
					"patching_rect" : [ 237.0, 561.0, 42.0, 18.0 ],
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
					"text" : "pvar R",
					"hidden" : 1,
					"patching_rect" : [ 196.0, 561.0, 41.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-21",
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
					"patching_rect" : [ 196.0, 487.0, 58.0, 18.0 ],
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
					"text" : "unpack 0. 0. 0.",
					"hidden" : 1,
					"patching_rect" : [ 196.0, 534.0, 93.0, 18.0 ],
					"outlettype" : [ "float", "float", "float" ],
					"id" : "obj-23",
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
					"patching_rect" : [ 196.0, 511.0, 82.0, 18.0 ],
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
					"maxclass" : "flonum",
					"varname" : "minkey",
					"patching_rect" : [ 69.0, 57.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-25",
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
					"maxclass" : "toggle",
					"varname" : "alphaignore",
					"patching_rect" : [ 70.0, 94.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "B",
					"patching_rect" : [ 228.0, 72.0, 28.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-27",
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
					"patching_rect" : [ 183.0, 72.0, 29.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-28",
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
					"patching_rect" : [ 141.0, 72.0, 29.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-29",
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
					"patching_rect" : [ 216.0, 74.0, 17.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-30",
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
					"patching_rect" : [ 172.0, 74.0, 17.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-31",
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
					"patching_rect" : [ 128.0, 74.0, 17.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-32",
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
					"text" : "Alpha :",
					"patching_rect" : [ 1.0, 94.0, 65.0, 18.0 ],
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
					"text" : "Maximum :",
					"patching_rect" : [ 2.0, 76.0, 65.0, 18.0 ],
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
					"maxclass" : "flonum",
					"varname" : "maxkey",
					"patching_rect" : [ 69.0, 75.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-35",
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
					"text" : "Minimum :",
					"patching_rect" : [ 1.0, 59.0, 65.0, 18.0 ],
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
					"text" : "Fade :",
					"patching_rect" : [ 1.0, 42.0, 65.0, 18.0 ],
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
					"maxclass" : "flonum",
					"varname" : "fade",
					"patching_rect" : [ 68.0, 41.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-38",
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
					"maxclass" : "newobj",
					"text" : "pvar alphaignore",
					"hidden" : 1,
					"patching_rect" : [ 484.0, 337.0, 92.0, 18.0 ],
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
					"varname" : "alpha",
					"text" : "jcom.parameter alpha @repetitions 0 @type msg_toggle @range/bounds 0. 1. @description \"alpha of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 484.0, 357.0, 311.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar maxkey",
					"hidden" : 1,
					"patching_rect" : [ 484.0, 270.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "maxkey[1]",
					"text" : "jcom.parameter maxkey @repetitions 0 @type msg_float @range/bounds 0. 10. @description \"maxkey of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 484.0, 290.0, 329.0, 30.0 ],
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
					"text" : "pvar minkey",
					"hidden" : 1,
					"patching_rect" : [ 484.0, 201.0, 70.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "minkey[1]",
					"text" : "jcom.parameter minkey @repetitions 0 @type msg_float @range/bounds 0. 10. @description \"minkey of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 484.0, 221.0, 327.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar fade",
					"hidden" : 1,
					"patching_rect" : [ 484.0, 132.0, 55.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "fade[1]",
					"text" : "jcom.parameter fade @repetitions 0 @type msg_float @range/bounds 0. 10. @description \"fade of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 484.0, 152.0, 312.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"varname" : "color",
					"patching_rect" : [ 126.0, 87.0, 129.0, 33.0 ],
					"outlettype" : [ "", "float" ],
					"id" : "obj-47",
					"compatibility" : 1,
					"numinlets" : 3,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "suckah",
					"patching_rect" : [ 129.0, 20.0, 62.0, 41.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-48",
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
					"patching_rect" : [ 360.0, 287.0, 68.0, 28.0 ],
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
					"maxclass" : "comment",
					"text" : "Tolerance :",
					"patching_rect" : [ 2.0, 25.0, 65.0, 18.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-50",
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
					"patching_rect" : [ 484.0, 62.0, 47.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-51",
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
					"text" : "jcom.parameter tolerance @repetitions 0 @type msg_float @range/bounds 0. 1. @description \"Tolerance of the chromakey\"",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 484.0, 84.0, 331.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-52",
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
					"patching_rect" : [ 114.0, 176.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-53",
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
					"text" : "jcom.hub jmod.chromakey% @size 2U-half @module_type video @algorithm_type jitter @description \"Simple 2-source chromakey : Keying based on chromatic distance\"",
					"linecount" : 3,
					"hidden" : 1,
					"patching_rect" : [ 8.0, 204.0, 326.0, 42.0 ],
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
					"text" : "VIDEO OUTPUT",
					"hidden" : 1,
					"patching_rect" : [ 183.0, 438.0, 85.0, 18.0 ],
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
					"patching_rect" : [ 168.0, 438.0, 13.0, 13.0 ],
					"id" : "obj-56",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.chromakey%",
					"hidden" : 1,
					"patching_rect" : [ 168.0, 395.0, 109.0, 18.0 ],
					"outlettype" : [ "jit_matrix" ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"numinlets" : 3,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"hidden" : 1,
					"patching_rect" : [ 360.0, 252.0, 80.0, 28.0 ],
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
					"patching_rect" : [ 22.0, 173.0, 86.0, 18.0 ],
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
					"patching_rect" : [ 8.0, 260.0, 13.0, 13.0 ],
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
					"patching_rect" : [ 8.0, 173.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-61",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "tol",
					"patching_rect" : [ 69.0, 24.0, 35.0, 18.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-62",
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
					"id" : "obj-63",
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
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 493.5, 626.0, 473.0, 626.0, 473.0, 560.0, 493.5, 560.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 493.5, 548.0, 474.0, 548.0, 474.0, 482.0, 493.5, 482.0 ]
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
					"midpoints" : [ 493.5, 467.0, 473.0, 467.0, 473.0, 401.0, 493.5, 401.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [ 493.5, 390.0, 477.0, 390.0, 477.0, 332.0, 493.5, 332.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [ 493.5, 323.0, 477.0, 323.0, 477.0, 265.0, 493.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [ 493.5, 254.0, 477.0, 254.0, 477.0, 196.0, 493.5, 196.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [ 493.5, 185.0, 477.0, 185.0, 477.0, 127.0, 493.5, 127.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [ 493.5, 119.0, 477.0, 119.0, 477.0, 57.0, 493.5, 57.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-57", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [ 138.5, 85.0, 135.5, 85.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 2 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 1,
					"midpoints" : [ 177.0, 296.0, 81.5, 296.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 29.5, 393.0, 8.0, 393.0, 8.0, 316.0, 29.5, 316.0 ]
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
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [ 123.5, 195.0, 17.5, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [ 112.5, 195.0, 17.5, 195.0 ]
				}

			}
 ]
	}

}
