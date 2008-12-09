{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 1280.0, 726.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 1280.0, 726.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message report @repetitions/allow 1 @type msg_generic @description \"reports the state of the ambiencode external in the max window\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 609.0, 410.0, 604.0, 29.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p weights",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 869.0, 190.0, 54.0, 17.0 ],
					"hidden" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "float", "float", "float" ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 1136.0, 636.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 1136.0, 636.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel default basic inphase",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 264.0, 27.0, 786.0, 19.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"fontname" : "Verdana",
									"id" : "obj-64"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in phase",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 445.0, 47.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "basic",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 361.0, 33.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 102.0, 63.0, 23.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0.079101",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 195.0, 136.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0.442259",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 132.0, 136.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "1.",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 69.0, 136.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0.823242",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 5.0, 136.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 264.0, 6.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 5.0, 205.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 69.0, 205.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-17",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 132.0, 205.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-18",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 195.0, 205.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-19",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 1",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 845.0, 58.0, 22.0, 28.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0.",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 939.0, 187.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0.324",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 876.0, 187.0, 37.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "1.296",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 813.0, 187.0, 37.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "1.944",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 749.0, 187.0, 37.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 496.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 480.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 464.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[10]",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 495.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[11]",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 479.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[12]",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 463.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0.324",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 107.0, 496.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1.296",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 107.0, 481.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1.944",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 107.0, 464.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 427.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 411.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 395.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 379.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[5]",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 426.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[6]",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 410.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[7]",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 394.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[8]",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 378.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 107.0, 427.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 107.0, 411.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 107.0, 396.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0.707107",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 107.0, 379.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 34.0, 336.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 34.0, 320.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 34.0, 304.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0. order",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 34.0, 288.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0.079101",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 108.0, 336.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0.442259",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 108.0, 320.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 108.0, 304.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0.823242",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 108.0, 289.0, 55.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[4]",
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 335.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[3]",
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 319.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[2]",
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 303.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[1]",
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 287.0, 74.0, 15.0 ],
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-57"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 1",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 617.0, 58.0, 22.0, 28.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "1.",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 711.0, 187.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "1.",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 648.0, 187.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-60"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "1.",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 585.0, 187.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-61"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0.707017",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 521.0, 187.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-62"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "defaults",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 271.0, 46.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"id" : "obj-63"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 2 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 10.0,
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 531.0, 162.0, 48.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"items" : [ "default", ",", "basic", ",", "inphase" ],
					"outlettype" : [ "int", "", "" ],
					"arrow" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 213.0, 1.0, 48.0, 18.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "third[1]",
					"text" : "jcom.parameter weights/preset @type msg_symbol @repetitions/allow 0 @description \"presets for the order weights: default, basic, inphase\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 597.0, 156.0, 563.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ jcom.sur.ambi.speaker_instance 32",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 608.0, 387.0, 223.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 300.0, 106.0, 196.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 542.0, 347.0, 42.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 203.0, 42.0, 52.0, 19.0 ],
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 542.0, 307.0, 42.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 203.0, 21.0, 52.0, 19.0 ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 542.0, 267.0, 39.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 125.0, 42.0, 45.0, 19.0 ],
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 542.0, 232.0, 42.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 125.0, 21.0, 45.0, 19.0 ],
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 565.0, 106.0, 22.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 57.0, 42.0, 27.0, 19.0 ],
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 565.0, 51.0, 22.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 57.0, 21.0, 27.0, 19.0 ],
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 129.0, 258.0, 54.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal output----",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 159.0, 364.0, 206.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 135.0, 106.0, 160.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "third",
					"text" : "jcom.parameter weights/third @type msg_float @repetitions/allow 0 @range/bounds 0. 2. @range/clipmode both @description \"Third order weight (KLMNOPQ).\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 347.0, 589.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "second",
					"text" : "jcom.parameter weights/second @type msg_float @repetitions/allow 0 @range/bounds 0. 2. @range/clipmode both @description \"Second order weight (RSTUV).\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 307.0, 600.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "first",
					"text" : "jcom.parameter weights/first @type msg_float @repetitions/allow 0 @range/bounds 0. 2. @range/clipmode both @description \"First order weight (XYZ).\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 267.0, 585.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "omni",
					"text" : "jcom.parameter weights/omni @type msg_float @repetitions/allow 0 @range/bounds 0. 2. @range/clipmode both @description \"Zeroth order weight (W).\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 227.0, 590.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3rd",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 173.0, 42.0, 36.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 173.0, 43.0, 36.0, 19.0 ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2nd",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 173.0, 24.0, 36.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 173.0, 22.0, 36.0, 19.0 ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1st",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 88.0, 42.0, 43.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 89.0, 43.0, 43.0, 19.0 ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Omni",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 88.0, 24.0, 44.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 88.0, 22.0, 44.0, 19.0 ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Order",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 42.0, 48.0, 19.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 43.0, 48.0, 19.0 ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 129.0, 364.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"comment" : "Channel 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 305.0, 257.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----multicable signal input----",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 295.0, 226.0, 207.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.ambi.decode~",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 129.0, 319.0, 195.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Decoding ambisonic signal to multispeaker setup. NOTE: The positions of the speakers are not maintained by this module.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 151.0, 408.0, 31.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 106.0, 100.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 0.0, 106.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "order",
					"text" : "jcom.parameter order @type msg_int @repetitions/allow 0 @range/bounds 1 3 @range/clipmode both @description \"Order of decoding for ambisonic signal.  Changes only take effect when audio is off.\"",
					"linecount" : 3,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 630.0, 106.0, 393.0, 43.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Speakers",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 24.0, 48.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 3.0, 22.0, 55.0, 19.0 ],
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 246.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter numSpeakers @type msg_int @repetitions/allow 0 @range/bounds 1 32 @range/clipmode both @description \"The number of audio channels that the ambisonic signal is diffused to. Changes only take effect when audio is off.\"",
					"linecount" : 3,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 630.0, 51.0, 600.0, 43.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_mute" : 1,
					"numinlets" : 1,
					"patching_rect" : [ -1.0, 0.0, 300.0, 70.0 ],
					"presentation" : 1,
					"prefix" : "audio",
					"numoutlets" : 1,
					"has_gain" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ -1.0, -1.0, 300.0, 70.0 ],
					"id" : "obj-46"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 309.5, 136.0, 12.0, 136.0, 12.0, 148.0, 9.5, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 144.5, 136.0, 12.0, 136.0, 12.0, 148.0, 9.5, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
