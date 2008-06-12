{
	"patcher" : 	{
		"rect" : [ 25.0, 89.0, 885.0, 489.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 89.0, 885.0, 489.0 ],
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
					"maxclass" : "comment",
					"text" : "@description",
					"patching_rect" : [ 481.0, 448.0, 75.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-43",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions",
					"patching_rect" : [ 481.0, 403.0, 73.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-44",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp",
					"patching_rect" : [ 481.0, 388.0, 46.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-45",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@clipmode",
					"patching_rect" : [ 481.0, 433.0, 65.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-46",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range",
					"patching_rect" : [ 481.0, 418.0, 49.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-47",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"patching_rect" : [ 481.0, 373.0, 42.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-48",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 200.0, 238.0, 57.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"patching_rect" : [ 200.0, 216.0, 93.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA",
					"patching_rect" : [ 77.0, 22.0, 35.0, 17.0 ],
					"transparent" : 1,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
					"linecount" : 3,
					"patching_rect" : [ 479.0, 312.0, 365.0, 42.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.return:",
					"patching_rect" : [ 457.0, 292.0, 374.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"patching_rect" : [ 474.0, 257.0, 337.0, 30.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message:",
					"patching_rect" : [ 455.0, 242.0, 361.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"patching_rect" : [ 474.0, 188.0, 358.0, 30.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter:",
					"patching_rect" : [ 455.0, 173.0, 289.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for html autodoc of module",
					"patching_rect" : [ 560.0, 448.0, 298.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)\/0 --- 1 means that repetitions are allowed",
					"patching_rect" : [ 560.0, 403.0, 323.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none\/linear\/linear.q (none)",
					"patching_rect" : [ 560.0, 388.0, 303.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both (default)",
					"patching_rect" : [ 560.0, 433.0, 302.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 560.0, 418.0, 241.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default), msg_int, msg_float, menu, toggle",
					"patching_rect" : [ 560.0, 373.0, 301.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"patching_rect" : [ 458.0, 358.0, 291.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 0,
					"textcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 1 default, \/preset\/write",
					"patching_rect" : [ 105.0, 71.0, 243.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return return_c @range/bounds 0. 1.",
					"patching_rect" : [ 39.0, 397.0, 209.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"id" : "obj-24",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"patching_rect" : [ 155.0, 305.0, 71.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"id" : "obj-25",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"patching_rect" : [ 155.0, 193.0, 64.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-26",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"patching_rect" : [ 9.0, 24.0, 77.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-27",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ParameterA",
					"patching_rect" : [ 477.0, 51.0, 105.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hue_angle",
					"text" : "jcom.parameter hue_angle @repetitions 0 @type msg_float @range/bounds 0. 360. @range/clipmode none @description \"Document what this parameter do...\"",
					"linecount" : 2,
					"patching_rect" : [ 477.0, 71.0, 388.0, 30.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-29",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"patching_rect" : [ 125.0, 90.0, 137.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-30",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jmod.hub",
					"text" : "jcom.hub jmod.video.template @size 1U-half @module_type video @algorithm_type jitter @description \"This module doesn't do much yet.\"",
					"linecount" : 2,
					"patching_rect" : [ 9.0, 116.0, 417.0, 30.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-31",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO OUTPUT",
					"patching_rect" : [ 172.0, 338.0, 85.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-32",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 157.0, 338.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-33",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 157.0, 172.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-34",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "VIDEO INPUT",
					"patching_rect" : [ 172.0, 172.0, 75.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.template.video%.mxt",
					"patching_rect" : [ 39.0, 278.0, 159.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-36",
					"numoutlets" : 2,
					"outlettype" : [ "", "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"patching_rect" : [ 264.0, 90.0, 41.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-37",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"patching_rect" : [ 26.0, 88.0, 97.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-38",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 11.0, 173.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-39",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 11.0, 86.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-40",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- substitute for desired algorithm",
					"patching_rect" : [ 167.0, 280.0, 218.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-41",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.gui.1Uh.v.mxb",
					"patching_rect" : [ 0.0, 0.0, 256.0, 60.0 ],
					"name" : "jcom.gui.mxt",
					"numinlets" : 0,
					"id" : "obj-42",
					"numoutlets" : 0,
					"args" : [  ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 111.0, 18.5, 111.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 273.5, 111.0, 18.5, 111.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 134.5, 111.0, 18.5, 111.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 263.0, 48.5, 263.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 283.5, 263.0, 48.5, 263.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 486.5, 103.0, 470.0, 103.0, 470.0, 46.0, 486.5, 46.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
