{
	"patcher" : 	{
		"rect" : [ 23.0, 141.0, 889.0, 590.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 23.0, 141.0, 889.0, 590.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 378.0, 307.0, 57.0, 18.0 ],
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
					"text" : "jcom.algorithm_control~.maxpat",
					"patching_rect" : [ 245.0, 283.0, 182.0, 18.0 ],
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
					"maxclass" : "comment",
					"text" : "If you need to return messages from your algorithm to the rest of the world. you can specify type, range... etc as in jcom.parameter or jcom.message",
					"linecount" : 3,
					"patching_rect" : [ 484.0, 336.0, 365.0, 42.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.return:",
					"patching_rect" : [ 462.0, 316.0, 374.0, 18.0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.return return_c @range/bounds 0. 1.",
					"patching_rect" : [ 245.0, 378.0, 209.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"id" : "obj-5",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 1 default, \/preset\/write",
					"patching_rect" : [ 120.0, 79.0, 243.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"patching_rect" : [ 128.0, 379.0, 84.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-7",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"patching_rect" : [ 130.0, 258.0, 134.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-8",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"patching_rect" : [ 128.0, 101.0, 155.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"patching_rect" : [ 479.0, 281.0, 337.0, 30.0 ],
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
					"text" : "jcom.message:",
					"patching_rect" : [ 460.0, 266.0, 361.0, 18.0 ],
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
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"patching_rect" : [ 479.0, 212.0, 358.0, 30.0 ],
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
					"text" : "jcom.parameter:",
					"patching_rect" : [ 460.0, 197.0, 289.0, 18.0 ],
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
					"text" : "for html autodoc of module",
					"patching_rect" : [ 565.0, 472.0, 298.0, 18.0 ],
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
					"text" : "1 (default)\/0 --- 1 means that repetitions are allowed",
					"patching_rect" : [ 565.0, 427.0, 323.0, 18.0 ],
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
					"text" : "none\/linear\/linear.q (none)",
					"patching_rect" : [ 565.0, 412.0, 303.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both (default)",
					"patching_rect" : [ 565.0, 457.0, 302.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 565.0, 442.0, 241.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-18",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default), msg_int, msg_float, menu, toggle",
					"patching_rect" : [ 565.0, 397.0, 301.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"patching_rect" : [ 482.0, 472.0, 75.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions",
					"patching_rect" : [ 482.0, 427.0, 73.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-21",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp",
					"patching_rect" : [ 482.0, 412.0, 46.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@clipmode",
					"patching_rect" : [ 482.0, 457.0, 65.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range",
					"patching_rect" : [ 482.0, 442.0, 49.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-24",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"patching_rect" : [ 482.0, 397.0, 42.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"patching_rect" : [ 463.0, 382.0, 291.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-26",
					"numoutlets" : 0,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"patching_rect" : [ 98.0, 178.0, 79.0, 28.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-27",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ParameterB",
					"patching_rect" : [ 467.0, 114.0, 105.0, 18.0 ],
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
					"text" : "pvar ParameterA",
					"patching_rect" : [ 467.0, 49.0, 106.0, 18.0 ],
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
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.audiotemplate~ @size 1U-half @module_type audio @description \"This module doesn't do much yet\"",
					"linecount" : 2,
					"patching_rect" : [ 12.0, 134.0, 344.0, 30.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-30",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"patching_rect" : [ 29.0, 101.0, 97.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-31",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 15.0, 101.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-32",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"patching_rect" : [ 259.0, 101.0, 41.0, 16.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-33",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 133.0, 231.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-34",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 131.0, 408.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "ParameterA",
					"patching_rect" : [ 89.0, 25.0, 40.0, 17.0 ],
					"transparent" : 1,
					"maximum" : 1.0,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"minimum" : 0.0,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-36",
					"numoutlets" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "param_a",
					"text" : "jcom.parameter param_a @ramp linear",
					"patching_rect" : [ 467.0, 74.0, 229.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-37",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "param_b",
					"text" : "jcom.parameter param_b @ramp/drive scheduler @repetitions 0",
					"patching_rect" : [ 467.0, 136.0, 314.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-38",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 273.0, 228.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-39",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter B",
					"patching_rect" : [ 16.0, 44.0, 77.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-40",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "ParameterB",
					"patching_rect" : [ 89.0, 42.0, 35.0, 17.0 ],
					"transparent" : 1,
					"maximum" : 24,
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"minimum" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-41",
					"numoutlets" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter A",
					"patching_rect" : [ 16.0, 27.0, 77.0, 18.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-42",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.template.audio~.mxt",
					"patching_rect" : [ 71.0, 347.0, 136.0, 18.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-43",
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"patching_rect" : [ 159.0, 229.0, 105.0, 17.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-44",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 15.0, 177.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-45",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 195.0, 410.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-46",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"patching_rect" : [ 126.0, 427.0, 101.0, 17.0 ],
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-47",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.gui.1Uh.a.stereo.mxt",
					"patching_rect" : [ 0.0, 0.0, 256.0, 60.0 ],
					"name" : "jcom.gui.mxt",
					"numinlets" : 0,
					"id" : "obj-48",
					"numoutlets" : 0,
					"args" : [ "#0_" ],
					"frozen_box_attributes" : [ "args" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 129.5, 121.0, 21.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 137.5, 121.0, 21.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 268.5, 122.0, 21.5, 122.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 387.5, 335.0, 80.5, 335.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 335.0, 80.5, 335.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 280.0, 255.0, 147.0, 255.0, 139.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 417.5, 303.0, 387.5, 303.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 476.5, 96.0, 462.0, 96.0, 462.0, 42.0, 476.5, 42.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 476.5, 158.0, 462.0, 158.0, 462.0, 110.0, 476.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
