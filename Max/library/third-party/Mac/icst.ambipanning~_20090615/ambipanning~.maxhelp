{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 2.0, 46.0, 800.0, 716.0 ],
		"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 2.0, 46.0, 800.0, 716.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 12.0, 12.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "attributes",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 147.0, 55.0, 17.0 ],
					"id" : "obj-1",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more_params",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 118.0, 552.0, 80.0, 17.0 ],
					"id" : "obj-2",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 154.0, 68.0, 517.0, 618.0 ],
						"bglocked" : 0,
						"defrect" : [ 154.0, 68.0, 517.0, 618.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "print:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 490.0, 36.0, 17.0 ],
									"id" : "obj-1",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "query:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 462.0, 40.0, 17.0 ],
									"id" : "obj-2",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "version",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 195.0, 461.0, 44.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "report",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 194.0, 489.0, 39.0, 15.0 ],
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "or",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 232.0, 252.0, 18.0, 17.0 ],
									"id" : "obj-5",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "or",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 232.0, 171.0, 18.0, 17.0 ],
									"id" : "obj-6",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "or",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 232.0, 101.0, 18.0, 17.0 ],
									"id" : "obj-7",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "or",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 232.0, 39.0, 18.0, 17.0 ],
									"id" : "obj-8",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<ID> <value>",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 341.0, 270.0, 76.0, 17.0 ],
									"id" : "obj-9",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<ID> <value>",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 341.0, 189.0, 76.0, 17.0 ],
									"id" : "obj-10",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<ID> <value>",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 341.0, 116.0, 76.0, 17.0 ],
									"id" : "obj-11",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<ID> <value>",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 341.0, 56.0, 76.0, 17.0 ],
									"id" : "obj-12",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set da_fact",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 52.0, 171.0, 61.0, 17.0 ],
									"id" : "obj-13",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "individually",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 171.0, 62.0, 17.0 ],
									"id" : "obj-14",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for all voices",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 171.0, 70.0, 17.0 ],
									"id" : "obj-15",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "individually",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 101.0, 62.0, 17.0 ],
									"id" : "obj-16",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for all voices",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 101.0, 70.0, 17.0 ],
									"id" : "obj-17",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set db_unit",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 52.0, 101.0, 60.0, 17.0 ],
									"id" : "obj-18",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_aep",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 136.0, 521.0, 48.0, 17.0 ],
									"id" : "obj-19",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 188.0, 35.0, 17.0 ],
									"id" : "obj-20",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "da_fact $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 153.0, 205.0, 59.0, 15.0 ],
									"id" : "obj-21",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 296.0, 188.0, 35.0, 17.0 ],
									"id" : "obj-22",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"minimum" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 188.0, 35.0, 17.0 ],
									"id" : "obj-23",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak da_fact_n 0 0.",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 260.0, 205.0, 94.0, 17.0 ],
									"id" : "obj-24",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 117.0, 35.0, 17.0 ],
									"id" : "obj-25",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "db_unit $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 153.0, 134.0, 58.0, 15.0 ],
									"id" : "obj-26",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 296.0, 117.0, 35.0, 17.0 ],
									"id" : "obj-27",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"minimum" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 117.0, 35.0, 17.0 ],
									"id" : "obj-28",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak db_unit_n 0 0.",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 260.0, 134.0, 95.0, 17.0 ],
									"id" : "obj-29",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 341.0, 15.0, 15.0 ],
									"id" : "obj-30",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 174.0, 341.0, 15.0, 15.0 ],
									"id" : "obj-31",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 195.0, 341.0, 15.0, 15.0 ],
									"id" : "obj-32",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 216.0, 341.0, 15.0, 15.0 ],
									"id" : "obj-33",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak active 0 0 0 0",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 5,
									"patching_rect" : [ 153.0, 361.0, 92.0, 17.0 ],
									"id" : "obj-34",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mute the inputs individually",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 325.0, 135.0, 17.0 ],
									"id" : "obj-35",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 410.0, 15.0, 15.0 ],
									"id" : "obj-36",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "interp $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 153.0, 427.0, 52.0, 15.0 ],
									"id" : "obj-37",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "switch blockwise interpolation of all coefficient changes on/off",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 395.0, 294.0, 17.0 ],
									"id" : "obj-38",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "individually",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 39.0, 62.0, 17.0 ],
									"id" : "obj-39",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for all voices",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 39.0, 70.0, 17.0 ],
									"id" : "obj-40",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set coding order",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 39.0, 83.0, 17.0 ],
									"id" : "obj-41",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "individually",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 252.0, 62.0, 17.0 ],
									"id" : "obj-42",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for all inputs",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 252.0, 68.0, 17.0 ],
									"id" : "obj-43",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 295.0, 269.0, 35.0, 17.0 ],
									"id" : "obj-44",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"minimum" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 269.0, 35.0, 17.0 ],
									"id" : "obj-45",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak gain_n 0 0.",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 260.0, 286.0, 80.0, 17.0 ],
									"id" : "obj-46",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 269.0, 35.0, 17.0 ],
									"id" : "obj-47",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "gain $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 153.0, 286.0, 43.0, 15.0 ],
									"id" : "obj-48",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set gain of inputs",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 52.0, 252.0, 87.0, 17.0 ],
									"id" : "obj-49",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 293.0, 55.0, 35.0, 17.0 ],
									"id" : "obj-50",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"minimum" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 260.0, 55.0, 35.0, 17.0 ],
									"id" : "obj-51",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak order_n 0 0.",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 260.0, 73.0, 85.0, 17.0 ],
									"id" : "obj-52",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 153.0, 55.0, 35.0, 17.0 ],
									"id" : "obj-53",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "order $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 153.0, 73.0, 50.0, 15.0 ],
									"id" : "obj-54",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 2 ],
									"hidden" : 0,
									"midpoints" : [ 305.5, 202.0, 344.5, 202.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-29", 2 ],
									"hidden" : 0,
									"midpoints" : [ 305.5, 131.0, 345.5, 131.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-52", 2 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 72.0, 335.5, 72.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-46", 2 ],
									"hidden" : 0,
									"midpoints" : [ 304.5, 286.0, 330.5, 286.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 202.0, 307.0, 202.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 131.0, 307.5, 131.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 72.0, 302.5, 72.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-46", 1 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 286.0, 300.0, 286.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-34", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-34", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-34", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 203.5, 508.0, 145.5, 508.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 479.0, 145.5, 479.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 94.0, 145.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 94.0, 145.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 157.0, 145.5, 157.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 157.0, 145.5, 157.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 308.0, 145.5, 308.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 308.0, 145.5, 308.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 384.0, 145.5, 384.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 449.0, 145.5, 449.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 228.0, 145.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 228.0, 145.5, 228.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "directivity",
					"text" : "p distance",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 118.0, 498.0, 80.0, 17.0 ],
					"id" : "obj-3",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 21.0, 88.0, 748.0, 640.0 ],
						"bglocked" : 0,
						"defrect" : [ 21.0, 88.0, 748.0, 640.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Formulas:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 184.0, 605.0, 55.0, 17.0 ],
									"id" : "obj-1",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "____",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 1.0, 34.0, 17.0 ],
									"id" : "obj-2",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "____",
									"fontname" : "Verdana",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 177.0, 1012.0, 34.0, 17.0 ],
									"id" : "obj-3",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "attenuation_curve) * (1 - db_unit)) + db_unit;\r",
									"linecount" : 2,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 271.0, 665.0, 220.0, 28.0 ],
									"id" : "obj-4",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the fall-off curve towards the center can be set with the 'center_curve' factor and goes from 0. (no fall-off) to 1. (linear fall-off)",
									"linecount" : 3,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 185.0, 398.0, 280.0, 39.0 ],
									"id" : "obj-5",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the center zone can be considered the as the zone inside the head, where all sounds become monophonic. its size is variable and expressed in fractions of units.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 185.0, 326.0, 280.0, 39.0 ],
									"id" : "obj-6",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "decrease mode outside the center_zone",
									"linecount" : 2,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 549.0, 65.0, 116.0, 28.0 ],
									"id" : "obj-7",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mode 1:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 372.0, 75.0, 47.0, 17.0 ],
									"id" : "obj-8",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mode 0:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 310.0, 57.0, 47.0, 17.0 ],
									"id" : "obj-9",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 1.",
									"fontname" : "Verdana",
									"outlettype" : [ "float", "float" ],
									"fontsize" : 9.0,
									"numinlets" : 3,
									"patching_rect" : [ 188.0, 884.0, 51.0, 17.0 ],
									"id" : "obj-10",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "order = order * distance * (1 / center_size);\r",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 204.0, 784.0, 214.0, 17.0 ],
									"id" : "obj-11",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "order decrease inside center_zone:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 194.0, 770.0, 169.0, 17.0 ],
									"id" : "obj-12",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "amplitude = pow(10, (distance - center_size) * -db_unit / 20);\r",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 224.0, 746.0, 295.0, 17.0 ],
									"id" : "obj-13",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "exponential:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 214.0, 732.0, 65.0, 17.0 ],
									"id" : "obj-14",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "amplitude = pow(distance + (1 - center_size), -da_fact);\r",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 224.0, 714.0, 269.0, 17.0 ],
									"id" : "obj-15",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "inverse proportional:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 214.0, 700.0, 106.0, 17.0 ],
									"id" : "obj-16",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "outside center_zone:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 204.0, 681.0, 104.0, 17.0 ],
									"id" : "obj-17",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "amplitude = (pow((distance * (1 / center_size)),",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 214.0, 651.0, 232.0, 17.0 ],
									"id" : "obj-18",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "inside center_zone:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 204.0, 637.0, 98.0, 17.0 ],
									"id" : "obj-19",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "distance attenuation:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 194.0, 619.0, 105.0, 17.0 ],
									"id" : "obj-20",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "order correction inside center_zone",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 186.0, 822.0, 171.0, 17.0 ],
									"id" : "obj-21",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b f",
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "float" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 347.0, 910.0, 29.0, 17.0 ],
									"id" : "obj-22",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 272.0, 946.0, 35.0, 17.0 ],
									"id" : "obj-23",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "order",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 346.0, 845.0, 63.0, 17.0 ],
									"id" : "obj-24",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 188.0, 964.0, 35.0, 17.0 ],
									"id" : "obj-25",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "order",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.0, 0.0, 0.247059, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 347.0, 861.0, 35.0, 17.0 ],
									"id" : "obj-26",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 188.0, 939.0, 29.0, 17.0 ],
									"id" : "obj-27",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1/cs",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 306.0, 884.0, 32.0, 17.0 ],
									"id" : "obj-28",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 271.0, 910.0, 35.0, 17.0 ],
									"id" : "obj-29",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!/ 1.",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 271.0, 884.0, 31.0, 17.0 ],
									"id" : "obj-30",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "center_size",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 270.0, 845.0, 63.0, 17.0 ],
									"id" : "obj-31",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "center_size2",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.0, 0.0, 0.247059, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 271.0, 861.0, 35.0, 17.0 ],
									"id" : "obj-32",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 188.0, 910.0, 29.0, 17.0 ],
									"id" : "obj-33",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "distance",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.0, 0.0, 0.247059, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 188.0, 861.0, 35.0, 17.0 ],
									"id" : "obj-34",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "distance",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 187.0, 845.0, 47.0, 17.0 ],
									"id" : "obj-35",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "prox_min[2]",
									"triscale" : 0.9,
									"hbgcolor" : [ 0.0, 0.082353, 0.164706, 1.0 ],
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 1.0, 0.835294, 0.666667, 1.0 ],
									"maximum" : 128.0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.0, 0.164706, 0.333333, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 57.0, 55.0, 17.0 ],
									"id" : "obj-36",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "center_size (units)",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 127.0, 57.0, 96.0, 17.0 ],
									"id" : "obj-37",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "da_fact",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 475.0, 75.0, 44.0, 17.0 ],
									"id" : "obj-38",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "db_unit[2]",
									"triscale" : 0.9,
									"hbgcolor" : [ 0.0, 0.082353, 0.164706, 1.0 ],
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 1.0, 0.835294, 0.666667, 1.0 ],
									"maximum" : 128.0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.0, 0.164706, 0.333333, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 419.0, 75.0, 55.0, 17.0 ],
									"id" : "obj-39",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the inverse proportional decrease, where the decrease is a function of the distance (1/x). the amount of decay can be controlled with the distance_amplitude factor 'da_fact'",
									"linecount" : 3,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 195.0, 530.0, 272.0, 39.0 ],
									"id" : "obj-40",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "exponential decrease, where the decrease in dB per unit can be controlled by the 'db_unit'",
									"linecount" : 2,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 195.0, 500.0, 270.0, 28.0 ],
									"id" : "obj-41",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "two modes of distance-amplitude decrease are implemented:",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 185.0, 482.0, 287.0, 17.0 ],
									"id" : "obj-42",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "" ],
									"labelclick" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"items" : [ "exponential", "decrease", ",", "inverse", "proportional", "decrease" ],
									"bgcolor" : [ 0.0, 0.121569, 0.247059, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 475.0, 92.0, 154.0, 17.0 ],
									"id" : "obj-43",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Inside the center zone the order is being linearly decreased, reaching zero i.e. complete monophony at the very center.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 185.0, 368.0, 285.0, 28.0 ],
									"id" : "obj-44",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the center attenuation factor 'center_att' serves to compensate for the increase in amplitude caused by the presence of the source signal on all speakers.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 185.0, 440.0, 280.0, 39.0 ],
									"id" : "obj-45",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "amplitude",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 229.0, 53.0, 17.0 ],
									"id" : "obj-46",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "distance in units",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 295.0, 83.0, 17.0 ],
									"id" : "obj-47",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p distance_attenuation",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 6,
									"patching_rect" : [ 70.0, 131.0, 417.0, 17.0 ],
									"id" : "obj-48",
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 114.0, 401.0, 927.0, 440.0 ],
										"bglocked" : 0,
										"defrect" : [ 114.0, 401.0, 927.0, 440.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 12.0, 12.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 699.0, 219.0, 34.0, 17.0 ],
													"id" : "obj-1",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "scale inside center",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 180.0, 255.0, 94.0, 17.0 ],
													"id" : "obj-2",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 410.0, 255.0, 227.0, 17.0 ],
													"id" : "obj-3",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "dist_mode",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 853.0, 30.0, 56.0, 17.0 ],
													"id" : "obj-4",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "da_fact",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 697.0, 31.0, 44.0, 17.0 ],
													"id" : "obj-5",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "db_unit",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 504.0, 31.0, 43.0, 17.0 ],
													"id" : "obj-6",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "center_att",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 249.0, 30.0, 58.0, 17.0 ],
													"id" : "obj-7",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "center_size",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 67.0, 30.0, 63.0, 17.0 ],
													"id" : "obj-8",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "att_curve",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 158.0, 30.0, 55.0, 17.0 ],
													"id" : "obj-9",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "distance",
													"fontname" : "Verdana",
													"frgb" : [ 0.611765, 0.701961, 1.0, 1.0 ],
													"textcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 214.0, 219.0, 63.0, 17.0 ],
													"id" : "obj-10",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr $f1 * (1.0/$f2)",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 70.0, 255.0, 108.0, 17.0 ],
													"id" : "obj-11",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow(($f1+(1-$f3))\\, $f2)",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 3,
													"patching_rect" : [ 627.0, 290.0, 154.0, 17.0 ],
													"id" : "obj-12",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 53.0, 61.0, 17.0 ],
													"id" : "obj-13",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "float" ],
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-14",
													"numoutlets" : 1,
													"comment" : "center size"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "float" ],
													"numinlets" : 0,
													"patching_rect" : [ 680.0, 31.0, 15.0, 15.0 ],
													"id" : "obj-15",
													"numoutlets" : 1,
													"comment" : "distance attenution factor"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 680.0, 54.0, 29.0, 17.0 ],
													"id" : "obj-16",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "int" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 837.0, 53.0, 27.0, 17.0 ],
													"id" : "obj-17",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"patching_rect" : [ 837.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-18",
													"numoutlets" : 1,
													"comment" : "distance calulation mode"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 410.0, 219.0, 27.0, 17.0 ],
													"id" : "obj-19",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow(10.0\\, (-$f1 / 20.))",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 252.0, 191.0, 150.0, 17.0 ],
													"id" : "obj-20",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 506.0, 219.0, 34.0, 17.0 ],
													"id" : "obj-21",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 233.0, 53.0, 29.0, 17.0 ],
													"id" : "obj-22",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 142.0, 53.0, 29.0, 17.0 ],
													"id" : "obj-23",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 487.0, 54.0, 29.0, 17.0 ],
													"id" : "obj-24",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr (pow($f1\\,$f2) * (1 - $f3)) + $f3",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 3,
													"patching_rect" : [ 70.0, 290.0, 192.0, 17.0 ],
													"id" : "obj-25",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 100.0, 50.0, 17.0 ],
													"id" : "obj-26",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0 500 5. 0.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 6,
													"patching_rect" : [ 70.0, 191.0, 87.0, 17.0 ],
													"id" : "obj-27",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t i i",
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 166.0, 30.0, 17.0 ],
													"id" : "obj-28",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 145.0, 30.0, 17.0 ],
													"id" : "obj-29",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 501",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 120.0, 44.0, 17.0 ],
													"id" : "obj-30",
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p draw",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 4,
													"patching_rect" : [ 50.0, 335.0, 71.0, 17.0 ],
													"id" : "obj-31",
													"numoutlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 40.0, 73.0, 1307.0, 853.0 ],
														"bglocked" : 0,
														"defrect" : [ 40.0, 73.0, 1307.0, 853.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"gridonopen" : 0,
														"gridsize" : [ 12.0, 12.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 10",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 434.0, 135.0, 31.0, 17.0 ],
																	"id" : "obj-1",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i 100",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 392.0, 162.0, 34.0, 17.0 ],
																	"id" : "obj-2",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "float" ],
																	"numinlets" : 0,
																	"patching_rect" : [ 494.0, 34.0, 15.0, 15.0 ],
																	"id" : "obj-3",
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 100.",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 494.0, 54.0, 41.0, 17.0 ],
																	"id" : "obj-4",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"triscale" : 0.9,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "bang" ],
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"numinlets" : 1,
																	"patching_rect" : [ 592.0, 99.0, 35.0, 17.0 ],
																	"id" : "obj-5",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"patching_rect" : [ 102.0, 388.0, 15.0, 15.0 ],
																	"id" : "obj-6",
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 510",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 100.0, 54.0, 39.0, 17.0 ],
																	"id" : "obj-7",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 10.",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 184.0, 76.0, 34.0, 17.0 ],
																	"id" : "obj-8",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "onebang 1",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "bang" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 70.0, 160.0, 56.0, 17.0 ],
																	"id" : "obj-9",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "b 1",
																	"linecount" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang" ],
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"patching_rect" : [ 70.0, 140.0, 22.0, 28.0 ],
																	"id" : "obj-10",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "" ],
																	"numinlets" : 0,
																	"patching_rect" : [ 184.0, 30.0, 15.0, 15.0 ],
																	"id" : "obj-11",
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0.",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 100.0, 103.0, 51.0, 17.0 ],
																	"id" : "obj-12",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 0. 1. 100 0",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"fontsize" : 9.0,
																	"numinlets" : 6,
																	"patching_rect" : [ 184.0, 53.0, 87.0, 17.0 ],
																	"id" : "obj-13",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend lineto",
																	"linecount" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"patching_rect" : [ 100.0, 247.0, 73.0, 28.0 ],
																	"id" : "obj-14",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set lineto",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 70.0, 221.0, 52.0, 15.0 ],
																	"id" : "obj-15",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set moveto",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 125.0, 221.0, 60.0, 15.0 ],
																	"id" : "obj-16",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "b 8",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang" ],
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"patching_rect" : [ 314.0, 89.0, 105.0, 17.0 ],
																	"id" : "obj-17",
																	"numoutlets" : 8
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "bang" ],
																	"numinlets" : 0,
																	"patching_rect" : [ 314.0, 39.0, 15.0, 15.0 ],
																	"id" : "obj-18",
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"outlettype" : [ "int" ],
																	"numinlets" : 0,
																	"patching_rect" : [ 100.0, 31.0, 15.0, 15.0 ],
																	"id" : "obj-19",
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "frgb 0 127 255, penmode 32, oprgb 63 63 63, paintrect 10 10 $1 110, oprgb 127 127 127, linesegment $1 10 $1 110, penmode 0",
																	"linecount" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 392.0, 214.0, 310.0, 26.0 ],
																	"id" : "obj-20",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"linecount" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang" ],
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"patching_rect" : [ 863.0, 229.0, 48.0, 28.0 ],
																	"id" : "obj-21",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "frgb 255 255 255",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 201.0, 221.0, 92.0, 15.0 ],
																	"id" : "obj-22",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "brgb 0 0 63, clear, penmode 32, oprgb 63 63 63, frgb 127 182 255, linesegment 0 110 600 110, linesegment 0 10 600 10, linesegment 10 0 10 200, linesegment 110 0 110 200, linesegment 210 0 210 200, linesegment 310 0 310 200, linesegment 410 0 410 200, linesegment 510 0 510 200, frgb 63 91 127, font 6 9, moveto 10 120, write \" 0.\", moveto 110 120, write \" 1.\", moveto 210 120, write \" 2.\", moveto 310 120, write \" 3.\", moveto 410 120, write \" 4.\", moveto 510 120, write \" 5.\", frgb 255 255 255",
																	"linecount" : 7,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"patching_rect" : [ 406.0, 266.0, 369.0, 81.0 ],
																	"id" : "obj-23",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "background and grid",
																	"linecount" : 2,
																	"fontname" : "Verdana",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"patching_rect" : [ 447.0, 361.0, 100.0, 28.0 ],
																	"id" : "obj-24",
																	"numoutlets" : 0
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 7 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 6 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 2 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-12", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-9", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 79.5, 199.0, 79.5, 199.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow(10\\, ($f1 - $f3) * $f2 * 0.05);\r",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 3,
													"patching_rect" : [ 410.0, 290.0, 203.0, 17.0 ],
													"id" : "obj-32",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 0. 1.",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ],
													"fontsize" : 9.0,
													"numinlets" : 3,
													"patching_rect" : [ 70.0, 219.0, 54.0, 17.0 ],
													"id" : "obj-33",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "float" ],
													"numinlets" : 0,
													"patching_rect" : [ 233.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-34",
													"numoutlets" : 1,
													"comment" : "center attenuation in dB"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "float" ],
													"numinlets" : 0,
													"patching_rect" : [ 142.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-35",
													"numoutlets" : 1,
													"comment" : "attenutation curve"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "float" ],
													"numinlets" : 0,
													"patching_rect" : [ 487.0, 31.0, 15.0, 15.0 ],
													"id" : "obj-36",
													"numoutlets" : 1,
													"comment" : "dB decrease per unit"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 359.0, 15.0, 15.0 ],
													"id" : "obj-37",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "dB to amp",
													"linecount" : 2,
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 293.0, 175.0, 54.0, 28.0 ],
													"id" : "obj-38",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "center_size",
													"fontname" : "Verdana",
													"frgb" : [ 0.6, 0.4, 0.6, 1.0 ],
													"textcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 181.0, 102.0, 63.0, 17.0 ],
													"id" : "obj-39",
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-12", 2 ],
													"hidden" : 0,
													"color" : [ 0.6, 0.4, 0.6, 1.0 ],
													"midpoints" : [ 101.5, 115.0, 771.5, 115.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"color" : [ 0.611765, 0.701961, 1.0, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"color" : [ 0.611765, 0.701961, 1.0, 1.0 ],
													"midpoints" : [ 114.5, 243.0, 627.5, 243.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-32", 2 ],
													"hidden" : 0,
													"color" : [ 0.6, 0.4, 0.6, 1.0 ],
													"midpoints" : [ 101.5, 115.0, 603.5, 115.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"color" : [ 0.611765, 0.701961, 1.0, 1.0 ],
													"midpoints" : [ 419.5, 266.0, 419.5, 266.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 854.5, 140.0, 419.5, 140.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-25", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"color" : [ 0.6, 0.4, 0.6, 1.0 ],
													"midpoints" : [ 101.5, 115.0, 168.5, 115.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-33", 2 ],
													"hidden" : 0,
													"color" : [ 0.6, 0.4, 0.6, 1.0 ],
													"midpoints" : [ 101.5, 139.0, 114.5, 139.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-31", 3 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [ 101.5, 326.0, 111.5, 326.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-31", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [ 636.5, 319.0, 76.833336, 319.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [ 419.5, 319.0, 76.833336, 319.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 2 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 846.5, 91.0, 59.5, 91.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 91.0, 59.5, 91.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 689.5, 91.0, 59.5, 91.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 496.5, 91.0, 59.5, 91.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 242.5, 91.0, 59.5, 91.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 151.5, 91.0, 59.5, 91.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u919000116",
									"text" : "autopattr",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ],
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 628.0, 442.0, 53.0, 17.0 ],
									"id" : "obj-49",
									"numoutlets" : 4,
									"restore" : 									{
										"center_size2" : [ 0.55 ],
										"db_unit[1]" : [ 2.0 ],
										"db_unit[2]" : [ 1.0 ],
										"distance" : [ 2.05 ],
										"order" : [ 10.0 ],
										"prox_curve[1]" : [ 0.24 ],
										"prox_min[1]" : [ 6.0 ],
										"prox_min[2]" : [ 0.2 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "lcd",
									"outlettype" : [ "list", "list", "int", "" ],
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 162.0, 534.0, 129.0 ],
									"id" : "obj-50",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "prox_min[1]",
									"triscale" : 0.9,
									"hbgcolor" : [ 0.0, 0.082353, 0.164706, 1.0 ],
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 1.0, 0.835294, 0.666667, 1.0 ],
									"maximum" : 128.0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.0, 0.164706, 0.333333, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 192.0, 92.0, 55.0, 17.0 ],
									"id" : "obj-51",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "center_att (dB)",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 248.0, 92.0, 80.0, 17.0 ],
									"id" : "obj-52",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "prox_curve[1]",
									"triscale" : 0.9,
									"hbgcolor" : [ 0.0, 0.082353, 0.164706, 1.0 ],
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 1.0, 0.835294, 0.666667, 1.0 ],
									"maximum" : 1.0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.0, 0.164706, 0.333333, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 127.0, 75.0, 55.0, 17.0 ],
									"id" : "obj-53",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "center_curve",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 183.0, 75.0, 71.0, 17.0 ],
									"id" : "obj-54",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "db_unit (dB)",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 413.0, 57.0, 66.0, 17.0 ],
									"id" : "obj-55",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "db_unit[1]",
									"triscale" : 0.9,
									"hbgcolor" : [ 0.0, 0.082353, 0.164706, 1.0 ],
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 1.0, 0.835294, 0.666667, 1.0 ],
									"maximum" : 128.0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.0, 0.164706, 0.333333, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 357.0, 57.0, 55.0, 17.0 ],
									"id" : "obj-56",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attenuation of Amplitude for Distances Inside and Outside the Center Zone",
									"fontname" : "Verdana",
									"fontsize" : 18.0,
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 15.0, 689.0, 28.0 ],
									"id" : "obj-57",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "db_unit $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 619.0, 218.0, 90.0, 15.0 ],
									"id" : "obj-58",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "da_fact $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 619.0, 235.0, 90.0, 15.0 ],
									"id" : "obj-59",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "center_att $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 619.0, 201.0, 90.0, 15.0 ],
									"id" : "obj-60",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "center_curve $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 619.0, 184.0, 90.0, 15.0 ],
									"id" : "obj-61",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "center_size $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 619.0, 167.0, 90.0, 15.0 ],
									"id" : "obj-62",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dist_mode $1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 619.0, 252.0, 90.0, 15.0 ],
									"id" : "obj-63",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_aep",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 619.0, 272.0, 48.0, 17.0 ],
									"id" : "obj-64",
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [ 484.5, 113.0, 628.5, 113.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [ 428.5, 122.0, 628.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [ 366.5, 116.0, 628.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 201.5, 119.0, 628.5, 119.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [ 136.5, 122.0, 628.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 79.5, 125.0, 628.5, 125.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-48", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-48", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-48", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-48", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-10", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 366.5, 933.0, 207.5, 933.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 356.5, 933.0, 197.5, 933.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-48", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[32]",
					"text" : "scaling factor between aed and xyz",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 194.0, 168.0, 17.0 ],
					"id" : "obj-4",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[39]",
					"text" : "<float>",
					"linecount" : 2,
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 194.0, 41.0, 28.0 ],
					"id" : "obj-5",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[40]",
					"text" : "@xyz_scale",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 194.0, 64.0, 17.0 ],
					"id" : "obj-6",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[11]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 193.0, 91.0, 15.0 ],
					"id" : "obj-7",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r to_aep",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 428.0, 403.0, 48.0, 17.0 ],
					"id" : "obj-8",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"minimum" : 0.0,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 475.0, 315.0, 59.0, 17.0 ],
					"id" : "obj-9",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dist $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 475.0, 332.0, 42.0, 15.0 ],
					"id" : "obj-10",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p directivity",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 118.0, 516.0, 80.0, 17.0 ],
					"id" : "obj-11",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 49.0, 86.0, 697.0, 397.0 ],
						"bglocked" : 0,
						"defrect" : [ 49.0, 86.0, 697.0, 397.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 10.",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 165.0, 55.0, 69.0, 17.0 ],
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p draw",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 165.0, 103.0, 41.0, 17.0 ],
									"id" : "obj-2",
									"numoutlets" : 2,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 962.0, 878.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 962.0, 878.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"gridonopen" : 0,
										"gridsize" : [ 12.0, 12.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "to radians",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 202.0, 238.0, 55.0, 17.0 ],
													"id" : "obj-1",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr 3.141593 / 180.",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 661.0, 125.0, 115.0, 17.0 ],
													"id" : "obj-2",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 180.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 133.0, 128.0, 39.0, 17.0 ],
													"id" : "obj-3",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"linecount" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 661.0, 29.0, 48.0, 28.0 ],
													"id" : "obj-4",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear, frgb 31 91 127, linesegment 100 0 100 200, linesegment 0 100 200 100, font 6 9, moveto 102 24, write 0º, moveto 2 98, write -90º, moveto 180 98, write 90º, moveto 94 196, write - +180º, frgb 255 255 255, moveto 100 100",
													"linecount" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 563.0, 217.0, 378.0, 37.0 ],
													"id" : "obj-5",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "brgb 0 0 63, frgb 255 255 255, clear",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 623.0, 343.0, 182.0, 15.0 ],
													"id" : "obj-6",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 95.0, 300.0, 27.0, 17.0 ],
													"id" : "obj-7",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 323.0, 300.0, 28.0, 17.0 ],
													"id" : "obj-8",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear, frgb 31 91 127, linesegment 100 0 100 200, linesegment 50 0 50 200, linesegment 150 0 150 200, font 6 9, moveto 2 100, write -180º, moveto 52 100, write -90º, moveto 102 100, write 0º, moveto 132 100, write 90º, moveto 178 100, write 180º, frgb 255 255 255, moveto 0 200",
													"linecount" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 590.0, 276.0, 354.0, 48.0 ],
													"id" : "obj-9",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 360. 0. 198.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 6,
													"patching_rect" : [ 323.0, 281.0, 105.0, 17.0 ],
													"id" : "obj-10",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 190.0, 300.0, 27.0, 17.0 ],
													"id" : "obj-11",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 90.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 132.0, 217.0, 34.0, 17.0 ],
													"id" : "obj-12",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale -1. 1. 0 200",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 6,
													"patching_rect" : [ 189.0, 281.0, 92.0, 17.0 ],
													"id" : "obj-13",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale -1. 1. 0 200",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 6,
													"patching_rect" : [ 95.0, 281.0, 92.0, 17.0 ],
													"id" : "obj-14",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "f",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 95.0, 234.0, 27.0, 17.0 ],
													"id" : "obj-15",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.017453",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 132.0, 236.0, 65.0, 17.0 ],
													"id" : "obj-16",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 95.0, 319.0, 54.0, 17.0 ],
													"id" : "obj-17",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "poltocar",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 95.0, 257.0, 47.0, 17.0 ],
													"id" : "obj-18",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f b",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float", "bang" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 61.0, 50.0, 77.0, 17.0 ],
													"id" : "obj-19",
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 95.0, 105.0, 27.0, 17.0 ],
													"id" : "obj-20",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "b",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 563.0, 122.0, 37.0, 17.0 ],
													"id" : "obj-21",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "float" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 95.0, 185.0, 29.0, 17.0 ],
													"id" : "obj-22",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 430.0, 300.0, 28.0, 17.0 ],
													"id" : "obj-23",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0. 0.",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 323.0, 319.0, 54.0, 17.0 ],
													"id" : "obj-24",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0. 1. 198. 0.",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 6,
													"patching_rect" : [ 430.0, 281.0, 93.0, 17.0 ],
													"id" : "obj-25",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow(0.5 * (1. + cos($f1))\\, $f2)",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 133.0, 170.0, 185.0, 17.0 ],
													"id" : "obj-26",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 0.017453",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 133.0, 150.0, 65.0, 17.0 ],
													"id" : "obj-27",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 361",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 61.0, 85.0, 44.0, 17.0 ],
													"id" : "obj-28",
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend lineto",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 95.0, 339.0, 74.0, 17.0 ],
													"id" : "obj-29",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend lineto",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 323.0, 339.0, 74.0, 17.0 ],
													"id" : "obj-30",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "to radians",
													"fontname" : "Verdana",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 199.0, 153.0, 55.0, 17.0 ],
													"id" : "obj-31",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "float" ],
													"numinlets" : 0,
													"patching_rect" : [ 61.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-32",
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 590.0, 406.0, 15.0, 15.0 ],
													"id" : "obj-33",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 95.0, 406.0, 15.0, 15.0 ],
													"id" : "obj-34",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-27", 1 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [ 670.5, 147.0, 188.5, 147.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [ 670.5, 193.0, 187.5, 193.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [ 572.5, 367.0, 104.0, 367.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [ 104.5, 381.0, 104.0, 381.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [ 632.5, 385.0, 104.0, 385.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 2 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"minimum" : 0.0,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 165.0, 80.0, 68.0, 17.0 ],
									"id" : "obj-3",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "order",
									"fontname" : "Verdana",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 82.0, 35.0, 17.0 ],
									"id" : "obj-4",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "lcd",
									"outlettype" : [ "list", "list", "int", "" ],
									"numinlets" : 1,
									"patching_rect" : [ 367.0, 133.0, 201.0, 201.0 ],
									"enablesprites" : 1,
									"id" : "obj-5",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "lcd",
									"outlettype" : [ "list", "list", "int", "" ],
									"numinlets" : 1,
									"patching_rect" : [ 165.0, 133.0, 201.0, 201.0 ],
									"enablesprites" : 1,
									"id" : "obj-6",
									"numoutlets" : 4
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "window size 2 46 1202 736, window exec",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 179.0, 673.0, 202.0, 15.0 ],
					"id" : "obj-12",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ambidecode~",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 578.0, 647.0, 72.0, 15.0 ],
					"id" : "obj-13",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[31]",
					"text" : "see also:",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 455.0, 648.0, 50.0, 17.0 ],
					"id" : "obj-14",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontname" : "Verdana",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 506.0, 669.0, 30.0, 17.0 ],
					"id" : "obj-15",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 70.0, 47.0, 17.0 ],
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"linecount" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 50.0, 66.0, 28.0 ],
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ambiencode~",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 506.0, 647.0, 72.0, 15.0 ],
					"id" : "obj-16",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ambicontrol",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 720.0, 647.0, 64.0, 15.0 ],
					"id" : "obj-17",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ambimonitor",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 650.0, 647.0, 68.0, 15.0 ],
					"id" : "obj-18",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "window size 2 46 802 736, window exec",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 104.0, 653.0, 196.0, 15.0 ],
					"id" : "obj-19",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 104.0, 673.0, 61.0, 17.0 ],
					"id" : "obj-20",
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"menumode" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"textcolor" : [ 0.0, 0.0, 0.74902, 1.0 ],
					"fontsize" : 9.0,
					"items" : "www.icst.net",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 689.0, 54.0, 74.0, 17.0 ],
					"id" : "obj-21",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launch_browser http://www.icst.net",
					"linecount" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 689.0, 97.0, 202.0, 26.0 ],
					"id" : "obj-22",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 250 250 250",
					"fontname" : "Verdana",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 4,
					"patching_rect" : [ 689.0, 125.0, 106.0, 17.0 ],
					"id" : "obj-23",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Zurich University of the Arts",
					"fontname" : "Verdana",
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 619.0, 44.0, 142.0, 17.0 ],
					"id" : "obj-24",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ambisonic equivalent panning",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 49.0, 143.0, 17.0 ],
					"id" : "obj-25",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Copyright © 2008 by Jasch",
					"fontname" : "Verdana",
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 625.0, 20.0, 136.0, 17.0 ],
					"id" : "obj-26",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ICST Institute for Computer Music and Sound Technology",
					"fontname" : "Verdana",
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 497.0, 32.0, 269.0, 17.0 ],
					"id" : "obj-27",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ambipanning~",
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 24.0, 140.0, 28.0 ],
					"id" : "obj-28",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 6.0, 773.0, 76.0 ],
					"bordercolor" : [ 0.752941, 0.74902, 0.74902, 1.0 ],
					"id" : "obj-29",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 367.0, 481.0, 29.0, 15.0 ],
					"id" : "obj-30",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 299.0, 481.0, 67.0, 15.0 ],
					"id" : "obj-31",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p set_sources",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 405.0, 155.0, 73.0, 17.0 ],
					"id" : "obj-32",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aed 1 -22.5 0. 1.",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 258.0, 122.0, 87.0, 15.0 ],
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aed 4 -67.5 0. 1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 67.0, 122.0, 84.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aed 3 67.5 0. 1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 67.0, 106.0, 80.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aed 2 22.5 0. 1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 67.0, 89.0, 80.0, 15.0 ],
									"id" : "obj-4",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"linecount" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 67.0, 37.0, 48.0, 28.0 ],
									"id" : "obj-5",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aed 1 -22.5 0. 1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 67.0, 72.0, 84.0, 15.0 ],
									"id" : "obj-6",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 67.0, 169.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4 5 6 7 8",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 8,
					"patching_rect" : [ 405.0, 508.0, 198.0, 17.0 ],
					"id" : "obj-33",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 421.0, 315.0, 50.0, 17.0 ],
					"id" : "obj-34",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "azi $1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 421.0, 332.0, 38.0, 15.0 ],
					"id" : "obj-35",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[14]",
					"text" : "coords",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 326.0, 40.0, 17.0 ],
					"id" : "obj-36",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[12]",
					"text" : "index, a, e, d coordinates",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 325.0, 192.0, 17.0 ],
					"id" : "obj-37",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[13]",
					"text" : "<list>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 325.0, 36.0, 17.0 ],
					"id" : "obj-38",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[4]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 324.0, 91.0, 15.0 ],
					"id" : "obj-39",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[36]",
					"text" : "index, x, y, z coordinates",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 357.0, 163.0, 17.0 ],
					"id" : "obj-40",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[37]",
					"text" : "<list>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 357.0, 41.0, 17.0 ],
					"id" : "obj-41",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[38]",
					"text" : "xyz",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 356.0, 26.0, 17.0 ],
					"id" : "obj-42",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[13]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 356.0, 91.0, 15.0 ],
					"id" : "obj-43",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[33]",
					"text" : "index, type, a, e, d",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 389.0, 97.0, 17.0 ],
					"id" : "obj-44",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[34]",
					"text" : "<list>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 389.0, 41.0, 17.0 ],
					"id" : "obj-45",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[35]",
					"text" : "speaker",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 389.0, 50.0, 17.0 ],
					"id" : "obj-46",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[12]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 388.0, 91.0, 15.0 ],
					"id" : "obj-47",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[42]",
					"text" : "source distance (in units) (per inlet)",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 293.0, 192.0, 17.0 ],
					"id" : "obj-48",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[43]",
					"text" : "<float>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 293.0, 43.0, 17.0 ],
					"id" : "obj-49",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[44]",
					"text" : "dist",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 293.0, 48.0, 17.0 ],
					"id" : "obj-50",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[45]",
					"text" : "source elevation (per inlet)",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 277.0, 192.0, 17.0 ],
					"id" : "obj-51",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[46]",
					"text" : "<float>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 277.0, 43.0, 17.0 ],
					"id" : "obj-52",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[47]",
					"text" : "ele",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 277.0, 48.0, 17.0 ],
					"id" : "obj-53",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[48]",
					"text" : "source azimuth (per inlet)",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 261.0, 192.0, 17.0 ],
					"id" : "obj-54",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[49]",
					"text" : "<float>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 261.0, 43.0, 17.0 ],
					"id" : "obj-55",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[50]",
					"text" : "azi",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 261.0, 48.0, 17.0 ],
					"id" : "obj-56",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[16]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 292.0, 91.0, 15.0 ],
					"id" : "obj-57",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[17]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 276.0, 91.0, 15.0 ],
					"id" : "obj-58",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[18]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 260.0, 91.0, 15.0 ],
					"id" : "obj-59",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[28]",
					"text" : "(optional) initial db unit for all voices",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 178.0, 192.0, 17.0 ],
					"id" : "obj-60",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[29]",
					"text" : "<float>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 178.0, 43.0, 17.0 ],
					"id" : "obj-61",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[30]",
					"text" : "@db_unit",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 178.0, 52.0, 17.0 ],
					"id" : "obj-62",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[10]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 177.0, 91.0, 15.0 ],
					"id" : "obj-63",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[25]",
					"text" : "(optional) initial order for all voices",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 162.0, 192.0, 17.0 ],
					"id" : "obj-64",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[26]",
					"text" : "<float>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 162.0, 43.0, 17.0 ],
					"id" : "obj-65",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[27]",
					"text" : "@order",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 162.0, 48.0, 17.0 ],
					"id" : "obj-66",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[9]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 161.0, 91.0, 15.0 ],
					"id" : "obj-67",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[22]",
					"text" : "index, a, e, d coordinates",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 341.0, 192.0, 17.0 ],
					"id" : "obj-68",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[23]",
					"text" : "<list>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 341.0, 41.0, 17.0 ],
					"id" : "obj-69",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[24]",
					"text" : "aed",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 341.0, 26.0, 17.0 ],
					"id" : "obj-70",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[8]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 340.0, 91.0, 15.0 ],
					"id" : "obj-71",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[19]",
					"text" : "prints version info to max-console",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 421.0, 192.0, 17.0 ],
					"id" : "obj-72",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[21]",
					"text" : "version",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 421.0, 48.0, 17.0 ],
					"id" : "obj-73",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[7]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 420.0, 91.0, 15.0 ],
					"id" : "obj-74",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[18]",
					"text" : "prints internal state to max-console",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 405.0, 192.0, 17.0 ],
					"id" : "obj-75",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[20]",
					"text" : "report",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 405.0, 48.0, 17.0 ],
					"id" : "obj-76",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[6]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 404.0, 91.0, 15.0 ],
					"id" : "obj-77",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[15]",
					"text" : "a, d pairs (2D) or a, e, d triples (3D)",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 373.0, 208.0, 17.0 ],
					"id" : "obj-78",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[16]",
					"text" : "<list>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 373.0, 41.0, 17.0 ],
					"id" : "obj-79",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[17]",
					"text" : "speakers",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 373.0, 50.0, 17.0 ],
					"id" : "obj-80",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[5]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 372.0, 91.0, 15.0 ],
					"id" : "obj-81",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "messages",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 214.0, 57.0, 17.0 ],
					"id" : "obj-82",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[9]",
					"text" : "a, e, d input (per inlet)",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 309.0, 192.0, 17.0 ],
					"id" : "obj-83",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[10]",
					"text" : "<list>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 309.0, 36.0, 17.0 ],
					"id" : "obj-84",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[11]",
					"text" : "list",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 309.0, 23.0, 17.0 ],
					"id" : "obj-85",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[3]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 308.0, 91.0, 15.0 ],
					"id" : "obj-86",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[6]",
					"text" : "index, dB decrease per distance unit",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 245.0, 219.0, 17.0 ],
					"id" : "obj-87",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[7]",
					"text" : "<list>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 245.0, 36.0, 17.0 ],
					"id" : "obj-88",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[8]",
					"text" : "db_unit",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 245.0, 48.0, 17.0 ],
					"id" : "obj-89",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[2]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 244.0, 91.0, 15.0 ],
					"id" : "obj-90",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[3]",
					"text" : "index, order (index -1 is global)",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 229.0, 155.0, 17.0 ],
					"id" : "obj-91",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[4]",
					"text" : "<list>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 229.0, 36.0, 17.0 ],
					"id" : "obj-92",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[5]",
					"text" : "order",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 229.0, 48.0, 17.0 ],
					"id" : "obj-93",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg[1]",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 228.0, 91.0, 15.0 ],
					"id" : "obj-94",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[2].descriptor",
					"text" : "(optional) number of outputs (def: 8)",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 128.0, 192.0, 17.0 ],
					"id" : "obj-95",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[2].type",
					"text" : "<int>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 128.0, 35.0, 17.0 ],
					"id" : "obj-96",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[1].descriptor",
					"text" : "(optional) number of input channels (def: 1)",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 154.0, 112.0, 210.0, 17.0 ],
					"id" : "obj-97",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[1].type",
					"text" : "<int>",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 112.0, 112.0, 35.0, 17.0 ],
					"id" : "obj-98",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[2]",
					"text" : "outputs",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 128.0, 48.0, 17.0 ],
					"id" : "obj-99",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "arg[1]",
					"text" : "inputs",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 112.0, 48.0, 17.0 ],
					"id" : "obj-100",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "arguments",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 97.0, 57.0, 17.0 ],
					"id" : "obj-101",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.1.bg",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 111.0, 91.0, 15.0 ],
					"id" : "obj-102",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "arg.2.bg",
					"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 127.0, 91.0, 15.0 ],
					"id" : "obj-103",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open, loop 1, 1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 500.0, 363.0, 77.0, 15.0 ],
					"id" : "obj-104",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "bang" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 500.0, 380.0, 44.0, 17.0 ],
					"id" : "obj-105",
					"numoutlets" : 2,
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open, loop 1, 1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 417.0, 363.0, 77.0, 15.0 ],
					"id" : "obj-106",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dump",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 479.0, 155.0, 34.0, 15.0 ],
					"id" : "obj-107",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dump",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 611.0, 155.0, 34.0, 15.0 ],
					"id" : "obj-108",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend speaker",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 532.0, 291.0, 84.0, 17.0 ],
					"id" : "obj-109",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "speaker positions",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 537.0, 136.0, 88.0, 17.0 ],
					"id" : "obj-110",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "source position",
					"fontname" : "Verdana",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 411.0, 135.0, 81.0, 17.0 ],
					"id" : "obj-111",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p set_speakers",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 532.0, 155.0, 78.0, 17.0 ],
					"id" : "obj-112",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 852.0, 583.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 852.0, 583.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 40.0, 52.0, 17.0 ],
									"id" : "obj-1",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-22.5 22.5 67.5 112.5 157.5 -157.5 -112.5 -67.5",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 140.0, 63.0, 235.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 194.0, 230.0, 32.5, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b",
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 115.0, 32.5, 17.0 ],
									"id" : "obj-4",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend <index>",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 90.0, 204.0, 90.0, 17.0 ],
									"id" : "obj-5",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 104.0, 178.0, 64.0, 17.0 ],
									"id" : "obj-6",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 1 12",
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "", "int" ],
									"fontsize" : 9.0,
									"numinlets" : 5,
									"patching_rect" : [ 104.0, 159.0, 73.0, 17.0 ],
									"id" : "obj-7",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 1",
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 104.0, 139.0, 25.0, 17.0 ],
									"id" : "obj-8",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl iter 1",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 90.0, 115.0, 45.0, 17.0 ],
									"id" : "obj-9",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak aed 1 0. 0. 1.",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 5,
									"patching_rect" : [ 69.0, 228.0, 92.0, 17.0 ],
									"id" : "obj-10",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"patching_rect" : [ 90.0, 43.0, 25.0, 25.0 ],
									"id" : "obj-11",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 69.0, 342.0, 25.0, 25.0 ],
									"id" : "obj-12",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"name_color" : [ 0.496094, 0.996094, 0.996094, 1.0 ],
					"line_color" : [ 0.917969, 0.917969, 0.457031, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"number_font_size" : 9.0,
					"numbers" : 1,
					"point_size" : 5.0,
					"hi_grid_color" : [ 0.457031, 0.457031, 0.996094, 1.0 ],
					"circle_color" : [ 0.21875, 0.238281, 0.328125, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 100.0, 100.0 ],
					"grid_color" : [ 0.6875, 0.6875, 0.949219, 1.0 ],
					"coord_font_size" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 405.0, 187.0, 100.0, 100.0 ],
					"background_color" : [ 0.121094, 0.121094, 0.246094, 1.0 ],
					"point_color" : [ 0.496094, 0.996094, 0.996094, 1.0 ],
					"id" : "obj-113",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"name_color" : [ 0.496094, 0.996094, 0.996094, 1.0 ],
					"line_color" : [ 0.917969, 0.917969, 0.457031, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"number_font_size" : 9.0,
					"numbers" : 1,
					"point_size" : 5.0,
					"hi_grid_color" : [ 0.457031, 0.457031, 0.996094, 1.0 ],
					"circle_color" : [ 0.21875, 0.238281, 0.328125, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 100.0, 100.0 ],
					"grid_color" : [ 0.6875, 0.6875, 0.949219, 1.0 ],
					"coord_font_size" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 532.0, 187.0, 100.0, 100.0 ],
					"background_color" : [ 0.121094, 0.121094, 0.246094, 1.0 ],
					"point_color" : [ 0.496094, 0.996094, 0.996094, 1.0 ],
					"id" : "obj-114",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "bang" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 417.0, 380.0, 44.0, 17.0 ],
					"id" : "obj-115",
					"numoutlets" : 2,
					"save" : [ "#N", "sfplay~", "", 1, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numleds" : 18,
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.270588, 0.694118, 0.898039, 1.0 ],
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"coldcolor" : [ 0.552941, 1.0, 0.803922, 1.0 ],
					"bgcolor" : [ 0.121569, 0.121569, 0.25098, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.388235, 0.168627, 1.0, 1.0 ],
					"patching_rect" : [ 755.0, 446.0, 14.0, 81.0 ],
					"ntepidleds" : 5,
					"id" : "obj-116",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numleds" : 18,
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.270588, 0.694118, 0.898039, 1.0 ],
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"coldcolor" : [ 0.552941, 1.0, 0.803922, 1.0 ],
					"bgcolor" : [ 0.121569, 0.121569, 0.25098, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.388235, 0.168627, 1.0, 1.0 ],
					"patching_rect" : [ 741.0, 446.0, 14.0, 81.0 ],
					"ntepidleds" : 5,
					"id" : "obj-117",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numleds" : 18,
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.270588, 0.694118, 0.898039, 1.0 ],
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"coldcolor" : [ 0.552941, 1.0, 0.803922, 1.0 ],
					"bgcolor" : [ 0.121569, 0.121569, 0.25098, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.388235, 0.168627, 1.0, 1.0 ],
					"patching_rect" : [ 727.0, 446.0, 14.0, 81.0 ],
					"ntepidleds" : 5,
					"id" : "obj-118",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numleds" : 18,
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.270588, 0.694118, 0.898039, 1.0 ],
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"coldcolor" : [ 0.552941, 1.0, 0.803922, 1.0 ],
					"bgcolor" : [ 0.121569, 0.121569, 0.25098, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.388235, 0.168627, 1.0, 1.0 ],
					"patching_rect" : [ 713.0, 446.0, 14.0, 81.0 ],
					"ntepidleds" : 5,
					"id" : "obj-119",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numleds" : 18,
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.270588, 0.694118, 0.898039, 1.0 ],
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"coldcolor" : [ 0.552941, 1.0, 0.803922, 1.0 ],
					"bgcolor" : [ 0.121569, 0.121569, 0.25098, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.388235, 0.168627, 1.0, 1.0 ],
					"patching_rect" : [ 699.0, 446.0, 14.0, 81.0 ],
					"ntepidleds" : 5,
					"id" : "obj-120",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numleds" : 18,
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.270588, 0.694118, 0.898039, 1.0 ],
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"coldcolor" : [ 0.552941, 1.0, 0.803922, 1.0 ],
					"bgcolor" : [ 0.121569, 0.121569, 0.25098, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.388235, 0.168627, 1.0, 1.0 ],
					"patching_rect" : [ 685.0, 446.0, 14.0, 81.0 ],
					"ntepidleds" : 5,
					"id" : "obj-121",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numleds" : 18,
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.270588, 0.694118, 0.898039, 1.0 ],
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"coldcolor" : [ 0.552941, 1.0, 0.803922, 1.0 ],
					"bgcolor" : [ 0.121569, 0.121569, 0.25098, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.388235, 0.168627, 1.0, 1.0 ],
					"patching_rect" : [ 671.0, 446.0, 14.0, 81.0 ],
					"ntepidleds" : 5,
					"id" : "obj-122",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numleds" : 18,
					"outlettype" : [ "float" ],
					"tepidcolor" : [ 0.270588, 0.694118, 0.898039, 1.0 ],
					"hotcolor" : [ 0.811765, 0.356863, 0.635294, 1.0 ],
					"coldcolor" : [ 0.552941, 1.0, 0.803922, 1.0 ],
					"bgcolor" : [ 0.121569, 0.121569, 0.25098, 1.0 ],
					"overloadcolor" : [ 1.0, 0.498039, 0.0, 1.0 ],
					"numinlets" : 1,
					"warmcolor" : [ 0.388235, 0.168627, 1.0, 1.0 ],
					"patching_rect" : [ 657.0, 446.0, 14.0, 81.0 ],
					"ntepidleds" : 5,
					"id" : "obj-123",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"background" : 1,
					"patching_rect" : [ 17.0, 95.0, 340.0, 15.0 ],
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"id" : "obj-124",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"background" : 1,
					"patching_rect" : [ 17.0, 212.0, 340.0, 15.0 ],
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"id" : "obj-125",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ambipanning~ 2 8 @order 10. @db_unit 3.",
					"fontname" : "Verdana",
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 405.0, 428.0, 205.0, 17.0 ],
					"id" : "obj-126",
					"numoutlets" : 8
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"background" : 1,
					"patching_rect" : [ 16.0, 145.0, 340.0, 15.0 ],
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"id" : "obj-127",
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-126", 7 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 6 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 5 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 4 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 3 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 2 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 1 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-126", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 7 ],
					"destination" : [ "obj-33", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 6 ],
					"destination" : [ "obj-33", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 5 ],
					"destination" : [ "obj-33", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [ 620.5, 178.0, 541.5, 178.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 4 ],
					"destination" : [ "obj-33", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 587.5, 665.0, 515.5, 665.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 515.5, 665.0, 515.5, 665.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 659.5, 665.0, 515.5, 665.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 729.5, 665.0, 515.5, 665.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 3 ],
					"destination" : [ "obj-33", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 2 ],
					"destination" : [ "obj-33", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 1 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 308.5, 501.0, 414.5, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 376.5, 501.0, 414.5, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [ 484.5, 353.0, 414.5, 353.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [ 541.5, 308.0, 414.5, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [ 430.5, 353.0, 414.5, 353.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [ 488.5, 178.0, 414.5, 178.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
