{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 50.0, 50.0, 404.0, 24.0 ],
		"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 50.0, 50.0, 404.0, 24.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-84",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 8.0, 6.0, 18.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 34.0, 3.0, 18.0, 18.0 ],
					"prototypename" : "Arial9"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial Bold Italic",
					"fontsize" : 12.754706,
					"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-115",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 4.0, 40.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.0, 2.0, 40.0, 21.0 ],
					"text" : "View",
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-66",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 135.0, 6.0, 18.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.0, 3.0, 18.0, 18.0 ],
					"prototypename" : "Arial9"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial Bold Italic",
					"fontsize" : 12.754706,
					"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"hidden" : 1,
					"hint" : "",
					"id" : "obj-78",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 76.0, 4.0, 58.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 117.0, 2.0, 58.0, 21.0 ],
					"text" : "NoFloat",
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.435669,
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 42.0, 68.0, 62.0, 18.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 32768, 32768, ";", "#Q", "window", "size", 50, 50, 454, 74, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ],
					"text" : "thispatcher",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.595187,
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 793.0, 380.0, 657.0, 488.0 ],
						"bglocked" : 0,
						"defrect" : [ 793.0, 380.0, 657.0, 488.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-29",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 343.0, 113.0, 28.0 ],
									"text" : "window flags nogrow, window flags nozoom"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ],
									"text" : "sel 1 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ],
									"text" : "savewindow 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ],
									"text" : "qlim"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ],
									"text" : "qlim"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 466.0, 323.0, 170.0, 16.0 ],
									"text" : "window flags nofloat, window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ],
									"text" : "window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ],
									"text" : "t b l b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-42",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 343.0, 100.0, 28.0 ],
									"text" : "window flags grow, window flags zoom"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 257.0, 108.0, 18.0 ],
									"text" : "prepend window size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ],
									"text" : "Ymax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ],
									"text" : "Xmax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ],
									"text" : "Ymin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-48",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ],
									"text" : "Xmin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 171.0, 147.0, 31.0, 18.0 ],
									"text" : "pref."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ],
									"text" : "unpack 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-52",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 147.0, 127.0, 16.0 ],
									"text" : "150 50 553 284"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-53",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-54",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ],
									"text" : "pak 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-56",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-57",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 378.0, 19.0, 18.0 ],
									"text" : "t l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 343.0, 158.0, 16.0 ],
									"text" : "window flags float, window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ],
									"text" : "window exec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ],
									"text" : "t b l b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 257.0, 108.0, 18.0 ],
									"text" : "prepend window size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ],
									"text" : "Ymax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ],
									"text" : "Xmax"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ],
									"text" : "Ymin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ],
									"text" : "Xmin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ],
									"text" : "pref."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ],
									"text" : "unpack 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ],
									"text" : "50 50 454 74"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-12",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-15",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ],
									"text" : "pak 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-4",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-3",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ],
									"text" : "view"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 90.0, 82.0, 16.0 ],
									"text" : "presentation $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.435669,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ],
									"text" : "sel 1 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
									"prototypename" : "Arial9"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 3 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-18", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-18", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-40", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-40", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-51", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-51", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-51", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 3 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 1 ],
									"hidden" : 0,
									"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 160.5, 139.0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 43.0, 43.0, 56.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 9.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0
					}
,
					"text" : "p View",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "/" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 25.0, 69.0, 154.0, 140.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 154.0, 140.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "/" ],
									"patching_rect" : [ 15.0, 68.0, 100.0, 18.0 ],
									"text" : "t /"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 15.0, 38.0, 100.0, 18.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 15.0, 14.0, 100.0, 18.0 ],
									"text" : "jcom.init"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-17",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 93.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-53", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 189.0, 11.0, 32.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 9.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0
					}
,
					"text" : "p init"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.0, 17.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 241.0, 5.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 242.0, 28.0, 58.0, 17.0 ],
					"text" : "patcherargs"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 186.0, 56.0, 50.0, 16.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 35.0, 32.5, 16.0 ],
					"text" : "/"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 12.0, 294.0, 319.0, 203.0 ],
						"bglocked" : 0,
						"defrect" : [ 12.0, 294.0, 319.0, 203.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 103.0, 158.0, 67.0, 18.0 ],
									"text" : "s #0_hm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 21.0, 90.0, 32.5, 18.0 ],
									"text" : "t b 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.0, 157.0, 84.0, 18.0 ],
									"text" : "s #0_2b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-63",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 116.0, 68.0, 27.0 ],
									"text" : "size 371 20, align 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 176.0, 93.0, 84.0, 18.0 ],
									"text" : "s #0_2out"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 54.0, 92.0, 84.0, 18.0 ],
									"text" : "s #0_2bf"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 54.0, 65.0, 141.0, 18.0 ],
									"text" : "route set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.0, 30.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [ 185.5, 87.0, 63.5, 87.0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-63", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 159.0, 35.0, 41.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}
,
					"text" : "p input"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 159.0, 7.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 38.0, 405.0, 345.0, 337.0 ],
						"bglocked" : 0,
						"defrect" : [ 38.0, 405.0, 345.0, 337.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "/" ],
									"patching_rect" : [ 22.0, 130.0, 19.0, 18.0 ],
									"text" : "t /"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 22.0, 109.0, 44.0, 18.0 ],
									"text" : "sel /"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 188.0, 76.0, 84.0, 18.0 ],
									"text" : "s #0_2in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 86.0, 84.0, 18.0 ],
									"text" : "r #0_2bf"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 112.0, 206.0, 84.0, 18.0 ],
									"text" : "r #0_2b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 136.0, 175.0, 67.0, 18.0 ],
									"text" : "s #0_hm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 135.0, 156.0, 22.0, 18.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 206.0, 83.0, 18.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "clear" ],
									"patching_rect" : [ 22.0, 182.0, 74.0, 18.0 ],
									"text" : "t s clear"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-130",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 102.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-131",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 188.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-132",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 47.333328, 284.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [ 31.5, 151.0, 16.0, 151.0, 16.0, 31.0, 183.0, 31.0, 183.0, 70.0, 197.5, 70.0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 111.5, 156.5, 31.5, 156.5 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [ 111.5, 110.0, 144.5, 110.0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 56.5, 156.0, 31.5, 156.0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 37.0, 128.0, 74.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}
,
					"text" : "p prep_back"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 779.0, 44.0, 683.0, 684.0 ],
						"bglocked" : 0,
						"defrect" : [ 779.0, 44.0, 683.0, 684.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 565.0, 540.0, 101.0, 16.0 ],
									"text" : "append <separator>"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 537.0, 100.0, 18.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-79",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 272.0, 499.0, 101.0, 16.0 ],
									"text" : "append <separator>"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 537.0, 493.0, 119.0, 18.0 ],
									"text" : "sprintf append ( %ss :)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 416.0, 492.0, 100.0, 18.0 ],
									"text" : "prepend prefix"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-150",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 382.0, 467.0, 121.0, 18.0 ],
									"text" : "route append prefix clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-149",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 423.0, 367.0, 111.0, 18.0 ],
									"text" : "sprintf lookfor jcom.%s"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 354.0, 317.0, 47.0, 18.0 ],
									"text" : "sel error"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "", "", "bang" ],
									"patching_rect" : [ 382.0, 342.0, 140.5, 18.0 ],
									"text" : "t b s s b"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 428.0, 629.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-145",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 382.0, 367.0, 35.0, 17.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-144",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 355.0, 295.0, 43.0, 18.0 ],
									"text" : "zl iter 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "", "bang", "clear" ],
									"patching_rect" : [ 355.0, 244.0, 137.0, 18.0 ],
									"text" : "t b s b clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 25.0, 69.0, 221.0, 361.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 221.0, 361.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-34",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 230.0, 138.0, 15.0 ],
													"text" : "parameter message return error"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 50.0, 200.0, 44.0, 17.0 ],
													"text" : "sel error"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "error" ],
													"patching_rect" : [ 70.0, 127.0, 43.0, 17.0 ],
													"text" : "t b error"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 178.0, 62.0, 17.0 ],
													"text" : "zl group 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 70.0, 100.0, 95.0, 17.0 ],
													"text" : "route done services"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-138",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-139",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 70.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-140",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 51.0, 305.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-141",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 146.0, 305.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-138", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-139", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-140", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-141", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-21", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-21", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 117.5, 172.0, 59.5, 172.0 ],
													"source" : [ "obj-21", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-140", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-34", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 282.0, 189.0, 310.0, 18.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 9.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 9.0
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 857.0, 124.0, 414.0, 670.0 ],
										"bglocked" : 0,
										"defrect" : [ 857.0, 124.0, 414.0, 670.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 73.0, 251.0, 30.0, 17.0 ],
													"text" : "sel 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 467.0, 324.0, 334.0, 324.0 ],
														"bglocked" : 0,
														"defrect" : [ 467.0, 324.0, 334.0, 324.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"id" : "obj-106",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 219.0, 99.0, 94.0, 18.0 ],
																	"text" : " just below the root"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"id" : "obj-48",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 161.0, 80.0, 151.0, 18.0 ],
																	"text" : "v this won't work for parameters"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-35",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 68.0, 200.0, 32.5, 18.0 ],
																	"text" : "t b s"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 68.0, 226.0, 126.0, 17.0 ],
																	"text" : "zl reg"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-22",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 68.0, 253.0, 34.0, 17.0 ],
																	"text" : "zl sub"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-11",
																	"maxclass" : "newobj",
																	"numinlets" : 4,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 100.0, 161.0, 18.0 ],
																	"text" : "combine s / s :service @triggers 2"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-5",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 50.0, 149.0, 32.5, 18.0 ],
																	"text" : "t b l"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 127.0, 86.0, 18.0 ],
																	"text" : "prepend address"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 51.0, 174.0, 100.0, 18.0 ],
																	"text" : "jcom.receive"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-3",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-4",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 144.0, 40.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-7",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 174.0, 173.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-8",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 68.0, 280.0, 25.0, 25.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-1", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-22", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-35", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-35", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-5", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 115.0, 140.0, 111.0, 17.0 ],
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}
,
													"text" : "p name"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-125",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 180.0, 307.0, 63.0, 18.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-124",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 183.0, 232.0, 22.0, 18.0 ],
													"text" : "t 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-121",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 76.0, 515.0, 403.0, 381.0 ],
														"bglocked" : 0,
														"defrect" : [ 76.0, 515.0, 403.0, 381.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-93",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 109.0, 100.0, 72.0, 18.0 ],
																	"text" : "prepend store"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-91",
																	"linecount" : 3,
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 125.0, 54.0, 39.0 ],
																	"text" : "sort -1 -1, dump, clear"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-90",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 213.0, 145.0, 108.0, 16.0 ],
																	"text" : "sort -1 -1, dump, clear"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-86",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 200.0, 204.0, 68.0, 18.0 ],
																	"text" : "route symbol"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-82",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 4,
																	"outlettype" : [ "", "", "", "" ],
																	"patching_rect" : [ 195.0, 171.0, 100.0, 18.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0
																	}
,
																	"text" : "coll #0_sort2 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-77",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 197.0, 242.0, 100.0, 18.0 ],
																	"text" : "prepend append"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-117",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-118",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 109.0, 40.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-119",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 213.0, 40.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-120",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 197.0, 320.0, 25.0, 25.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-91", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-117", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-93", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-118", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-90", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-119", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-120", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-77", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-86", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-82", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-77", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-86", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-82", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-90", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-82", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-91", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-82", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-93", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 39.0, 403.0, 97.0, 18.0 ],
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}
,
													"text" : "p sort_names"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-116",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 521.0, 110.0, 327.0, 337.0 ],
														"bglocked" : 0,
														"defrect" : [ 521.0, 110.0, 327.0, 337.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 9.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-83",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"outlettype" : [ "int", "bang", "bang" ],
																	"patching_rect" : [ 46.0, 58.0, 203.0, 18.0 ],
																	"text" : "t i b b"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-79",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 168.0, 215.0, 101.0, 16.0 ],
																	"text" : "append <separator>"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-75",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 44.0, 213.0, 119.0, 18.0 ],
																	"text" : "sprintf append ( %ss :)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-74",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "node" ],
																	"patching_rect" : [ 45.0, 191.0, 38.0, 18.0 ],
																	"text" : "t node"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-72",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 46.0, 168.0, 47.0, 18.0 ],
																	"text" : "sel error"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-54",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ],
																	"patching_rect" : [ 46.0, 99.0, 32.0, 18.0 ],
																	"text" : "t b i"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-53",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 46.0, 121.0, 58.0, 18.0 ],
																	"text" : "zl reg"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-52",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 46.0, 148.0, 34.0, 18.0 ],
																	"text" : "zl nth"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-110",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 48.0, 23.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-112",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 86.0, 88.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-113",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 165.0, 288.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-115",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 230.0, 81.0, 25.0, 25.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-83", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-110", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-53", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-112", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-72", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-52", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-53", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-52", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-54", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-54", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-74", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-72", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-72", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-74", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-113", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-75", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-113", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-79", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-115", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-83", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-83", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-79", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-83", 1 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 134.0, 372.0, 160.0, 18.0 ],
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 9.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 9.0
													}
,
													"text" : "p separators"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 25.0, 324.0, 32.5, 18.0 ],
													"text" : "t 1 b"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 24.0, 502.0, 100.0, 18.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-102",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 308.0, 89.0, 74.0, 18.0 ],
													"text" : "prepend prefix"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-59",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 51.0, 113.0, 54.0, 27.0 ],
													"text" : "sort -1 0, dump"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 134.0, 347.0, 46.0, 18.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ],
													"patching_rect" : [ 95.0, 325.0, 59.0, 18.0 ],
													"text" : "unpack s 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 78.0, 302.0, 95.0, 18.0 ],
													"text" : "zl rev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 105.0, 251.0, 68.0, 18.0 ],
													"text" : "route symbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-49",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 78.0, 279.0, 95.0, 18.0 ],
													"text" : "pack 0 s"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 78.0, 200.0, 72.0, 18.0 ],
													"text" : "prepend store"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 78.0, 177.0, 73.0, 18.0 ],
													"text" : "pack s 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 78.0, 225.0, 100.0, 18.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}
,
													"text" : "coll #0_sort 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 78.0, 91.0, 101.5, 18.0 ],
													"text" : "t s s"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 78.0, 58.0, 326.0, 18.0 ],
													"text" : "route append prefix"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-130",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 24.0, 289.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-131",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 51.0, 19.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-132",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 78.0, 18.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-133",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "clear" ],
													"patching_rect" : [ 183.5, 188.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-134",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 115.0, 118.0, 18.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-135",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 274.5, 116.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-136",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 308.799988, 597.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-102", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-10", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-10", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-102", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-104", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-105", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-121", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-105", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-121", 2 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-116", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-116", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-121", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-124", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-105", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-130", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-131", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-132", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-133", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-133", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-134", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-116", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-135", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 2 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-135", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [ 87.5, 142.5, 87.5, 142.5 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-36", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-37", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-50", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-121", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-55", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-116", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 60.5, 222.5, 87.5, 222.5 ],
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 56.0, 217.0, 245.0, 18.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 9.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 9.0
									}
,
									"text" : "p feed_menu"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 355.0, 273.0, 33.0, 17.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-127",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 382.0, 423.0, 132.0, 34.0 ],
									"text" : "jcom.namespace+ @format umenu_prefix"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 173.0, 84.0, 18.0 ],
									"text" : "s #0_one"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 161.0, 256.0, 84.0, 18.0 ],
									"text" : "r #0_one"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-33",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 572.0, 158.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-32",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 282.0, 159.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "clear", "/" ],
									"patching_rect" : [ 231.0, 351.0, 100.0, 18.0 ],
									"text" : "t clear /"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 269.0, 382.0, 60.0, 18.0 ],
									"text" : "s #0_2bf"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 231.0, 330.0, 100.0, 18.0 ],
									"text" : "jcom.savebang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 279.0, 85.0, 18.0 ],
									"text" : "s #0_2b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-65",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 256.0, 102.0, 16.0 ],
									"text" : "size 168 20, align 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "bang", "bang" ],
									"patching_rect" : [ 23.0, 137.0, 58.0, 18.0 ],
									"text" : "t 1 b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 161.0, 67.0, 18.0 ],
									"text" : "s #0_hi"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 25.0, 69.0, 250.0, 234.0 ],
										"bglocked" : 0,
										"defrect" : [ 25.0, 69.0, 250.0, 234.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 82.0, 48.0, 100.0, 18.0 ],
													"text" : "sel 0 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 25.0, 99.0, 147.0, 16.0 ],
													"text" : "presentation_rect 186 2 $1 $2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 117.0, 78.0, 50.0, 16.0 ],
													"text" : "203 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 33.0, 78.0, 50.0, 16.0 ],
													"text" : "168 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 84.0, 27.0, 67.0, 18.0 ],
													"text" : "r #0_hi"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-7",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 25.0, 175.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-83", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 256.0, 302.0, 67.0, 18.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}
,
									"text" : "p menu_size"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 19.0, 84.0, 18.0 ],
									"text" : "r #0_2in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 256.0, 255.0, 67.0, 18.0 ],
									"text" : "r #0_hm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 256.0, 278.0, 80.0, 18.0 ],
									"text" : "prepend hidden"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 161.0, 282.0, 84.0, 18.0 ],
									"text" : "r #0_2m"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 151.0, 140.0, 91.0, 20.0 ],
									"text" : "route none one"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "int", "", "", "clear", "" ],
									"patching_rect" : [ 22.0, 50.0, 342.0, 20.0 ],
									"text" : "t 1 l s clear s"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-101",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 98.0, 86.0, 132.0, 48.0 ],
									"text" : "jcom.namespace+ children @format umenu_prefix"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-128",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 63.0, 380.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 2 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-101", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"hidden" : 0,
									"midpoints" : [ 582.5, 400.0, 391.5, 400.0 ],
									"source" : [ "obj-142", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 1 ],
									"hidden" : 0,
									"midpoints" : [ 291.5, 212.0, 378.5, 212.0 ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 5 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-143", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-143", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-143", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-145", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-147", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-147", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-148", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"hidden" : 0,
									"midpoints" : [ 432.5, 400.0, 391.5, 400.0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-150", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-17", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-99", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 4 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-99", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 3 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-99", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-99", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 245.0, 51.0, 69.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}
,
					"text" : "p prep_menu"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 91.0, 426.0, 367.0, 372.0 ],
						"bglocked" : 0,
						"defrect" : [ 91.0, 426.0, 367.0, 372.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 280.0, 84.0, 18.0 ],
									"text" : "r #0_2i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 190.0, 116.0, 67.0, 18.0 ],
									"text" : "s #0_hi"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 249.0, 67.0, 18.0 ],
									"text" : "s #0_hi"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 135.0, 67.0, 18.0 ],
									"text" : "r #0_hi"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 173.0, 227.0, 34.0, 18.0 ],
									"text" : "t 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 161.0, 80.0, 18.0 ],
									"text" : "prepend hidden"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 154.0, 116.0, 34.0, 18.0 ],
									"text" : "t s 0"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 42.0, 326.0, 378.0, 319.0 ],
										"bglocked" : 0,
										"defrect" : [ 42.0, 326.0, 378.0, 319.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-71",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 173.0, 174.0, 40.0, 20.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-72",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 173.0, 100.0, 40.0, 20.0 ],
													"text" : "t b s"
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 194.0, 148.0, 73.0, 20.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"frgb" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
													"id" : "obj-79",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 115.0, 135.0, 62.0 ],
													"text" : "!!! because when prefix is set as \"/\" there is automatically a \"Mac:\" added before !!?!",
													"textcolor" : [ 0.811765, 0.372549, 0.372549, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-80",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 193.0, 122.0, 144.0, 20.0 ],
													"text" : "regexp .+:/ @substitute /"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-81",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 173.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-82",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 173.0, 254.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-72", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-77", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"hidden" : 0,
													"midpoints" : [ 296.25, 145.0, 203.5, 145.0 ],
													"source" : [ "obj-80", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-81", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 154.0, 92.0, 107.0, 20.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}
,
									"text" : "p filter_harddrive:/"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 172.0, 201.0, 85.0, 20.0 ],
									"text" : "sel one"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 154.0, 146.0, 132.0, 48.0 ],
									"text" : "jcom.namespace @lookfor instances @format umenu_prefix"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-124",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 154.0, 57.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-125",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 102.0, 312.5, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-147", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [ 220.0, 199.0, 181.5, 199.0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-98", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-98", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 245.0, 107.0, 118.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}
,
					"text" : "p prep_instance"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 393.0, 539.0, 402.0, 348.0 ],
						"bglocked" : 0,
						"defrect" : [ 393.0, 539.0, 402.0, 348.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 283.0, 276.0, 84.0, 18.0 ],
									"text" : "s #0_2bg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 199.0, 249.0, 103.0, 18.0 ],
									"text" : "t s 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 177.0, 62.0, 84.0, 18.0 ],
									"text" : "r #0_2out"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.0, 94.0, 57.0, 18.0 ],
									"text" : "sprintf %s/"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 305.0, 115.0, 84.0, 18.0 ],
									"text" : "s #0_2bf"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 199.0, 275.0, 84.0, 18.0 ],
									"text" : "s #0_2bf"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 295.0, 18.0, 84.0, 18.0 ],
									"text" : "s #0_2in"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 260.0, 84.0, 18.0 ],
									"text" : "s #0_2b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 108.0, 304.0, 67.0, 18.0 ],
									"text" : "s #0_hm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-63",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 219.0, 68.0, 27.0 ],
									"text" : "size 371 20, align 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 108.0, 277.0, 22.0, 18.0 ],
									"text" : "t 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-170",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 146.0, 216.0, 162.0, 18.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-169",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 107.0, 184.0, 100.0, 18.0 ],
									"text" : "sel value"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-168",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 107.0, 158.0, 100.0, 18.0 ],
									"text" : "zl iter 1"
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-161",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 107.0, 106.0, 115.0, 34.0 ],
									"text" : "jcom.namespace @lookfor attributes"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 44.0, 412.0, 247.0, 258.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 412.0, 247.0, 258.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-120",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 68.0, 127.0, 66.0, 20.0 ],
													"text" : "zl ecils 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 50.0, 99.0, 91.0, 20.0 ],
													"text" : "regexp (.*)(\\\\._)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-125",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-126",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 74.0, 165.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-126", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-120", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-125", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-120", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-48", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-126", 0 ],
													"hidden" : 0,
													"midpoints" : [ 113.5, 158.0, 83.5, 158.0 ],
													"source" : [ "obj-48", 3 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 289.0, 46.0, 72.0, 18.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}
,
									"text" : "p filter_noInst"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-120",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.333344, 6.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-121",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 146.0, 246.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-170", 1 ],
									"hidden" : 0,
									"midpoints" : [ 186.5, 89.5, 298.5, 89.5 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-170", 1 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-168", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-168", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-170", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 155.5, 241.5, 208.5, 241.5 ],
									"source" : [ "obj-170", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-63", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 253.0, 169.0, 47.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}
,
					"text" : "p output"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 5,
							"minor" : 1,
							"revision" : 9
						}
,
						"rect" : [ 432.0, 565.0, 589.0, 225.0 ],
						"bglocked" : 0,
						"defrect" : [ 432.0, 565.0, 589.0, 225.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 5,
											"minor" : 1,
											"revision" : 9
										}
,
										"rect" : [ 107.0, 46.0, 350.0, 631.0 ],
										"bglocked" : 0,
										"defrect" : [ 107.0, 46.0, 350.0, 631.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "/" ],
													"patching_rect" : [ 67.0, 79.0, 19.0, 18.0 ],
													"text" : "t /"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-111",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 66.0, 100.0, 84.0, 18.0 ],
													"text" : "s #0_2in"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 67.0, 59.0, 90.0, 18.0 ],
													"text" : "sel /"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "" ],
													"patching_rect" : [ 96.0, 146.0, 60.5, 18.0 ],
													"text" : "t 1 s"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 52.0, 123.0, 105.0, 18.0 ],
													"text" : "gate 2 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 138.0, 172.0, 100.0, 18.0 ],
													"text" : "sprintf %s/"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 53.0, 14.0, 84.0, 18.0 ],
													"text" : "r #0_2bg"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-50",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 74.0, 131.0, 66.0, 20.0 ],
																	"text" : "zl slice 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-80",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 5,
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 50.0, 100.0, 115.0, 20.0 ],
																	"text" : "regexp (\\\\/)(.*)"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-51",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-52",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 121.0, 211.0, 25.0, 25.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-50", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-80", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-51", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-80", 1 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 237.0, 445.0, 77.0, 18.0 ],
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0
													}
,
													"text" : "p leading/slash"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 237.0, 501.0, 84.0, 18.0 ],
													"text" : "s #0_2m"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 237.0, 473.0, 100.0, 18.0 ],
													"text" : "prepend setsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-59",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 533.0, 48.0, 18.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 52.0, 510.0, 100.0, 18.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 52.0, 487.0, 124.0, 18.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-50",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 74.0, 131.0, 66.0, 20.0 ],
																	"text" : "zl slice 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 12.0,
																	"id" : "obj-80",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 5,
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 50.0, 100.0, 115.0, 20.0 ],
																	"text" : "regexp (\\\\/)(.*)"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-51",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-52",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 121.0, 211.0, 25.0, 25.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-50", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-80", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-51", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-80", 1 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 52.0, 454.0, 77.0, 18.0 ],
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0
													}
,
													"text" : "p leading/slash"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-45",
																	"linecount" : 2,
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 227.0, 44.0, 50.0, 27.0 ],
																	"text" : "/Sel.1/Selador.1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-13",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 220.0, 182.0, 50.0, 16.0 ],
																	"text" : "/Sel.1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 235.0, 137.0, 51.0, 17.0 ],
																	"text" : "zl ecils 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 5,
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 238.0, 95.0, 98.0, 17.0 ],
																	"text" : "regexp (.*)(\\\\/.*)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-36",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 50.0, 142.0, 51.0, 17.0 ],
																	"text" : "zl ecils 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-37",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 5,
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 53.0, 100.0, 98.0, 17.0 ],
																	"text" : "regexp (.*)(\\\\/.*)"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-39",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 53.0, 40.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-40",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 219.0, 25.0, 25.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-36", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-37", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-39", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-45", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 230.0, 227.0, 42.0, 18.0 ],
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0
													}
,
													"text" : "p slash"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 265.0, 48.0, 18.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 52.0, 326.0, 198.0, 18.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 52.0, 293.0, 100.0, 18.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 52.0, 590.0, 84.0, 18.0 ],
													"text" : "s #0_2i"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 157.0, 557.0, 84.0, 18.0 ],
													"text" : "s #0_2m"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-82",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 170.0, 450.0, 67.0, 18.0 ],
													"text" : "s #0_hi"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 143.0, 449.0, 22.0, 18.0 ],
													"text" : "t 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 564.0, 100.0, 18.0 ],
													"text" : "prepend setsymbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.0, 531.0, 100.0, 18.0 ],
													"text" : "prepend symbol"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-75",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 52.0, 419.0, 204.0, 18.0 ],
													"text" : "jcom.oscinstance"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 125.0, 269.0, 84.0, 18.0 ],
													"text" : "s #0_2in"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 52.0, 361.0, 100.0, 18.0 ],
													"text" : "jcom.oscroute"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 52.0, 200.0, 197.0, 18.0 ],
													"text" : "t l l"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 136.0, 227.0, 84.0, 18.0 ],
													"text" : "s #0_2bf"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 10.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "/", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 5,
															"minor" : 1,
															"revision" : 9
														}
,
														"rect" : [ 1066.0, 71.0, 333.0, 459.0 ],
														"bglocked" : 0,
														"defrect" : [ 1066.0, 71.0, 333.0, 459.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-17",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 161.0, 259.0, 57.0, 18.0 ],
																	"text" : "sprintf %s/"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-11",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 172.0, 286.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "/" ],
																	"patching_rect" : [ 106.0, 334.0, 18.0, 18.0 ],
																	"text" : "t /"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-10",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 108.0, 270.0, 32.5, 18.0 ],
																	"text" : "sel /"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-52",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 106.0, 229.0, 51.0, 17.0 ],
																	"text" : "zl ecils 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-54",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 5,
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 110.0, 200.0, 98.0, 17.0 ],
																	"text" : "regexp (.*\\\\/)(.*)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 151.0, 352.0, 51.0, 17.0 ],
																	"text" : "zl ecils 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-2",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 5,
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 127.0, 321.0, 98.0, 17.0 ],
																	"text" : "regexp (.*)(\\\\/.*)"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-60",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "/" ],
																	"patching_rect" : [ 49.0, 160.0, 19.0, 18.0 ],
																	"text" : "t /"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"id" : "obj-59",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 49.0, 89.0, 32.5, 18.0 ],
																	"text" : "sel /"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-46",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 89.0, 153.0, 51.0, 17.0 ],
																	"text" : "zl ecils 1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-48",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 5,
																	"outlettype" : [ "", "", "", "", "" ],
																	"patching_rect" : [ 73.0, 124.0, 98.0, 17.0 ],
																	"text" : "regexp (.*)(\\\\/.*)"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-3",
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 49.0, 21.0, 25.0, 25.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-4",
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 98.0, 423.0, 25.0, 25.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-10", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-17", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-2", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-59", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-46", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-46", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-48", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-52", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-52", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-54", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-48", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-59", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-60", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-59", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-60", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 52.0, 228.0, 82.0, 18.0 ],
													"saved_object_attributes" : 													{
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 10.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0
													}
,
													"text" : "p removeSlashs"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 142.0, 14.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-111", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-21", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-28", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-5", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-57", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-57", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-75", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-75", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-75", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-75", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-77", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-8", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 198.0, 46.0, 62.0, 18.0 ],
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0
									}
,
									"text" : "p back"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 197.5, 16.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 67.0, 112.0, 84.0, 18.0 ],
									"text" : "s #0_2b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 445.0, 158.0, 84.0, 18.0 ],
									"text" : "s #0_2b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 38.0, 148.0, 67.0, 18.0 ],
									"text" : "s #0_hm"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-65",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 89.0, 101.0, 16.0 ],
									"text" : "size 168 20, align 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 445.0, 107.0, 38.0, 18.0 ],
									"text" : "del 50"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 445.0, 133.0, 50.0, 16.0 ],
									"text" : "set 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 445.0, 82.0, 100.0, 18.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 445.0, 60.0, 100.0, 18.0 ],
									"text" : "route toggle"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 85.0, 63.0, 40.0, 18.0 ],
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 38.0, 111.0, 22.0, 18.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-115",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 36.5, 23.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-116",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 445.0, 23.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"hidden" : 0,
									"midpoints" : [  ],
									"source" : [ "obj-65", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 37.0, 185.0, 168.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}
,
					"text" : "p back_output"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-105",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 253.0, 193.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"align" : 1,
					"arrow" : 0,
					"arrowbgcolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"arrowcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"framecolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"id" : "obj-81",
					"items" : "/",
					"maxclass" : "umenu",
					"menumode" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 37.0, 99.0, 69.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 2.0, 17.0, 20.0 ],
					"togcolor" : [ 0.643137, 0.643137, 0.643137, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"arrowbgcolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"arrowcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"framecolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"hidden" : 1,
					"id" : "obj-13",
					"items" : "<empty>",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 245.0, 137.0, 35.0, 20.0 ],
					"prefix" : "/Sel.bas/intensity.",
					"presentation" : 1,
					"presentation_rect" : [ 354.0, 2.0, 35.0, 20.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowbgcolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"arrowcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"framecolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"id" : "obj-47",
					"items" : "<empty>",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 245.0, 77.0, 116.0, 20.0 ],
					"prefix" : "Servo:/",
					"presentation" : 1,
					"presentation_rect" : [ 186.0, 2.0, 203.0, 20.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"align" : 2,
					"arrow" : 0,
					"arrowbgcolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"arrowcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"autopopulate" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"framecolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"id" : "obj-28",
					"items" : "/",
					"maxclass" : "umenu",
					"menumode" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 37.0, 158.0, 168.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 2.0, 168.0, 20.0 ],
					"togcolor" : [ 0.643137, 0.643137, 0.643137, 1.0 ],
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowbgcolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"arrowcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"framecolor" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"id" : "obj-5",
					"items" : [ "<separator>", ",", "(", "parameters", ":)", ",", "BCF/midiIn", ",", "BCF/midiOut", ",", "BCF/model/mute", ",", "BCF/track.1/fader/address", ",", "BCF/track.1/fader/enable", ",", "BCF/track.1/fader/mode", ",", "BCF/track.1/fader/model/mute", ",", "BCF/track.1/fader/power", ",", "BCF/track.1/fader/value", ",", "BCF/track.1/key.1/address", ",", "BCF/track.1/key.1/enable", ",", "BCF/track.1/key.1/mode", ",", "BCF/track.1/key.1/model/mute", ",", "BCF/track.1/key.1/power", ",", "BCF/track.1/key.1/value", ",", "BCF/track.1/key.2/address", ",", "BCF/track.1/key.2/enable", ",", "BCF/track.1/key.2/mode", ",", "BCF/track.1/key.2/model/mute", ",", "BCF/track.1/key.2/power", ",", "BCF/track.1/key.2/value", ",", "BCF/track.1/model/mute", ",", "BCF/track.1/press.1/address", ",", "BCF/track.1/press.1/enable", ",", "BCF/track.1/press.1/mode", ",", "BCF/track.1/press.1/model/mute", ",", "BCF/track.1/press.1/power", ",", "BCF/track.1/press.1/value", ",", "BCF/track.1/press.2/address", ",", "BCF/track.1/press.2/enable", ",", "BCF/track.1/press.2/mode", ",", "BCF/track.1/press.2/model/mute", ",", "BCF/track.1/press.2/power", ",", "BCF/track.1/press.2/value", ",", "BCF/track.1/press.3/address", ",", "BCF/track.1/press.3/enable", ",", "BCF/track.1/press.3/mode", ",", "BCF/track.1/press.3/model/mute", ",", "BCF/track.1/press.3/power", ",", "BCF/track.1/press.3/value", ",", "BCF/track.1/press.4/address", ",", "BCF/track.1/press.4/enable", ",", "BCF/track.1/press.4/mode", ",", "BCF/track.1/press.4/model/mute", ",", "BCF/track.1/press.4/power", ",", "BCF/track.1/press.4/value", ",", "BCF/track.1/turn.1/address", ",", "BCF/track.1/turn.1/enable", ",", "BCF/track.1/turn.1/mode", ",", "BCF/track.1/turn.1/model/mute", ",", "BCF/track.1/turn.1/power", ",", "BCF/track.1/turn.1/value", ",", "BCF/track.1/turn.2/address", ",", "BCF/track.1/turn.2/enable", ",", "BCF/track.1/turn.2/mode", ",", "BCF/track.1/turn.2/model/mute", ",", "BCF/track.1/turn.2/power", ",", "BCF/track.1/turn.2/value", ",", "BCF/track.1/turn.3/address", ",", "BCF/track.1/turn.3/enable", ",", "BCF/track.1/turn.3/mode", ",", "BCF/track.1/turn.3/model/mute", ",", "BCF/track.1/turn.3/power", ",", "BCF/track.1/turn.3/value", ",", "BCF/track.1/turn.4/address", ",", "BCF/track.1/turn.4/enable", ",", "BCF/track.1/turn.4/mode", ",", "BCF/track.1/turn.4/model/mute", ",", "BCF/track.1/turn.4/power", ",", "BCF/track.1/turn.4/value", ",", "BCF/track.2/fader/address", ",", "BCF/track.2/fader/enable", ",", "BCF/track.2/fader/mode", ",", "BCF/track.2/fader/model/mute", ",", "BCF/track.2/fader/power", ",", "BCF/track.2/fader/value", ",", "BCF/track.2/key.1/address", ",", "BCF/track.2/key.1/enable", ",", "BCF/track.2/key.1/mode", ",", "BCF/track.2/key.1/model/mute", ",", "BCF/track.2/key.1/power", ",", "BCF/track.2/key.1/value", ",", "BCF/track.2/key.2/address", ",", "BCF/track.2/key.2/enable", ",", "BCF/track.2/key.2/mode", ",", "BCF/track.2/key.2/model/mute", ",", "BCF/track.2/key.2/power", ",", "BCF/track.2/key.2/value", ",", "BCF/track.2/model/mute", ",", "BCF/track.2/press.1/address", ",", "BCF/track.2/press.1/enable", ",", "BCF/track.2/press.1/mode", ",", "BCF/track.2/press.1/model/mute", ",", "BCF/track.2/press.1/power", ",", "BCF/track.2/press.1/value", ",", "BCF/track.2/press.2/address", ",", "BCF/track.2/press.2/enable", ",", "BCF/track.2/press.2/mode", ",", "BCF/track.2/press.2/model/mute", ",", "BCF/track.2/press.2/power", ",", "BCF/track.2/press.2/value", ",", "BCF/track.2/press.3/address", ",", "BCF/track.2/press.3/enable", ",", "BCF/track.2/press.3/mode", ",", "BCF/track.2/press.3/model/mute", ",", "BCF/track.2/press.3/power", ",", "BCF/track.2/press.3/value", ",", "BCF/track.2/press.4/address", ",", "BCF/track.2/press.4/enable", ",", "BCF/track.2/press.4/mode", ",", "BCF/track.2/press.4/model/mute", ",", "BCF/track.2/press.4/power", ",", "BCF/track.2/press.4/value", ",", "BCF/track.2/turn.1/address", ",", "BCF/track.2/turn.1/enable", ",", "BCF/track.2/turn.1/mode", ",", "BCF/track.2/turn.1/model/mute", ",", "BCF/track.2/turn.1/power", ",", "BCF/track.2/turn.1/value", ",", "BCF/track.2/turn.2/address", ",", "BCF/track.2/turn.2/enable", ",", "BCF/track.2/turn.2/mode", ",", "BCF/track.2/turn.2/model/mute", ",", "BCF/track.2/turn.2/power", ",", "BCF/track.2/turn.2/value", ",", "BCF/track.2/turn.3/address", ",", "BCF/track.2/turn.3/enable", ",", "BCF/track.2/turn.3/mode", ",", "BCF/track.2/turn.3/model/mute", ",", "BCF/track.2/turn.3/power", ",", "BCF/track.2/turn.3/value", ",", "BCF/track.2/turn.4/address", ",", "BCF/track.2/turn.4/enable", ",", "BCF/track.2/turn.4/mode", ",", "BCF/track.2/turn.4/model/mute", ",", "BCF/track.2/turn.4/power", ",", "BCF/track.2/turn.4/value", ",", "BCF/track.3/fader/address", ",", "BCF/track.3/fader/enable", ",", "BCF/track.3/fader/mode", ",", "BCF/track.3/fader/model/mute", ",", "BCF/track.3/fader/power", ",", "BCF/track.3/fader/value", ",", "BCF/track.3/key.1/address", ",", "BCF/track.3/key.1/enable", ",", "BCF/track.3/key.1/mode", ",", "BCF/track.3/key.1/model/mute", ",", "BCF/track.3/key.1/power", ",", "BCF/track.3/key.1/value", ",", "BCF/track.3/key.2/address", ",", "BCF/track.3/key.2/enable", ",", "BCF/track.3/key.2/mode", ",", "BCF/track.3/key.2/model/mute", ",", "BCF/track.3/key.2/power", ",", "BCF/track.3/key.2/value", ",", "BCF/track.3/model/mute", ",", "BCF/track.3/press.1/address", ",", "BCF/track.3/press.1/enable", ",", "BCF/track.3/press.1/mode", ",", "BCF/track.3/press.1/model/mute", ",", "BCF/track.3/press.1/power", ",", "BCF/track.3/press.1/value", ",", "BCF/track.3/press.2/address", ",", "BCF/track.3/press.2/enable", ",", "BCF/track.3/press.2/mode", ",", "BCF/track.3/press.2/model/mute", ",", "BCF/track.3/press.2/power", ",", "BCF/track.3/press.2/value", ",", "BCF/track.3/press.3/address", ",", "BCF/track.3/press.3/enable", ",", "BCF/track.3/press.3/mode", ",", "BCF/track.3/press.3/model/mute", ",", "BCF/track.3/press.3/power", ",", "BCF/track.3/press.3/value", ",", "BCF/track.3/press.4/address", ",", "BCF/track.3/press.4/enable", ",", "BCF/track.3/press.4/mode", ",", "BCF/track.3/press.4/model/mute", ",", "BCF/track.3/press.4/power", ",", "BCF/track.3/press.4/value", ",", "BCF/track.3/turn.1/address", ",", "BCF/track.3/turn.1/enable", ",", "BCF/track.3/turn.1/mode", ",", "BCF/track.3/turn.1/model/mute", ",", "BCF/track.3/turn.1/power", ",", "BCF/track.3/turn.1/value", ",", "BCF/track.3/turn.2/address", ",", "BCF/track.3/turn.2/enable", ",", "BCF/track.3/turn.2/mode", ",", "BCF/track.3/turn.2/model/mute", ",", "BCF/track.3/turn.2/power", ",", "BCF/track.3/turn.2/value", ",", "BCF/track.3/turn.3/address", ",", "BCF/track.3/turn.3/enable", ",", "BCF/track.3/turn.3/mode", ",", "BCF/track.3/turn.3/model/mute", ",", "BCF/track.3/turn.3/power", ",", "BCF/track.3/turn.3/value", ",", "BCF/track.3/turn.4/address", ",", "BCF/track.3/turn.4/enable", ",", "BCF/track.3/turn.4/mode", ",", "BCF/track.3/turn.4/model/mute", ",", "BCF/track.3/turn.4/power", ",", "BCF/track.3/turn.4/value", ",", "BCF/track.4/fader/address", ",", "BCF/track.4/fader/enable", ",", "BCF/track.4/fader/mode", ",", "BCF/track.4/fader/model/mute", ",", "BCF/track.4/fader/power", ",", "BCF/track.4/fader/value", ",", "BCF/track.4/key.1/address", ",", "BCF/track.4/key.1/enable", ",", "BCF/track.4/key.1/mode", ",", "BCF/track.4/key.1/model/mute", ",", "BCF/track.4/key.1/power", ",", "BCF/track.4/key.1/value", ",", "BCF/track.4/key.2/address", ",", "BCF/track.4/key.2/enable", ",", "BCF/track.4/key.2/mode", ",", "BCF/track.4/key.2/model/mute", ",", "BCF/track.4/key.2/power", ",", "BCF/track.4/key.2/value", ",", "BCF/track.4/model/mute", ",", "BCF/track.4/press.1/address", ",", "BCF/track.4/press.1/enable", ",", "BCF/track.4/press.1/mode", ",", "BCF/track.4/press.1/model/mute", ",", "BCF/track.4/press.1/power", ",", "BCF/track.4/press.1/value", ",", "BCF/track.4/press.2/address", ",", "BCF/track.4/press.2/enable", ",", "BCF/track.4/press.2/mode", ",", "BCF/track.4/press.2/model/mute", ",", "BCF/track.4/press.2/power", ",", "BCF/track.4/press.2/value", ",", "BCF/track.4/press.3/address", ",", "BCF/track.4/press.3/enable", ",", "BCF/track.4/press.3/mode", ",", "BCF/track.4/press.3/model/mute", ",", "BCF/track.4/press.3/power", ",", "BCF/track.4/press.3/value", ",", "BCF/track.4/press.4/address", ",", "BCF/track.4/press.4/enable", ",", "BCF/track.4/press.4/mode", ",", "BCF/track.4/press.4/model/mute", ",", "BCF/track.4/press.4/power", ",", "BCF/track.4/press.4/value", ",", "BCF/track.4/turn.1/address", ",", "BCF/track.4/turn.1/enable", ",", "BCF/track.4/turn.1/mode", ",", "BCF/track.4/turn.1/model/mute", ",", "BCF/track.4/turn.1/power", ",", "BCF/track.4/turn.1/value", ",", "BCF/track.4/turn.2/address", ",", "BCF/track.4/turn.2/enable", ",", "BCF/track.4/turn.2/mode", ",", "BCF/track.4/turn.2/model/mute", ",", "BCF/track.4/turn.2/power", ",", "BCF/track.4/turn.2/value", ",", "BCF/track.4/turn.3/address", ",", "BCF/track.4/turn.3/enable", ",", "BCF/track.4/turn.3/mode", ",", "BCF/track.4/turn.3/model/mute", ",", "BCF/track.4/turn.3/power", ",", "BCF/track.4/turn.3/value", ",", "BCF/track.4/turn.4/address", ",", "BCF/track.4/turn.4/enable", ",", "BCF/track.4/turn.4/mode", ",", "BCF/track.4/turn.4/model/mute", ",", "BCF/track.4/turn.4/power", ",", "BCF/track.4/turn.4/value", ",", "BCF/track.5/fader/address", ",", "BCF/track.5/fader/enable", ",", "BCF/track.5/fader/mode", ",", "BCF/track.5/fader/model/mute", ",", "BCF/track.5/fader/power", ",", "BCF/track.5/fader/value", ",", "BCF/track.5/key.1/address", ",", "BCF/track.5/key.1/enable", ",", "BCF/track.5/key.1/mode", ",", "BCF/track.5/key.1/model/mute", ",", "BCF/track.5/key.1/power", ",", "BCF/track.5/key.1/value", ",", "BCF/track.5/key.2/address", ",", "BCF/track.5/key.2/enable", ",", "BCF/track.5/key.2/mode", ",", "BCF/track.5/key.2/model/mute", ",", "BCF/track.5/key.2/power", ",", "BCF/track.5/key.2/value", ",", "BCF/track.5/model/mute", ",", "BCF/track.5/press.1/address", ",", "BCF/track.5/press.1/enable", ",", "BCF/track.5/press.1/mode", ",", "BCF/track.5/press.1/model/mute", ",", "BCF/track.5/press.1/power", ",", "BCF/track.5/press.1/value", ",", "BCF/track.5/press.2/address", ",", "BCF/track.5/press.2/enable", ",", "BCF/track.5/press.2/mode", ",", "BCF/track.5/press.2/model/mute", ",", "BCF/track.5/press.2/power", ",", "BCF/track.5/press.2/value", ",", "BCF/track.5/press.3/address", ",", "BCF/track.5/press.3/enable", ",", "BCF/track.5/press.3/mode", ",", "BCF/track.5/press.3/model/mute", ",", "BCF/track.5/press.3/power", ",", "BCF/track.5/press.3/value", ",", "BCF/track.5/press.4/address", ",", "BCF/track.5/press.4/enable", ",", "BCF/track.5/press.4/mode", ",", "BCF/track.5/press.4/model/mute", ",", "BCF/track.5/press.4/power", ",", "BCF/track.5/press.4/value", ",", "BCF/track.5/turn.1/address", ",", "BCF/track.5/turn.1/enable", ",", "BCF/track.5/turn.1/mode", ",", "BCF/track.5/turn.1/model/mute", ",", "BCF/track.5/turn.1/power", ",", "BCF/track.5/turn.1/value", ",", "BCF/track.5/turn.2/address", ",", "BCF/track.5/turn.2/enable", ",", "BCF/track.5/turn.2/mode", ",", "BCF/track.5/turn.2/model/mute", ",", "BCF/track.5/turn.2/power", ",", "BCF/track.5/turn.2/value", ",", "BCF/track.5/turn.3/address", ",", "BCF/track.5/turn.3/enable", ",", "BCF/track.5/turn.3/mode", ",", "BCF/track.5/turn.3/model/mute", ",", "BCF/track.5/turn.3/power", ",", "BCF/track.5/turn.3/value", ",", "BCF/track.5/turn.4/address", ",", "BCF/track.5/turn.4/enable", ",", "BCF/track.5/turn.4/mode", ",", "BCF/track.5/turn.4/model/mute", ",", "BCF/track.5/turn.4/power", ",", "BCF/track.5/turn.4/value", ",", "BCF/track.6/fader/address", ",", "BCF/track.6/fader/enable", ",", "BCF/track.6/fader/mode", ",", "BCF/track.6/fader/model/mute", ",", "BCF/track.6/fader/power", ",", "BCF/track.6/fader/value", ",", "BCF/track.6/key.1/address", ",", "BCF/track.6/key.1/enable", ",", "BCF/track.6/key.1/mode", ",", "BCF/track.6/key.1/model/mute", ",", "BCF/track.6/key.1/power", ",", "BCF/track.6/key.1/value", ",", "BCF/track.6/key.2/address", ",", "BCF/track.6/key.2/enable", ",", "BCF/track.6/key.2/mode", ",", "BCF/track.6/key.2/model/mute", ",", "BCF/track.6/key.2/power", ",", "BCF/track.6/key.2/value", ",", "BCF/track.6/model/mute", ",", "BCF/track.6/press.1/address", ",", "BCF/track.6/press.1/enable", ",", "BCF/track.6/press.1/mode", ",", "BCF/track.6/press.1/model/mute", ",", "BCF/track.6/press.1/power", ",", "BCF/track.6/press.1/value", ",", "BCF/track.6/press.2/address", ",", "BCF/track.6/press.2/enable", ",", "BCF/track.6/press.2/mode", ",", "BCF/track.6/press.2/model/mute", ",", "BCF/track.6/press.2/power", ",", "BCF/track.6/press.2/value", ",", "BCF/track.6/press.3/address", ",", "BCF/track.6/press.3/enable", ",", "BCF/track.6/press.3/mode", ",", "BCF/track.6/press.3/model/mute", ",", "BCF/track.6/press.3/power", ",", "BCF/track.6/press.3/value", ",", "BCF/track.6/press.4/address", ",", "BCF/track.6/press.4/enable", ",", "BCF/track.6/press.4/mode", ",", "BCF/track.6/press.4/model/mute", ",", "BCF/track.6/press.4/power", ",", "BCF/track.6/press.4/value", ",", "BCF/track.6/turn.1/address", ",", "BCF/track.6/turn.1/enable", ",", "BCF/track.6/turn.1/mode", ",", "BCF/track.6/turn.1/model/mute", ",", "BCF/track.6/turn.1/power", ",", "BCF/track.6/turn.1/value", ",", "BCF/track.6/turn.2/address", ",", "BCF/track.6/turn.2/enable", ",", "BCF/track.6/turn.2/mode", ",", "BCF/track.6/turn.2/model/mute", ",", "BCF/track.6/turn.2/power", ",", "BCF/track.6/turn.2/value", ",", "BCF/track.6/turn.3/address", ",", "BCF/track.6/turn.3/enable", ",", "BCF/track.6/turn.3/mode", ",", "BCF/track.6/turn.3/model/mute", ",", "BCF/track.6/turn.3/power", ",", "BCF/track.6/turn.3/value", ",", "BCF/track.6/turn.4/address", ",", "BCF/track.6/turn.4/enable", ",", "BCF/track.6/turn.4/mode", ",", "BCF/track.6/turn.4/model/mute", ",", "BCF/track.6/turn.4/power", ",", "BCF/track.6/turn.4/value", ",", "BCF/track.7/fader/address", ",", "BCF/track.7/fader/enable", ",", "BCF/track.7/fader/mode", ",", "BCF/track.7/fader/model/mute", ",", "BCF/track.7/fader/power", ",", "BCF/track.7/fader/value", ",", "BCF/track.7/key.1/address", ",", "BCF/track.7/key.1/enable", ",", "BCF/track.7/key.1/mode", ",", "BCF/track.7/key.1/model/mute", ",", "BCF/track.7/key.1/power", ",", "BCF/track.7/key.1/value", ",", "BCF/track.7/key.2/address", ",", "BCF/track.7/key.2/enable", ",", "BCF/track.7/key.2/mode", ",", "BCF/track.7/key.2/model/mute", ",", "BCF/track.7/key.2/power", ",", "BCF/track.7/key.2/value", ",", "BCF/track.7/model/mute", ",", "BCF/track.7/press.1/address", ",", "BCF/track.7/press.1/enable", ",", "BCF/track.7/press.1/mode", ",", "BCF/track.7/press.1/model/mute", ",", "BCF/track.7/press.1/power", ",", "BCF/track.7/press.1/value", ",", "BCF/track.7/press.2/address", ",", "BCF/track.7/press.2/enable", ",", "BCF/track.7/press.2/mode", ",", "BCF/track.7/press.2/model/mute", ",", "BCF/track.7/press.2/power", ",", "BCF/track.7/press.2/value", ",", "BCF/track.7/press.3/address", ",", "BCF/track.7/press.3/enable", ",", "BCF/track.7/press.3/mode", ",", "BCF/track.7/press.3/model/mute", ",", "BCF/track.7/press.3/power", ",", "BCF/track.7/press.3/value", ",", "BCF/track.7/press.4/address", ",", "BCF/track.7/press.4/enable", ",", "BCF/track.7/press.4/mode", ",", "BCF/track.7/press.4/model/mute", ",", "BCF/track.7/press.4/power", ",", "BCF/track.7/press.4/value", ",", "BCF/track.7/turn.1/address", ",", "BCF/track.7/turn.1/enable", ",", "BCF/track.7/turn.1/mode", ",", "BCF/track.7/turn.1/model/mute", ",", "BCF/track.7/turn.1/power", ",", "BCF/track.7/turn.1/value", ",", "BCF/track.7/turn.2/address", ",", "BCF/track.7/turn.2/enable", ",", "BCF/track.7/turn.2/mode", ",", "BCF/track.7/turn.2/model/mute", ",", "BCF/track.7/turn.2/power", ",", "BCF/track.7/turn.2/value", ",", "BCF/track.7/turn.3/address", ",", "BCF/track.7/turn.3/enable", ",", "BCF/track.7/turn.3/mode", ",", "BCF/track.7/turn.3/model/mute", ",", "BCF/track.7/turn.3/power", ",", "BCF/track.7/turn.3/value", ",", "BCF/track.7/turn.4/address", ",", "BCF/track.7/turn.4/enable", ",", "BCF/track.7/turn.4/mode", ",", "BCF/track.7/turn.4/model/mute", ",", "BCF/track.7/turn.4/power", ",", "BCF/track.7/turn.4/value", ",", "BCF/track.8/fader/address", ",", "BCF/track.8/fader/enable", ",", "BCF/track.8/fader/mode", ",", "BCF/track.8/fader/model/mute", ",", "BCF/track.8/fader/power", ",", "BCF/track.8/fader/value", ",", "BCF/track.8/key.1/address", ",", "BCF/track.8/key.1/enable", ",", "BCF/track.8/key.1/mode", ",", "BCF/track.8/key.1/model/mute", ",", "BCF/track.8/key.1/power", ",", "BCF/track.8/key.1/value", ",", "BCF/track.8/key.2/address", ",", "BCF/track.8/key.2/enable", ",", "BCF/track.8/key.2/mode", ",", "BCF/track.8/key.2/model/mute", ",", "BCF/track.8/key.2/power", ",", "BCF/track.8/key.2/value", ",", "BCF/track.8/model/mute", ",", "BCF/track.8/press.1/address", ",", "BCF/track.8/press.1/enable", ",", "BCF/track.8/press.1/mode", ",", "BCF/track.8/press.1/model/mute", ",", "BCF/track.8/press.1/power", ",", "BCF/track.8/press.1/value", ",", "BCF/track.8/press.2/address", ",", "BCF/track.8/press.2/enable", ",", "BCF/track.8/press.2/mode", ",", "BCF/track.8/press.2/model/mute", ",", "BCF/track.8/press.2/power", ",", "BCF/track.8/press.2/value", ",", "BCF/track.8/press.3/address", ",", "BCF/track.8/press.3/enable", ",", "BCF/track.8/press.3/mode", ",", "BCF/track.8/press.3/model/mute", ",", "BCF/track.8/press.3/power", ",", "BCF/track.8/press.3/value", ",", "BCF/track.8/press.4/address", ",", "BCF/track.8/press.4/enable", ",", "BCF/track.8/press.4/mode", ",", "BCF/track.8/press.4/model/mute", ",", "BCF/track.8/press.4/power", ",", "BCF/track.8/press.4/value", ",", "BCF/track.8/turn.1/address", ",", "BCF/track.8/turn.1/enable", ",", "BCF/track.8/turn.1/mode", ",", "BCF/track.8/turn.1/model/mute", ",", "BCF/track.8/turn.1/power", ",", "BCF/track.8/turn.1/value", ",", "BCF/track.8/turn.2/address", ",", "BCF/track.8/turn.2/enable", ",", "BCF/track.8/turn.2/mode", ",", "BCF/track.8/turn.2/model/mute", ",", "BCF/track.8/turn.2/power", ",", "BCF/track.8/turn.2/value", ",", "BCF/track.8/turn.3/address", ",", "BCF/track.8/turn.3/enable", ",", "BCF/track.8/turn.3/mode", ",", "BCF/track.8/turn.3/model/mute", ",", "BCF/track.8/turn.3/power", ",", "BCF/track.8/turn.3/value", ",", "BCF/track.8/turn.4/address", ",", "BCF/track.8/turn.4/enable", ",", "BCF/track.8/turn.4/mode", ",", "BCF/track.8/turn.4/model/mute", ",", "BCF/track.8/turn.4/power", ",", "BCF/track.8/turn.4/value", ",", "Sel(view).arr/Selador(view)/model/address", ",", "Sel(view).arr/Selador(view)/view/mute", ",", "Sel(view).arr/model/address", ",", "Sel(view).arr/view/mute", ",", "Sel(view).bas/Selador(view)/model/address", ",", "Sel(view).bas/Selador(view)/view/mute", ",", "Sel(view).bas/model/address", ",", "Sel(view).bas/view/mute", ",", "Sel(view).face/Selador(view)/model/address", ",", "Sel(view).face/Selador(view)/view/mute", ",", "Sel(view).face/model/address", ",", "Sel(view).face/view/mute", ",", "Sel(view).inter/Selador(view)/model/address", ",", "Sel(view).inter/Selador(view)/view/mute", ",", "Sel(view).inter/model/address", ",", "Sel(view).inter/view/mute", ",", "Sel(view).rido/Selador(view)/model/address", ",", "Sel(view).rido/Selador(view)/view/mute", ",", "Sel(view).rido/model/address", ",", "Sel(view).rido/view/mute", ",", "Sel.arr/Selador.1/amber", ",", "Sel.arr/Selador.1/blue", ",", "Sel.arr/Selador.1/cyan", ",", "Sel.arr/Selador.1/green", ",", "Sel.arr/Selador.1/indigo", ",", "Sel.arr/Selador.1/intensity", ",", "Sel.arr/Selador.1/model/mute", ",", "Sel.arr/Selador.1/orange", ",", "Sel.arr/Selador.1/red", ",", "Sel.arr/Selador.1/startChannel", ",", "Sel.arr/Selador.2/amber", ",", "Sel.arr/Selador.2/blue", ",", "Sel.arr/Selador.2/cyan", ",", "Sel.arr/Selador.2/green", ",", "Sel.arr/Selador.2/indigo", ",", "Sel.arr/Selador.2/intensity", ",", "Sel.arr/Selador.2/model/mute", ",", "Sel.arr/Selador.2/orange", ",", "Sel.arr/Selador.2/red", ",", "Sel.arr/Selador.2/startChannel", ",", "Sel.arr/Selador.3/amber", ",", "Sel.arr/Selador.3/blue", ",", "Sel.arr/Selador.3/cyan", ",", "Sel.arr/Selador.3/green", ",", "Sel.arr/Selador.3/indigo", ",", "Sel.arr/Selador.3/intensity", ",", "Sel.arr/Selador.3/model/mute", ",", "Sel.arr/Selador.3/orange", ",", "Sel.arr/Selador.3/red", ",", "Sel.arr/Selador.3/startChannel", ",", "Sel.arr/arraySize", ",", "Sel.arr/model/mute", ",", "Sel.bas/Selador.1/amber", ",", "Sel.bas/Selador.1/blue", ",", "Sel.bas/Selador.1/cyan", ",", "Sel.bas/Selador.1/green", ",", "Sel.bas/Selador.1/indigo", ",", "Sel.bas/Selador.1/intensity", ",", "Sel.bas/Selador.1/model/mute", ",", "Sel.bas/Selador.1/orange", ",", "Sel.bas/Selador.1/red", ",", "Sel.bas/Selador.1/startChannel", ",", "Sel.bas/Selador.2/amber", ",", "Sel.bas/Selador.2/blue", ",", "Sel.bas/Selador.2/cyan", ",", "Sel.bas/Selador.2/green", ",", "Sel.bas/Selador.2/indigo", ",", "Sel.bas/Selador.2/intensity", ",", "Sel.bas/Selador.2/model/mute", ",", "Sel.bas/Selador.2/orange", ",", "Sel.bas/Selador.2/red", ",", "Sel.bas/Selador.2/startChannel", ",", "Sel.bas/arraySize", ",", "Sel.bas/model/mute", ",", "Sel.face/Selador.1/amber", ",", "Sel.face/Selador.1/blue", ",", "Sel.face/Selador.1/cyan", ",", "Sel.face/Selador.1/green", ",", "Sel.face/Selador.1/indigo", ",", "Sel.face/Selador.1/intensity", ",", "Sel.face/Selador.1/model/mute", ",", "Sel.face/Selador.1/orange", ",", "Sel.face/Selador.1/red", ",", "Sel.face/Selador.1/startChannel", ",", "Sel.face/Selador.2/amber", ",", "Sel.face/Selador.2/blue", ",", "Sel.face/Selador.2/cyan", ",", "Sel.face/Selador.2/green", ",", "Sel.face/Selador.2/indigo", ",", "Sel.face/Selador.2/intensity", ",", "Sel.face/Selador.2/model/mute", ",", "Sel.face/Selador.2/orange", ",", "Sel.face/Selador.2/red", ",", "Sel.face/Selador.2/startChannel", ",", "Sel.face/arraySize", ",", "Sel.face/model/mute", ",", "Sel.inter/Selador.1/amber", ",", "Sel.inter/Selador.1/blue", ",", "Sel.inter/Selador.1/cyan", ",", "Sel.inter/Selador.1/green", ",", "Sel.inter/Selador.1/indigo", ",", "Sel.inter/Selador.1/intensity", ",", "Sel.inter/Selador.1/model/mute", ",", "Sel.inter/Selador.1/orange", ",", "Sel.inter/Selador.1/red", ",", "Sel.inter/Selador.1/startChannel", ",", "Sel.inter/Selador.2/amber", ",", "Sel.inter/Selador.2/blue", ",", "Sel.inter/Selador.2/cyan", ",", "Sel.inter/Selador.2/green", ",", "Sel.inter/Selador.2/indigo", ",", "Sel.inter/Selador.2/intensity", ",", "Sel.inter/Selador.2/model/mute", ",", "Sel.inter/Selador.2/orange", ",", "Sel.inter/Selador.2/red", ",", "Sel.inter/Selador.2/startChannel", ",", "Sel.inter/Selador.3/amber", ",", "Sel.inter/Selador.3/blue", ",", "Sel.inter/Selador.3/cyan", ",", "Sel.inter/Selador.3/green", ",", "Sel.inter/Selador.3/indigo", ",", "Sel.inter/Selador.3/intensity", ",", "Sel.inter/Selador.3/model/mute", ",", "Sel.inter/Selador.3/orange", ",", "Sel.inter/Selador.3/red", ",", "Sel.inter/Selador.3/startChannel", ",", "Sel.inter/arraySize", ",", "Sel.inter/model/mute", ",", "Sel.rido/Selador.1/amber", ",", "Sel.rido/Selador.1/blue", ",", "Sel.rido/Selador.1/cyan", ",", "Sel.rido/Selador.1/green", ",", "Sel.rido/Selador.1/indigo", ",", "Sel.rido/Selador.1/intensity", ",", "Sel.rido/Selador.1/model/mute", ",", "Sel.rido/Selador.1/orange", ",", "Sel.rido/Selador.1/red", ",", "Sel.rido/Selador.1/startChannel", ",", "Sel.rido/Selador.2/amber", ",", "Sel.rido/Selador.2/blue", ",", "Sel.rido/Selador.2/cyan", ",", "Sel.rido/Selador.2/green", ",", "Sel.rido/Selador.2/indigo", ",", "Sel.rido/Selador.2/intensity", ",", "Sel.rido/Selador.2/model/mute", ",", "Sel.rido/Selador.2/orange", ",", "Sel.rido/Selador.2/red", ",", "Sel.rido/Selador.2/startChannel", ",", "Sel.rido/arraySize", ",", "Sel.rido/model/mute", ",", "Zdbap(view)/ZdbapSource(view)/model/address", ",", "Zdbap(view)/ZdbapSource(view)/view/mute", ",", "Zdbap(view)/model/address", ",", "Zdbap(view)/selection-mode", ",", "Zdbap(view)/show-numbers", ",", "Zdbap(view)/source-selected", ",", "Zdbap(view)/ui/color/border", ",", "Zdbap(view)/ui/color/contentBackground", ",", "Zdbap(view)/ui/color/toolbarBackground", ",", "Zdbap(view)/ui/color/toolbarText", ",", "Zdbap(view)/ui/freeze", ",", "Zdbap(view)/ui/size", ",", "Zdbap(view)/view/mute", ",", "Zdbap/gain", ",", "Zdbap/model/mute", ",", "Zdbap/numSources", ",", "Zdbap/numSpeakers", ",", "Zdbap/rolloff", ",", "Zdbap/source.1/area/size/xy", ",", "Zdbap/source.1/area/xy", ",", "Zdbap/source.1/blur", ",", "Zdbap/source.1/color", ",", "Zdbap/source.1/model/mute", ",", "Zdbap/source.1/position/xy", ",", "Zdbap/source.1/trajectory/direction", ",", "Zdbap/source.1/trajectory/file", ",", "Zdbap/source.1/trajectory/grain", ",", "Zdbap/source.1/trajectory/mode", ",", "Zdbap/source.1/trajectory/speed", ",", "Zdbap/source.1/trajectory/speed/variation", ",", "Zdbap/source.1/volume", ",", "Zdbap/source.1/weight", ",", "Zdbap/source.2/area/size/xy", ",", "Zdbap/source.2/area/xy", ",", "Zdbap/source.2/blur", ",", "Zdbap/source.2/color", ",", "Zdbap/source.2/model/mute", ",", "Zdbap/source.2/position/xy", ",", "Zdbap/source.2/trajectory/direction", ",", "Zdbap/source.2/trajectory/file", ",", "Zdbap/source.2/trajectory/grain", ",", "Zdbap/source.2/trajectory/mode", ",", "Zdbap/source.2/trajectory/speed", ",", "Zdbap/source.2/trajectory/speed/variation", ",", "Zdbap/source.2/volume", ",", "Zdbap/source.2/weight", ",", "Zdbap/source.3/area/size/xy", ",", "Zdbap/source.3/area/xy", ",", "Zdbap/source.3/blur", ",", "Zdbap/source.3/color", ",", "Zdbap/source.3/model/mute", ",", "Zdbap/source.3/position/xy", ",", "Zdbap/source.3/trajectory/direction", ",", "Zdbap/source.3/trajectory/file", ",", "Zdbap/source.3/trajectory/grain", ",", "Zdbap/source.3/trajectory/mode", ",", "Zdbap/source.3/trajectory/speed", ",", "Zdbap/source.3/trajectory/speed/variation", ",", "Zdbap/source.3/volume", ",", "Zdbap/source.3/weight", ",", "Zdbap/source.4/area/size/xy", ",", "Zdbap/source.4/area/xy", ",", "Zdbap/source.4/blur", ",", "Zdbap/source.4/color", ",", "Zdbap/source.4/model/mute", ",", "Zdbap/source.4/position/xy", ",", "Zdbap/source.4/trajectory/direction", ",", "Zdbap/source.4/trajectory/file", ",", "Zdbap/source.4/trajectory/grain", ",", "Zdbap/source.4/trajectory/mode", ",", "Zdbap/source.4/trajectory/speed", ",", "Zdbap/source.4/trajectory/speed/variation", ",", "Zdbap/source.4/volume", ",", "Zdbap/source.4/weight", ",", "Zdbap/source.5/area/size/xy", ",", "Zdbap/source.5/area/xy", ",", "Zdbap/source.5/blur", ",", "Zdbap/source.5/color", ",", "Zdbap/source.5/model/mute", ",", "Zdbap/source.5/position/xy", ",", "Zdbap/source.5/trajectory/direction", ",", "Zdbap/source.5/trajectory/file", ",", "Zdbap/source.5/trajectory/grain", ",", "Zdbap/source.5/trajectory/mode", ",", "Zdbap/source.5/trajectory/speed", ",", "Zdbap/source.5/trajectory/speed/variation", ",", "Zdbap/source.5/volume", ",", "Zdbap/source.5/weight", ",", "Zdbap/source.6/area/size/xy", ",", "Zdbap/source.6/area/xy", ",", "Zdbap/source.6/blur", ",", "Zdbap/source.6/color", ",", "Zdbap/source.6/model/mute", ",", "Zdbap/source.6/position/xy", ",", "Zdbap/source.6/trajectory/direction", ",", "Zdbap/source.6/trajectory/file", ",", "Zdbap/source.6/trajectory/grain", ",", "Zdbap/source.6/trajectory/mode", ",", "Zdbap/source.6/trajectory/speed", ",", "Zdbap/source.6/trajectory/speed/variation", ",", "Zdbap/source.6/volume", ",", "Zdbap/source.6/weight", ",", "Zdbap/speaker.1/model/mute", ",", "Zdbap/speaker.1/position/xy", ",", "Zdbap/speaker.2/model/mute", ",", "Zdbap/speaker.2/position/xy", ",", "Zdbap/speaker.3/model/mute", ",", "Zdbap/speaker.3/position/xy", ",", "Zdbap/speaker.4/model/mute", ",", "Zdbap/speaker.4/position/xy", ",", "cueManager(view)/model/address", ",", "cueManager(view)/ui/color/border", ",", "cueManager(view)/ui/color/contentBackground", ",", "cueManager(view)/ui/color/toolbarBackground", ",", "cueManager(view)/ui/color/toolbarText", ",", "cueManager(view)/ui/freeze", ",", "cueManager(view)/ui/size", ",", "cueManager(view)/view/mute", ",", "cueManager/addresses", ",", "cueManager/addresses/ramp", ",", "cueManager/autofollow/active", ",", "cueManager/autofollow/time", ",", "cueManager/filter/addresses/excluded", ",", "cueManager/filter/adresses", ",", "cueManager/filter/adresses/mode", ",", "cueManager/filter/keys", ",", "cueManager/filter/keys/mode", ",", "cueManager/filter/tags", ",", "cueManager/filter/tags/mode", ",", "cueManager/model/mute", ",", "cueManager/ramp/active", ",", "cueManager/ramp/time", ",", "cyclo(view)/model/address", ",", "cyclo(view)/view/mute", ",", "cyclo/heat", ",", "cyclo/heatSpread", ",", "cyclo/intensity", ",", "cyclo/model/mute", ",", "cyclo/panSpread", ",", "cyclo/panX", ",", "cyclo/panY", ",", "cyclo/startChannel", ",", "function.1/arraySize", ",", "function.1/func.1/duration", ",", "function.1/func.1/grain", ",", "function.1/func.1/loop", ",", "function.1/func.1/max", ",", "function.1/func.1/min", ",", "function.1/func.1/model/mute", ",", "function.1/func.1/points", ",", "function.1/func.1/ramp", ",", "function.1/func.1/speed", ",", "function.1/func.1/switch", ",", "function.1/func.1/target", ",", "function.1/func.10/duration", ",", "function.1/func.10/grain", ",", "function.1/func.10/loop", ",", "function.1/func.10/max", ",", "function.1/func.10/min", ",", "function.1/func.10/model/mute", ",", "function.1/func.10/points", ",", "function.1/func.10/ramp", ",", "function.1/func.10/speed", ",", "function.1/func.10/switch", ",", "function.1/func.10/target", ",", "function.1/func.2/duration", ",", "function.1/func.2/grain", ",", "function.1/func.2/loop", ",", "function.1/func.2/max", ",", "function.1/func.2/min", ",", "function.1/func.2/model/mute", ",", "function.1/func.2/points", ",", "function.1/func.2/ramp", ",", "function.1/func.2/speed", ",", "function.1/func.2/switch", ",", "function.1/func.2/target", ",", "function.1/func.3/duration", ",", "function.1/func.3/grain", ",", "function.1/func.3/loop", ",", "function.1/func.3/max", ",", "function.1/func.3/min", ",", "function.1/func.3/model/mute", ",", "function.1/func.3/points", ",", "function.1/func.3/ramp", ",", "function.1/func.3/speed", ",", "function.1/func.3/switch", ",", "function.1/func.3/target", ",", "function.1/func.4/duration", ",", "function.1/func.4/grain", ",", "function.1/func.4/loop", ",", "function.1/func.4/max", ",", "function.1/func.4/min", ",", "function.1/func.4/model/mute", ",", "function.1/func.4/points", ",", "function.1/func.4/ramp", ",", "function.1/func.4/speed", ",", "function.1/func.4/switch", ",", "function.1/func.4/target", ",", "function.1/func.5/duration", ",", "function.1/func.5/grain", ",", "function.1/func.5/loop", ",", "function.1/func.5/max", ",", "function.1/func.5/min", ",", "function.1/func.5/model/mute", ",", "function.1/func.5/points", ",", "function.1/func.5/ramp", ",", "function.1/func.5/speed", ",", "function.1/func.5/switch", ",", "function.1/func.5/target", ",", "function.1/func.6/duration", ",", "function.1/func.6/grain", ",", "function.1/func.6/loop", ",", "function.1/func.6/max", ",", "function.1/func.6/min", ",", "function.1/func.6/model/mute", ",", "function.1/func.6/points", ",", "function.1/func.6/ramp", ",", "function.1/func.6/speed", ",", "function.1/func.6/switch", ",", "function.1/func.6/target", ",", "function.1/func.7/duration", ",", "function.1/func.7/grain", ",", "function.1/func.7/loop", ",", "function.1/func.7/max", ",", "function.1/func.7/min", ",", "function.1/func.7/model/mute", ",", "function.1/func.7/points", ",", "function.1/func.7/ramp", ",", "function.1/func.7/speed", ",", "function.1/func.7/switch", ",", "function.1/func.7/target", ",", "function.1/func.8/duration", ",", "function.1/func.8/grain", ",", "function.1/func.8/loop", ",", "function.1/func.8/max", ",", "function.1/func.8/min", ",", "function.1/func.8/model/mute", ",", "function.1/func.8/points", ",", "function.1/func.8/ramp", ",", "function.1/func.8/speed", ",", "function.1/func.8/switch", ",", "function.1/func.8/target", ",", "function.1/func.9/duration", ",", "function.1/func.9/grain", ",", "function.1/func.9/loop", ",", "function.1/func.9/max", ",", "function.1/func.9/min", ",", "function.1/func.9/model/mute", ",", "function.1/func.9/points", ",", "function.1/func.9/ramp", ",", "function.1/func.9/speed", ",", "function.1/func.9/switch", ",", "function.1/func.9/target", ",", "function.1/model/mute", ",", "function.2/arraySize", ",", "function.2/func.1/duration", ",", "function.2/func.1/grain", ",", "function.2/func.1/loop", ",", "function.2/func.1/max", ",", "function.2/func.1/min", ",", "function.2/func.1/model/mute", ",", "function.2/func.1/points", ",", "function.2/func.1/ramp", ",", "function.2/func.1/speed", ",", "function.2/func.1/switch", ",", "function.2/func.1/target", ",", "function.2/func.10/duration", ",", "function.2/func.10/grain", ",", "function.2/func.10/loop", ",", "function.2/func.10/max", ",", "function.2/func.10/min", ",", "function.2/func.10/model/mute", ",", "function.2/func.10/points", ",", "function.2/func.10/ramp", ",", "function.2/func.10/speed", ",", "function.2/func.10/switch", ",", "function.2/func.10/target", ",", "function.2/func.2/duration", ",", "function.2/func.2/grain", ",", "function.2/func.2/loop", ",", "function.2/func.2/max", ",", "function.2/func.2/min", ",", "function.2/func.2/model/mute", ",", "function.2/func.2/points", ",", "function.2/func.2/ramp", ",", "function.2/func.2/speed", ",", "function.2/func.2/switch", ",", "function.2/func.2/target", ",", "function.2/func.3/duration", ",", "function.2/func.3/grain", ",", "function.2/func.3/loop", ",", "function.2/func.3/max", ",", "function.2/func.3/min", ",", "function.2/func.3/model/mute", ",", "function.2/func.3/points", ",", "function.2/func.3/ramp", ",", "function.2/func.3/speed", ",", "function.2/func.3/switch", ",", "function.2/func.3/target", ",", "function.2/func.4/duration", ",", "function.2/func.4/grain", ",", "function.2/func.4/loop", ",", "function.2/func.4/max", ",", "function.2/func.4/min", ",", "function.2/func.4/model/mute", ",", "function.2/func.4/points", ",", "function.2/func.4/ramp", ",", "function.2/func.4/speed", ",", "function.2/func.4/switch", ",", "function.2/func.4/target", ",", "function.2/func.5/duration", ",", "function.2/func.5/grain", ",", "function.2/func.5/loop", ",", "function.2/func.5/max", ",", "function.2/func.5/min", ",", "function.2/func.5/model/mute", ",", "function.2/func.5/points", ",", "function.2/func.5/ramp", ",", "function.2/func.5/speed", ",", "function.2/func.5/switch", ",", "function.2/func.5/target", ",", "function.2/func.6/duration", ",", "function.2/func.6/grain", ",", "function.2/func.6/loop", ",", "function.2/func.6/max", ",", "function.2/func.6/min", ",", "function.2/func.6/model/mute", ",", "function.2/func.6/points", ",", "function.2/func.6/ramp", ",", "function.2/func.6/speed", ",", "function.2/func.6/switch", ",", "function.2/func.6/target", ",", "function.2/func.7/duration", ",", "function.2/func.7/grain", ",", "function.2/func.7/loop", ",", "function.2/func.7/max", ",", "function.2/func.7/min", ",", "function.2/func.7/model/mute", ",", "function.2/func.7/points", ",", "function.2/func.7/ramp", ",", "function.2/func.7/speed", ",", "function.2/func.7/switch", ",", "function.2/func.7/target", ",", "function.2/func.8/duration", ",", "function.2/func.8/grain", ",", "function.2/func.8/loop", ",", "function.2/func.8/max", ",", "function.2/func.8/min", ",", "function.2/func.8/model/mute", ",", "function.2/func.8/points", ",", "function.2/func.8/ramp", ",", "function.2/func.8/speed", ",", "function.2/func.8/switch", ",", "function.2/func.8/target", ",", "function.2/func.9/duration", ",", "function.2/func.9/grain", ",", "function.2/func.9/loop", ",", "function.2/func.9/max", ",", "function.2/func.9/min", ",", "function.2/func.9/model/mute", ",", "function.2/func.9/points", ",", "function.2/func.9/ramp", ",", "function.2/func.9/speed", ",", "function.2/func.9/switch", ",", "function.2/func.9/target", ",", "function.2/model/mute", ",", "function.3/arraySize", ",", "function.3/func.1/duration", ",", "function.3/func.1/grain", ",", "function.3/func.1/loop", ",", "function.3/func.1/max", ",", "function.3/func.1/min", ",", "function.3/func.1/model/mute", ",", "function.3/func.1/points", ",", "function.3/func.1/ramp", ",", "function.3/func.1/speed", ",", "function.3/func.1/switch", ",", "function.3/func.1/target", ",", "function.3/model/mute", ",", "mapperBCF(view)/bcfMapper(view)/model/address", ",", "mapperBCF(view)/bcfMapper(view)/view/mute", ",", "mapperBCF(view)/model/address", ",", "mapperBCF(view)/ui/color/border", ",", "mapperBCF(view)/ui/color/contentBackground", ",", "mapperBCF(view)/ui/color/toolbarBackground", ",", "mapperBCF(view)/ui/color/toolbarText", ",", "mapperBCF(view)/ui/freeze", ",", "mapperBCF(view)/ui/size", ",", "mapperBCF(view)/view/mute", ",", "mapperFunction(view).1/edit", ",", "mapperFunction(view).1/model/address", ",", "mapperFunction(view).1/modelInstance", ",", "mapperFunction(view).1/submodelInstance", ",", "mapperFunction(view).1/ui/color/border", ",", "mapperFunction(view).1/ui/color/contentBackground", ",", "mapperFunction(view).1/ui/color/toolbarBackground", ",", "mapperFunction(view).1/ui/color/toolbarText", ",", "mapperFunction(view).1/ui/freeze", ",", "mapperFunction(view).1/ui/size", ",", "mapperFunction(view).1/view/mute", ",", "mapperFunction(view)/edit", ",", "mapperFunction(view)/model/address", ",", "mapperFunction(view)/modelInstance", ",", "mapperFunction(view)/submodelInstance", ",", "mapperFunction(view)/ui/color/border", ",", "mapperFunction(view)/ui/color/contentBackground", ",", "mapperFunction(view)/ui/color/toolbarBackground", ",", "mapperFunction(view)/ui/color/toolbarText", ",", "mapperFunction(view)/ui/freeze", ",", "mapperFunction(view)/ui/size", ",", "mapperFunction(view)/view/mute", ",", "p(view).fresnFen/model/address", ",", "p(view).fresnFen/view/mute", ",", "p(view).fresntest/model/address", ",", "p(view).fresntest/view/mute", ",", "p.fresnFen/intensity", ",", "p.fresnFen/model/mute", ",", "p.fresnFen/startChannel", ",", "p.fresntest/intensity", ",", "p.fresntest/model/mute", ",", "p.fresntest/startChannel", ",", "p2(view).T8/model/address", ",", "p2(view).T8/view/mute", ",", "p2(view).brabo/model/address", ",", "p2(view).brabo/view/mute", ",", "p2(view).fluo/model/address", ",", "p2(view).fluo/view/mute", ",", "p2(view).fresn/model/address", ",", "p2(view).fresn/view/mute", ",", "p2(view).latV/model/address", ",", "p2(view).latV/view/mute", ",", "p2(view).raz/model/address", ",", "p2(view).raz/view/mute", ",", "p2(view).svob/model/address", ",", "p2(view).svob/view/mute", ",", "p2.T8/intensity", ",", "p2.T8/model/mute", ",", "p2.T8/pan", ",", "p2.T8/panSpread", ",", "p2.T8/startChannel.1", ",", "p2.T8/startChannel.2", ",", "p2.brabo/intensity", ",", "p2.brabo/model/mute", ",", "p2.brabo/pan", ",", "p2.brabo/panSpread", ",", "p2.brabo/startChannel.1", ",", "p2.brabo/startChannel.2", ",", "p2.fluo/intensity", ",", "p2.fluo/model/mute", ",", "p2.fluo/pan", ",", "p2.fluo/panSpread", ",", "p2.fluo/startChannel.1", ",", "p2.fluo/startChannel.2", ",", "p2.fresn/intensity", ",", "p2.fresn/model/mute", ",", "p2.fresn/pan", ",", "p2.fresn/panSpread", ",", "p2.fresn/startChannel.1", ",", "p2.fresn/startChannel.2", ",", "p2.latV/intensity", ",", "p2.latV/model/mute", ",", "p2.latV/pan", ",", "p2.latV/panSpread", ",", "p2.latV/startChannel.1", ",", "p2.latV/startChannel.2", ",", "p2.raz/intensity", ",", "p2.raz/model/mute", ",", "p2.raz/pan", ",", "p2.raz/panSpread", ",", "p2.raz/startChannel.1", ",", "p2.raz/startChannel.2", ",", "p2.svob/intensity", ",", "p2.svob/model/mute", ",", "p2.svob/pan", ",", "p2.svob/panSpread", ",", "p2.svob/startChannel.1", ",", "p2.svob/startChannel.2", ",", "p4(view).mask/model/address", ",", "p4(view).mask/view/mute", ",", "p4.mask/intensity", ",", "p4.mask/model/mute", ",", "p4.mask/panSpread", ",", "p4.mask/panX", ",", "p4.mask/panY", ",", "p4.mask/startChannel", ",", "wacmap.selador/enable", ",", "wacmap.selador/model/mute", ",", "wacom/model/mute", ",", "<separator>", ",", "(", "messages", ":)", ",", "BCF/model/documentation/generate", ",", "BCF/model/help", ",", "BCF/model/internals", ",", "BCF/model/reference", ",", "BCF/preset/read", ",", "BCF/preset/recall", ",", "BCF/preset/recall/current", ",", "BCF/preset/recall/next", ",", "BCF/preset/recall/previous", ",", "BCF/preset/remove", ",", "BCF/preset/remove/current", ",", "BCF/preset/remove/next", ",", "BCF/preset/remove/previous", ",", "BCF/preset/store", ",", "BCF/preset/store/current", ",", "BCF/preset/store/next", ",", "BCF/preset/store/previous", ",", "BCF/preset/write", ",", "Sel(view).arr/Selador(view)/view/documentation/generate", ",", "Sel(view).arr/Selador(view)/view/help", ",", "Sel(view).arr/Selador(view)/view/internals", ",", "Sel(view).arr/Selador(view)/view/reference", ",", "Sel(view).arr/view/documentation/generate", ",", "Sel(view).arr/view/help", ",", "Sel(view).arr/view/internals", ",", "Sel(view).arr/view/reference", ",", "Sel(view).bas/Selador(view)/view/documentation/generate", ",", "Sel(view).bas/Selador(view)/view/help", ",", "Sel(view).bas/Selador(view)/view/internals", ",", "Sel(view).bas/Selador(view)/view/reference", ",", "Sel(view).bas/view/documentation/generate", ",", "Sel(view).bas/view/help", ",", "Sel(view).bas/view/internals", ",", "Sel(view).bas/view/reference", ",", "Sel(view).face/Selador(view)/view/documentation/generate", ",", "Sel(view).face/Selador(view)/view/help", ",", "Sel(view).face/Selador(view)/view/internals", ",", "Sel(view).face/Selador(view)/view/reference", ",", "Sel(view).face/view/documentation/generate", ",", "Sel(view).face/view/help", ",", "Sel(view).face/view/internals", ",", "Sel(view).face/view/reference", ",", "Sel(view).inter/Selador(view)/view/documentation/generate", ",", "Sel(view).inter/Selador(view)/view/help", ",", "Sel(view).inter/Selador(view)/view/internals", ",", "Sel(view).inter/Selador(view)/view/reference", ",", "Sel(view).inter/view/documentation/generate", ",", "Sel(view).inter/view/help", ",", "Sel(view).inter/view/internals", ",", "Sel(view).inter/view/reference", ",", "Sel(view).rido/Selador(view)/view/documentation/generate", ",", "Sel(view).rido/Selador(view)/view/help", ",", "Sel(view).rido/Selador(view)/view/internals", ",", "Sel(view).rido/Selador(view)/view/reference", ",", "Sel(view).rido/view/documentation/generate", ",", "Sel(view).rido/view/help", ",", "Sel(view).rido/view/internals", ",", "Sel(view).rido/view/reference", ",", "Sel.arr/Selador.1/hue", ",", "Sel.arr/Selador.1/luminance", ",", "Sel.arr/Selador.1/saturation", ",", "Sel.arr/Selador.2/hue", ",", "Sel.arr/Selador.2/luminance", ",", "Sel.arr/Selador.2/saturation", ",", "Sel.arr/Selador.3/hue", ",", "Sel.arr/Selador.3/luminance", ",", "Sel.arr/Selador.3/saturation", ",", "Sel.arr/intensity", ",", "Sel.arr/model/documentation/generate", ",", "Sel.arr/model/help", ",", "Sel.arr/model/internals", ",", "Sel.arr/model/reference", ",", "Sel.arr/pan", ",", "Sel.arr/preset/read", ",", "Sel.arr/preset/recall", ",", "Sel.arr/preset/recall/current", ",", "Sel.arr/preset/recall/next", ",", "Sel.arr/preset/recall/previous", ",", "Sel.arr/preset/remove", ",", "Sel.arr/preset/remove/current", ",", "Sel.arr/preset/remove/next", ",", "Sel.arr/preset/remove/previous", ",", "Sel.arr/preset/store", ",", "Sel.arr/preset/store/current", ",", "Sel.arr/preset/store/next", ",", "Sel.arr/preset/store/previous", ",", "Sel.arr/preset/write", ",", "Sel.arr/spread", ",", "Sel.bas/Selador.1/hue", ",", "Sel.bas/Selador.1/luminance", ",", "Sel.bas/Selador.1/saturation", ",", "Sel.bas/Selador.2/hue", ",", "Sel.bas/Selador.2/luminance", ",", "Sel.bas/Selador.2/saturation", ",", "Sel.bas/intensity", ",", "Sel.bas/model/documentation/generate", ",", "Sel.bas/model/help", ",", "Sel.bas/model/internals", ",", "Sel.bas/model/reference", ",", "Sel.bas/pan", ",", "Sel.bas/preset/read", ",", "Sel.bas/preset/recall", ",", "Sel.bas/preset/recall/current", ",", "Sel.bas/preset/recall/next", ",", "Sel.bas/preset/recall/previous", ",", "Sel.bas/preset/remove", ",", "Sel.bas/preset/remove/current", ",", "Sel.bas/preset/remove/next", ",", "Sel.bas/preset/remove/previous", ",", "Sel.bas/preset/store", ",", "Sel.bas/preset/store/current", ",", "Sel.bas/preset/store/next", ",", "Sel.bas/preset/store/previous", ",", "Sel.bas/preset/write", ",", "Sel.bas/spread", ",", "Sel.face/Selador.1/hue", ",", "Sel.face/Selador.1/luminance", ",", "Sel.face/Selador.1/saturation", ",", "Sel.face/Selador.2/hue", ",", "Sel.face/Selador.2/luminance", ",", "Sel.face/Selador.2/saturation", ",", "Sel.face/intensity", ",", "Sel.face/model/documentation/generate", ",", "Sel.face/model/help", ",", "Sel.face/model/internals", ",", "Sel.face/model/reference", ",", "Sel.face/pan", ",", "Sel.face/preset/read", ",", "Sel.face/preset/recall", ",", "Sel.face/preset/recall/current", ",", "Sel.face/preset/recall/next", ",", "Sel.face/preset/recall/previous", ",", "Sel.face/preset/remove", ",", "Sel.face/preset/remove/current", ",", "Sel.face/preset/remove/next", ",", "Sel.face/preset/remove/previous", ",", "Sel.face/preset/store", ",", "Sel.face/preset/store/current", ",", "Sel.face/preset/store/next", ",", "Sel.face/preset/store/previous", ",", "Sel.face/preset/write", ",", "Sel.face/spread", ",", "Sel.inter/Selador.1/hue", ",", "Sel.inter/Selador.1/luminance", ",", "Sel.inter/Selador.1/saturation", ",", "Sel.inter/Selador.2/hue", ",", "Sel.inter/Selador.2/luminance", ",", "Sel.inter/Selador.2/saturation", ",", "Sel.inter/Selador.3/hue", ",", "Sel.inter/Selador.3/luminance", ",", "Sel.inter/Selador.3/saturation", ",", "Sel.inter/intensity", ",", "Sel.inter/model/documentation/generate", ",", "Sel.inter/model/help", ",", "Sel.inter/model/internals", ",", "Sel.inter/model/reference", ",", "Sel.inter/pan", ",", "Sel.inter/preset/read", ",", "Sel.inter/preset/recall", ",", "Sel.inter/preset/recall/current", ",", "Sel.inter/preset/recall/next", ",", "Sel.inter/preset/recall/previous", ",", "Sel.inter/preset/remove", ",", "Sel.inter/preset/remove/current", ",", "Sel.inter/preset/remove/next", ",", "Sel.inter/preset/remove/previous", ",", "Sel.inter/preset/store", ",", "Sel.inter/preset/store/current", ",", "Sel.inter/preset/store/next", ",", "Sel.inter/preset/store/previous", ",", "Sel.inter/preset/write", ",", "Sel.inter/spread", ",", "Sel.rido/Selador.1/hue", ",", "Sel.rido/Selador.1/luminance", ",", "Sel.rido/Selador.1/saturation", ",", "Sel.rido/Selador.2/hue", ",", "Sel.rido/Selador.2/luminance", ",", "Sel.rido/Selador.2/saturation", ",", "Sel.rido/intensity", ",", "Sel.rido/model/documentation/generate", ",", "Sel.rido/model/help", ",", "Sel.rido/model/internals", ",", "Sel.rido/model/reference", ",", "Sel.rido/pan", ",", "Sel.rido/preset/read", ",", "Sel.rido/preset/recall", ",", "Sel.rido/preset/recall/current", ",", "Sel.rido/preset/recall/next", ",", "Sel.rido/preset/recall/previous", ",", "Sel.rido/preset/remove", ",", "Sel.rido/preset/remove/current", ",", "Sel.rido/preset/remove/next", ",", "Sel.rido/preset/remove/previous", ",", "Sel.rido/preset/store", ",", "Sel.rido/preset/store/current", ",", "Sel.rido/preset/store/next", ",", "Sel.rido/preset/store/previous", ",", "Sel.rido/preset/write", ",", "Sel.rido/spread", ",", "Zdbap(view)/ZdbapSource(view)/view/documentation/generate", ",", "Zdbap(view)/ZdbapSource(view)/view/help", ",", "Zdbap(view)/ZdbapSource(view)/view/internals", ",", "Zdbap(view)/ZdbapSource(view)/view/reference", ",", "Zdbap(view)/speaker-setup", ",", "Zdbap(view)/ui/panel", ",", "Zdbap(view)/ui/refresh", ",", "Zdbap(view)/view/documentation/generate", ",", "Zdbap(view)/view/help", ",", "Zdbap(view)/view/internals", ",", "Zdbap(view)/view/reference", ",", "Zdbap/info", ",", "Zdbap/model/documentation/generate", ",", "Zdbap/model/help", ",", "Zdbap/model/internals", ",", "Zdbap/model/reference", ",", "Zdbap/source.1/area/size/x", ",", "Zdbap/source.1/area/size/y", ",", "Zdbap/source.1/area/x", ",", "Zdbap/source.1/area/y", ",", "Zdbap/source.1/position/angle", ",", "Zdbap/source.1/position/distance", ",", "Zdbap/source.1/position/x", ",", "Zdbap/source.1/position/y", ",", "Zdbap/source.2/area/size/x", ",", "Zdbap/source.2/area/size/y", ",", "Zdbap/source.2/area/x", ",", "Zdbap/source.2/area/y", ",", "Zdbap/source.2/position/angle", ",", "Zdbap/source.2/position/distance", ",", "Zdbap/source.2/position/x", ",", "Zdbap/source.2/position/y", ",", "Zdbap/source.3/area/size/x", ",", "Zdbap/source.3/area/size/y", ",", "Zdbap/source.3/area/x", ",", "Zdbap/source.3/area/y", ",", "Zdbap/source.3/position/angle", ",", "Zdbap/source.3/position/distance", ",", "Zdbap/source.3/position/x", ",", "Zdbap/source.3/position/y", ",", "Zdbap/source.4/area/size/x", ",", "Zdbap/source.4/area/size/y", ",", "Zdbap/source.4/area/x", ",", "Zdbap/source.4/area/y", ",", "Zdbap/source.4/position/angle", ",", "Zdbap/source.4/position/distance", ",", "Zdbap/source.4/position/x", ",", "Zdbap/source.4/position/y", ",", "Zdbap/source.5/area/size/x", ",", "Zdbap/source.5/area/size/y", ",", "Zdbap/source.5/area/x", ",", "Zdbap/source.5/area/y", ",", "Zdbap/source.5/position/angle", ",", "Zdbap/source.5/position/distance", ",", "Zdbap/source.5/position/x", ",", "Zdbap/source.5/position/y", ",", "Zdbap/source.6/area/size/x", ",", "Zdbap/source.6/area/size/y", ",", "Zdbap/source.6/area/x", ",", "Zdbap/source.6/area/y", ",", "Zdbap/source.6/position/angle", ",", "Zdbap/source.6/position/distance", ",", "Zdbap/source.6/position/x", ",", "Zdbap/source.6/position/y", ",", "cueManager(view)/ui/panel", ",", "cueManager(view)/ui/refresh", ",", "cueManager(view)/view/documentation/generate", ",", "cueManager(view)/view/help", ",", "cueManager(view)/view/internals", ",", "cueManager(view)/view/reference", ",", "cueManager/autofollow/enable", ",", "cueManager/cue/copy", ",", "cueManager/cue/create", ",", "cueManager/cue/move", ",", "cueManager/cue/recall", ",", "cueManager/cue/recall/current", ",", "cueManager/cue/recall/next", ",", "cueManager/cue/recall/previous", ",", "cueManager/cue/remove", ",", "cueManager/cue/remove/current", ",", "cueManager/cue/remove/next", ",", "cueManager/cue/remove/previous", ",", "cueManager/cue/rename", ",", "cueManager/cue/update", ",", "cueManager/cuelist/read", ",", "cueManager/cuelist/recall", ",", "cueManager/cuelist/recall/current", ",", "cueManager/cuelist/recall/next", ",", "cueManager/cuelist/recall/previous", ",", "cueManager/cuelist/remove", ",", "cueManager/cuelist/remove/current", ",", "cueManager/cuelist/remove/next", ",", "cueManager/cuelist/remove/previous", ",", "cueManager/cuelist/store", ",", "cueManager/cuelist/store/current", ",", "cueManager/cuelist/store/next", ",", "cueManager/cuelist/store/previous", ",", "cueManager/cuelist/write", ",", "cueManager/file/edit", ",", "cueManager/file/load", ",", "cueManager/file/new", ",", "cueManager/file/write", ",", "cueManager/file/write/again", ",", "cueManager/model/documentation/generate", ",", "cueManager/model/help", ",", "cueManager/model/internals", ",", "cueManager/model/reference", ",", "cueManager/preset/current/get", ",", "cueManager/preset/new", ",", "cueManager/preset/read", ",", "cueManager/preset/recall", ",", "cueManager/preset/recall/current", ",", "cueManager/preset/recall/next", ",", "cueManager/preset/recall/previous", ",", "cueManager/preset/remove", ",", "cueManager/preset/remove/current", ",", "cueManager/preset/remove/next", ",", "cueManager/preset/remove/previous", ",", "cueManager/preset/store", ",", "cueManager/preset/store/current", ",", "cueManager/preset/store/next", ",", "cueManager/preset/store/previous", ",", "cueManager/preset/write.1", ",", "cueManager/preset/write/again", ",", "cuelist/read", ",", "cuelist/recall", ",", "cuelist/recall/current", ",", "cuelist/recall/next", ",", "cuelist/recall/previous", ",", "cuelist/remove", ",", "cuelist/remove/current", ",", "cuelist/remove/next", ",", "cuelist/remove/previous", ",", "cuelist/store", ",", "cuelist/store/current", ",", "cuelist/store/next", ",", "cuelist/store/previous", ",", "cuelist/write", ",", "cyclo(view)/view/documentation/generate", ",", "cyclo(view)/view/help", ",", "cyclo(view)/view/internals", ",", "cyclo(view)/view/reference", ",", "cyclo/model/documentation/generate", ",", "cyclo/model/help", ",", "cyclo/model/internals", ",", "cyclo/model/reference", ",", "cyclo/preset/read", ",", "cyclo/preset/recall", ",", "cyclo/preset/recall/current", ",", "cyclo/preset/recall/next", ",", "cyclo/preset/recall/previous", ",", "cyclo/preset/remove", ",", "cyclo/preset/remove/current", ",", "cyclo/preset/remove/next", ",", "cyclo/preset/remove/previous", ",", "cyclo/preset/store", ",", "cyclo/preset/store/current", ",", "cyclo/preset/store/next", ",", "cyclo/preset/store/previous", ",", "cyclo/preset/write", ",", "function.1/func.1/model/documentation/generate", ",", "function.1/func.1/model/help", ",", "function.1/func.1/model/internals", ",", "function.1/func.1/model/reference", ",", "function.1/func.1/preset/read", ",", "function.1/func.1/preset/recall", ",", "function.1/func.1/preset/recall/current", ",", "function.1/func.1/preset/recall/next", ",", "function.1/func.1/preset/recall/previous", ",", "function.1/func.1/preset/remove", ",", "function.1/func.1/preset/remove/current", ",", "function.1/func.1/preset/remove/next", ",", "function.1/func.1/preset/remove/previous", ",", "function.1/func.1/preset/store", ",", "function.1/func.1/preset/store/current", ",", "function.1/func.1/preset/store/next", ",", "function.1/func.1/preset/store/previous", ",", "function.1/func.1/preset/write", ",", "function.1/func.10/model/documentation/generate", ",", "function.1/func.10/model/help", ",", "function.1/func.10/model/internals", ",", "function.1/func.10/model/reference", ",", "function.1/func.10/preset/read", ",", "function.1/func.10/preset/recall", ",", "function.1/func.10/preset/recall/current", ",", "function.1/func.10/preset/recall/next", ",", "function.1/func.10/preset/recall/previous", ",", "function.1/func.10/preset/remove", ",", "function.1/func.10/preset/remove/current", ",", "function.1/func.10/preset/remove/next", ",", "function.1/func.10/preset/remove/previous", ",", "function.1/func.10/preset/store", ",", "function.1/func.10/preset/store/current", ",", "function.1/func.10/preset/store/next", ",", "function.1/func.10/preset/store/previous", ",", "function.1/func.10/preset/write", ",", "function.1/func.2/model/documentation/generate", ",", "function.1/func.2/model/help", ",", "function.1/func.2/model/internals", ",", "function.1/func.2/model/reference", ",", "function.1/func.2/preset/read", ",", "function.1/func.2/preset/recall", ",", "function.1/func.2/preset/recall/current", ",", "function.1/func.2/preset/recall/next", ",", "function.1/func.2/preset/recall/previous", ",", "function.1/func.2/preset/remove", ",", "function.1/func.2/preset/remove/current", ",", "function.1/func.2/preset/remove/next", ",", "function.1/func.2/preset/remove/previous", ",", "function.1/func.2/preset/store", ",", "function.1/func.2/preset/store/current", ",", "function.1/func.2/preset/store/next", ",", "function.1/func.2/preset/store/previous", ",", "function.1/func.2/preset/write", ",", "function.1/func.3/model/documentation/generate", ",", "function.1/func.3/model/help", ",", "function.1/func.3/model/internals", ",", "function.1/func.3/model/reference", ",", "function.1/func.3/preset/read", ",", "function.1/func.3/preset/recall", ",", "function.1/func.3/preset/recall/current", ",", "function.1/func.3/preset/recall/next", ",", "function.1/func.3/preset/recall/previous", ",", "function.1/func.3/preset/remove", ",", "function.1/func.3/preset/remove/current", ",", "function.1/func.3/preset/remove/next", ",", "function.1/func.3/preset/remove/previous", ",", "function.1/func.3/preset/store", ",", "function.1/func.3/preset/store/current", ",", "function.1/func.3/preset/store/next", ",", "function.1/func.3/preset/store/previous", ",", "function.1/func.3/preset/write", ",", "function.1/func.4/model/documentation/generate", ",", "function.1/func.4/model/help", ",", "function.1/func.4/model/internals", ",", "function.1/func.4/model/reference", ",", "function.1/func.4/preset/read", ",", "function.1/func.4/preset/recall", ",", "function.1/func.4/preset/recall/current", ",", "function.1/func.4/preset/recall/next", ",", "function.1/func.4/preset/recall/previous", ",", "function.1/func.4/preset/remove", ",", "function.1/func.4/preset/remove/current", ",", "function.1/func.4/preset/remove/next", ",", "function.1/func.4/preset/remove/previous", ",", "function.1/func.4/preset/store", ",", "function.1/func.4/preset/store/current", ",", "function.1/func.4/preset/store/next", ",", "function.1/func.4/preset/store/previous", ",", "function.1/func.4/preset/write", ",", "function.1/func.5/model/documentation/generate", ",", "function.1/func.5/model/help", ",", "function.1/func.5/model/internals", ",", "function.1/func.5/model/reference", ",", "function.1/func.5/preset/read", ",", "function.1/func.5/preset/recall", ",", "function.1/func.5/preset/recall/current", ",", "function.1/func.5/preset/recall/next", ",", "function.1/func.5/preset/recall/previous", ",", "function.1/func.5/preset/remove", ",", "function.1/func.5/preset/remove/current", ",", "function.1/func.5/preset/remove/next", ",", "function.1/func.5/preset/remove/previous", ",", "function.1/func.5/preset/store", ",", "function.1/func.5/preset/store/current", ",", "function.1/func.5/preset/store/next", ",", "function.1/func.5/preset/store/previous", ",", "function.1/func.5/preset/write", ",", "function.1/func.6/model/documentation/generate", ",", "function.1/func.6/model/help", ",", "function.1/func.6/model/internals", ",", "function.1/func.6/model/reference", ",", "function.1/func.6/preset/read", ",", "function.1/func.6/preset/recall", ",", "function.1/func.6/preset/recall/current", ",", "function.1/func.6/preset/recall/next", ",", "function.1/func.6/preset/recall/previous", ",", "function.1/func.6/preset/remove", ",", "function.1/func.6/preset/remove/current", ",", "function.1/func.6/preset/remove/next", ",", "function.1/func.6/preset/remove/previous", ",", "function.1/func.6/preset/store", ",", "function.1/func.6/preset/store/current", ",", "function.1/func.6/preset/store/next", ",", "function.1/func.6/preset/store/previous", ",", "function.1/func.6/preset/write", ",", "function.1/func.7/model/documentation/generate", ",", "function.1/func.7/model/help", ",", "function.1/func.7/model/internals", ",", "function.1/func.7/model/reference", ",", "function.1/func.7/preset/read", ",", "function.1/func.7/preset/recall", ",", "function.1/func.7/preset/recall/current", ",", "function.1/func.7/preset/recall/next", ",", "function.1/func.7/preset/recall/previous", ",", "function.1/func.7/preset/remove", ",", "function.1/func.7/preset/remove/current", ",", "function.1/func.7/preset/remove/next", ",", "function.1/func.7/preset/remove/previous", ",", "function.1/func.7/preset/store", ",", "function.1/func.7/preset/store/current", ",", "function.1/func.7/preset/store/next", ",", "function.1/func.7/preset/store/previous", ",", "function.1/func.7/preset/write", ",", "function.1/func.8/model/documentation/generate", ",", "function.1/func.8/model/help", ",", "function.1/func.8/model/internals", ",", "function.1/func.8/model/reference", ",", "function.1/func.8/preset/read", ",", "function.1/func.8/preset/recall", ",", "function.1/func.8/preset/recall/current", ",", "function.1/func.8/preset/recall/next", ",", "function.1/func.8/preset/recall/previous", ",", "function.1/func.8/preset/remove", ",", "function.1/func.8/preset/remove/current", ",", "function.1/func.8/preset/remove/next", ",", "function.1/func.8/preset/remove/previous", ",", "function.1/func.8/preset/store", ",", "function.1/func.8/preset/store/current", ",", "function.1/func.8/preset/store/next", ",", "function.1/func.8/preset/store/previous", ",", "function.1/func.8/preset/write", ",", "function.1/func.9/model/documentation/generate", ",", "function.1/func.9/model/help", ",", "function.1/func.9/model/internals", ",", "function.1/func.9/model/reference", ",", "function.1/func.9/preset/read", ",", "function.1/func.9/preset/recall", ",", "function.1/func.9/preset/recall/current", ",", "function.1/func.9/preset/recall/next", ",", "function.1/func.9/preset/recall/previous", ",", "function.1/func.9/preset/remove", ",", "function.1/func.9/preset/remove/current", ",", "function.1/func.9/preset/remove/next", ",", "function.1/func.9/preset/remove/previous", ",", "function.1/func.9/preset/store", ",", "function.1/func.9/preset/store/current", ",", "function.1/func.9/preset/store/next", ",", "function.1/func.9/preset/store/previous", ",", "function.1/func.9/preset/write", ",", "function.1/model/documentation/generate", ",", "function.1/model/help", ",", "function.1/model/internals", ",", "function.1/model/reference", ",", "function.1/preset/read", ",", "function.1/preset/recall", ",", "function.1/preset/recall/current", ",", "function.1/preset/recall/next", ",", "function.1/preset/recall/previous", ",", "function.1/preset/remove", ",", "function.1/preset/remove/current", ",", "function.1/preset/remove/next", ",", "function.1/preset/remove/previous", ",", "function.1/preset/store", ",", "function.1/preset/store/current", ",", "function.1/preset/store/next", ",", "function.1/preset/store/previous", ",", "function.1/preset/write", ",", "function.2/func.1/model/documentation/generate", ",", "function.2/func.1/model/help", ",", "function.2/func.1/model/internals", ",", "function.2/func.1/model/reference", ",", "function.2/func.1/preset/read", ",", "function.2/func.1/preset/recall", ",", "function.2/func.1/preset/recall/current", ",", "function.2/func.1/preset/recall/next", ",", "function.2/func.1/preset/recall/previous", ",", "function.2/func.1/preset/remove", ",", "function.2/func.1/preset/remove/current", ",", "function.2/func.1/preset/remove/next", ",", "function.2/func.1/preset/remove/previous", ",", "function.2/func.1/preset/store", ",", "function.2/func.1/preset/store/current", ",", "function.2/func.1/preset/store/next", ",", "function.2/func.1/preset/store/previous", ",", "function.2/func.1/preset/write", ",", "function.2/func.10/model/documentation/generate", ",", "function.2/func.10/model/help", ",", "function.2/func.10/model/internals", ",", "function.2/func.10/model/reference", ",", "function.2/func.10/preset/read", ",", "function.2/func.10/preset/recall", ",", "function.2/func.10/preset/recall/current", ",", "function.2/func.10/preset/recall/next", ",", "function.2/func.10/preset/recall/previous", ",", "function.2/func.10/preset/remove", ",", "function.2/func.10/preset/remove/current", ",", "function.2/func.10/preset/remove/next", ",", "function.2/func.10/preset/remove/previous", ",", "function.2/func.10/preset/store", ",", "function.2/func.10/preset/store/current", ",", "function.2/func.10/preset/store/next", ",", "function.2/func.10/preset/store/previous", ",", "function.2/func.10/preset/write", ",", "function.2/func.2/model/documentation/generate", ",", "function.2/func.2/model/help", ",", "function.2/func.2/model/internals", ",", "function.2/func.2/model/reference", ",", "function.2/func.2/preset/read", ",", "function.2/func.2/preset/recall", ",", "function.2/func.2/preset/recall/current", ",", "function.2/func.2/preset/recall/next", ",", "function.2/func.2/preset/recall/previous", ",", "function.2/func.2/preset/remove", ",", "function.2/func.2/preset/remove/current", ",", "function.2/func.2/preset/remove/next", ",", "function.2/func.2/preset/remove/previous", ",", "function.2/func.2/preset/store", ",", "function.2/func.2/preset/store/current", ",", "function.2/func.2/preset/store/next", ",", "function.2/func.2/preset/store/previous", ",", "function.2/func.2/preset/write", ",", "function.2/func.3/model/documentation/generate", ",", "function.2/func.3/model/help", ",", "function.2/func.3/model/internals", ",", "function.2/func.3/model/reference", ",", "function.2/func.3/preset/read", ",", "function.2/func.3/preset/recall", ",", "function.2/func.3/preset/recall/current", ",", "function.2/func.3/preset/recall/next", ",", "function.2/func.3/preset/recall/previous", ",", "function.2/func.3/preset/remove", ",", "function.2/func.3/preset/remove/current", ",", "function.2/func.3/preset/remove/next", ",", "function.2/func.3/preset/remove/previous", ",", "function.2/func.3/preset/store", ",", "function.2/func.3/preset/store/current", ",", "function.2/func.3/preset/store/next", ",", "function.2/func.3/preset/store/previous", ",", "function.2/func.3/preset/write", ",", "function.2/func.4/model/documentation/generate", ",", "function.2/func.4/model/help", ",", "function.2/func.4/model/internals", ",", "function.2/func.4/model/reference", ",", "function.2/func.4/preset/read", ",", "function.2/func.4/preset/recall", ",", "function.2/func.4/preset/recall/current", ",", "function.2/func.4/preset/recall/next", ",", "function.2/func.4/preset/recall/previous", ",", "function.2/func.4/preset/remove", ",", "function.2/func.4/preset/remove/current", ",", "function.2/func.4/preset/remove/next", ",", "function.2/func.4/preset/remove/previous", ",", "function.2/func.4/preset/store", ",", "function.2/func.4/preset/store/current", ",", "function.2/func.4/preset/store/next", ",", "function.2/func.4/preset/store/previous", ",", "function.2/func.4/preset/write", ",", "function.2/func.5/model/documentation/generate", ",", "function.2/func.5/model/help", ",", "function.2/func.5/model/internals", ",", "function.2/func.5/model/reference", ",", "function.2/func.5/preset/read", ",", "function.2/func.5/preset/recall", ",", "function.2/func.5/preset/recall/current", ",", "function.2/func.5/preset/recall/next", ",", "function.2/func.5/preset/recall/previous", ",", "function.2/func.5/preset/remove", ",", "function.2/func.5/preset/remove/current", ",", "function.2/func.5/preset/remove/next", ",", "function.2/func.5/preset/remove/previous", ",", "function.2/func.5/preset/store", ",", "function.2/func.5/preset/store/current", ",", "function.2/func.5/preset/store/next", ",", "function.2/func.5/preset/store/previous", ",", "function.2/func.5/preset/write", ",", "function.2/func.6/model/documentation/generate", ",", "function.2/func.6/model/help", ",", "function.2/func.6/model/internals", ",", "function.2/func.6/model/reference", ",", "function.2/func.6/preset/read", ",", "function.2/func.6/preset/recall", ",", "function.2/func.6/preset/recall/current", ",", "function.2/func.6/preset/recall/next", ",", "function.2/func.6/preset/recall/previous", ",", "function.2/func.6/preset/remove", ",", "function.2/func.6/preset/remove/current", ",", "function.2/func.6/preset/remove/next", ",", "function.2/func.6/preset/remove/previous", ",", "function.2/func.6/preset/store", ",", "function.2/func.6/preset/store/current", ",", "function.2/func.6/preset/store/next", ",", "function.2/func.6/preset/store/previous", ",", "function.2/func.6/preset/write", ",", "function.2/func.7/model/documentation/generate", ",", "function.2/func.7/model/help", ",", "function.2/func.7/model/internals", ",", "function.2/func.7/model/reference", ",", "function.2/func.7/preset/read", ",", "function.2/func.7/preset/recall", ",", "function.2/func.7/preset/recall/current", ",", "function.2/func.7/preset/recall/next", ",", "function.2/func.7/preset/recall/previous", ",", "function.2/func.7/preset/remove", ",", "function.2/func.7/preset/remove/current", ",", "function.2/func.7/preset/remove/next", ",", "function.2/func.7/preset/remove/previous", ",", "function.2/func.7/preset/store", ",", "function.2/func.7/preset/store/current", ",", "function.2/func.7/preset/store/next", ",", "function.2/func.7/preset/store/previous", ",", "function.2/func.7/preset/write", ",", "function.2/func.8/model/documentation/generate", ",", "function.2/func.8/model/help", ",", "function.2/func.8/model/internals", ",", "function.2/func.8/model/reference", ",", "function.2/func.8/preset/read", ",", "function.2/func.8/preset/recall", ",", "function.2/func.8/preset/recall/current", ",", "function.2/func.8/preset/recall/next", ",", "function.2/func.8/preset/recall/previous", ",", "function.2/func.8/preset/remove", ",", "function.2/func.8/preset/remove/current", ",", "function.2/func.8/preset/remove/next", ",", "function.2/func.8/preset/remove/previous", ",", "function.2/func.8/preset/store", ",", "function.2/func.8/preset/store/current", ",", "function.2/func.8/preset/store/next", ",", "function.2/func.8/preset/store/previous", ",", "function.2/func.8/preset/write", ",", "function.2/func.9/model/documentation/generate", ",", "function.2/func.9/model/help", ",", "function.2/func.9/model/internals", ",", "function.2/func.9/model/reference", ",", "function.2/func.9/preset/read", ",", "function.2/func.9/preset/recall", ",", "function.2/func.9/preset/recall/current", ",", "function.2/func.9/preset/recall/next", ",", "function.2/func.9/preset/recall/previous", ",", "function.2/func.9/preset/remove", ",", "function.2/func.9/preset/remove/current", ",", "function.2/func.9/preset/remove/next", ",", "function.2/func.9/preset/remove/previous", ",", "function.2/func.9/preset/store", ",", "function.2/func.9/preset/store/current", ",", "function.2/func.9/preset/store/next", ",", "function.2/func.9/preset/store/previous", ",", "function.2/func.9/preset/write", ",", "function.2/model/documentation/generate", ",", "function.2/model/help", ",", "function.2/model/internals", ",", "function.2/model/reference", ",", "function.2/preset/read", ",", "function.2/preset/recall", ",", "function.2/preset/recall/current", ",", "function.2/preset/recall/next", ",", "function.2/preset/recall/previous", ",", "function.2/preset/remove", ",", "function.2/preset/remove/current", ",", "function.2/preset/remove/next", ",", "function.2/preset/remove/previous", ",", "function.2/preset/store", ",", "function.2/preset/store/current", ",", "function.2/preset/store/next", ",", "function.2/preset/store/previous", ",", "function.2/preset/write", ",", "function.3/func.1/model/documentation/generate", ",", "function.3/func.1/model/help", ",", "function.3/func.1/model/internals", ",", "function.3/func.1/model/reference", ",", "function.3/func.1/preset/read", ",", "function.3/func.1/preset/recall", ",", "function.3/func.1/preset/recall/current", ",", "function.3/func.1/preset/recall/next", ",", "function.3/func.1/preset/recall/previous", ",", "function.3/func.1/preset/remove", ",", "function.3/func.1/preset/remove/current", ",", "function.3/func.1/preset/remove/next", ",", "function.3/func.1/preset/remove/previous", ",", "function.3/func.1/preset/store", ",", "function.3/func.1/preset/store/current", ",", "function.3/func.1/preset/store/next", ",", "function.3/func.1/preset/store/previous", ",", "function.3/func.1/preset/write", ",", "function.3/model/documentation/generate", ",", "function.3/model/help", ",", "function.3/model/internals", ",", "function.3/model/reference", ",", "function.3/preset/read", ",", "function.3/preset/recall", ",", "function.3/preset/recall/current", ",", "function.3/preset/recall/next", ",", "function.3/preset/recall/previous", ",", "function.3/preset/remove", ",", "function.3/preset/remove/current", ",", "function.3/preset/remove/next", ",", "function.3/preset/remove/previous", ",", "function.3/preset/store", ",", "function.3/preset/store/current", ",", "function.3/preset/store/next", ",", "function.3/preset/store/previous", ",", "function.3/preset/write", ",", "mapperBCF(view)/bcfMapper(view)/view/documentation/generate", ",", "mapperBCF(view)/bcfMapper(view)/view/help", ",", "mapperBCF(view)/bcfMapper(view)/view/internals", ",", "mapperBCF(view)/bcfMapper(view)/view/reference", ",", "mapperBCF(view)/ui/panel", ",", "mapperBCF(view)/ui/refresh", ",", "mapperBCF(view)/view/documentation/generate", ",", "mapperBCF(view)/view/help", ",", "mapperBCF(view)/view/internals", ",", "mapperBCF(view)/view/reference", ",", "mapperFunction(view).1/ui/refresh", ",", "mapperFunction(view).1/view/documentation/generate", ",", "mapperFunction(view).1/view/help", ",", "mapperFunction(view).1/view/internals", ",", "mapperFunction(view).1/view/reference", ",", "mapperFunction(view)/ui/refresh", ",", "mapperFunction(view)/view/documentation/generate", ",", "mapperFunction(view)/view/help", ",", "mapperFunction(view)/view/internals", ",", "mapperFunction(view)/view/reference", ",", "p(view).fresnFen/view/documentation/generate", ",", "p(view).fresnFen/view/help", ",", "p(view).fresnFen/view/internals", ",", "p(view).fresnFen/view/reference", ",", "p(view).fresntest/view/documentation/generate", ",", "p(view).fresntest/view/help", ",", "p(view).fresntest/view/internals", ",", "p(view).fresntest/view/reference", ",", "p.fresnFen/model/documentation/generate", ",", "p.fresnFen/model/help", ",", "p.fresnFen/model/internals", ",", "p.fresnFen/model/reference", ",", "p.fresnFen/preset/read", ",", "p.fresnFen/preset/recall", ",", "p.fresnFen/preset/recall/current", ",", "p.fresnFen/preset/recall/next", ",", "p.fresnFen/preset/recall/previous", ",", "p.fresnFen/preset/remove", ",", "p.fresnFen/preset/remove/current", ",", "p.fresnFen/preset/remove/next", ",", "p.fresnFen/preset/remove/previous", ",", "p.fresnFen/preset/store", ",", "p.fresnFen/preset/store/current", ",", "p.fresnFen/preset/store/next", ",", "p.fresnFen/preset/store/previous", ",", "p.fresnFen/preset/write", ",", "p.fresntest/model/documentation/generate", ",", "p.fresntest/model/help", ",", "p.fresntest/model/internals", ",", "p.fresntest/model/reference", ",", "p.fresntest/preset/read", ",", "p.fresntest/preset/recall", ",", "p.fresntest/preset/recall/current", ",", "p.fresntest/preset/recall/next", ",", "p.fresntest/preset/recall/previous", ",", "p.fresntest/preset/remove", ",", "p.fresntest/preset/remove/current", ",", "p.fresntest/preset/remove/next", ",", "p.fresntest/preset/remove/previous", ",", "p.fresntest/preset/store", ",", "p.fresntest/preset/store/current", ",", "p.fresntest/preset/store/next", ",", "p.fresntest/preset/store/previous", ",", "p.fresntest/preset/write", ",", "p2(view).T8/view/documentation/generate", ",", "p2(view).T8/view/help", ",", "p2(view).T8/view/internals", ",", "p2(view).T8/view/reference", ",", "p2(view).brabo/view/documentation/generate", ",", "p2(view).brabo/view/help", ",", "p2(view).brabo/view/internals", ",", "p2(view).brabo/view/reference", ",", "p2(view).fluo/view/documentation/generate", ",", "p2(view).fluo/view/help", ",", "p2(view).fluo/view/internals", ",", "p2(view).fluo/view/reference", ",", "p2(view).fresn/view/documentation/generate", ",", "p2(view).fresn/view/help", ",", "p2(view).fresn/view/internals", ",", "p2(view).fresn/view/reference", ",", "p2(view).latV/view/documentation/generate", ",", "p2(view).latV/view/help", ",", "p2(view).latV/view/internals", ",", "p2(view).latV/view/reference", ",", "p2(view).raz/view/documentation/generate", ",", "p2(view).raz/view/help", ",", "p2(view).raz/view/internals", ",", "p2(view).raz/view/reference", ",", "p2(view).svob/view/documentation/generate", ",", "p2(view).svob/view/help", ",", "p2(view).svob/view/internals", ",", "p2(view).svob/view/reference", ",", "p2.T8/model/documentation/generate", ",", "p2.T8/model/help", ",", "p2.T8/model/internals", ",", "p2.T8/model/reference", ",", "p2.T8/preset/read", ",", "p2.T8/preset/recall", ",", "p2.T8/preset/recall/current", ",", "p2.T8/preset/recall/next", ",", "p2.T8/preset/recall/previous", ",", "p2.T8/preset/remove", ",", "p2.T8/preset/remove/current", ",", "p2.T8/preset/remove/next", ",", "p2.T8/preset/remove/previous", ",", "p2.T8/preset/store", ",", "p2.T8/preset/store/current", ",", "p2.T8/preset/store/next", ",", "p2.T8/preset/store/previous", ",", "p2.T8/preset/write", ",", "p2.brabo/model/documentation/generate", ",", "p2.brabo/model/help", ",", "p2.brabo/model/internals", ",", "p2.brabo/model/reference", ",", "p2.brabo/preset/read", ",", "p2.brabo/preset/recall", ",", "p2.brabo/preset/recall/current", ",", "p2.brabo/preset/recall/next", ",", "p2.brabo/preset/recall/previous", ",", "p2.brabo/preset/remove", ",", "p2.brabo/preset/remove/current", ",", "p2.brabo/preset/remove/next", ",", "p2.brabo/preset/remove/previous", ",", "p2.brabo/preset/store", ",", "p2.brabo/preset/store/current", ",", "p2.brabo/preset/store/next", ",", "p2.brabo/preset/store/previous", ",", "p2.brabo/preset/write", ",", "p2.fluo/model/documentation/generate", ",", "p2.fluo/model/help", ",", "p2.fluo/model/internals", ",", "p2.fluo/model/reference", ",", "p2.fluo/preset/read", ",", "p2.fluo/preset/recall", ",", "p2.fluo/preset/recall/current", ",", "p2.fluo/preset/recall/next", ",", "p2.fluo/preset/recall/previous", ",", "p2.fluo/preset/remove", ",", "p2.fluo/preset/remove/current", ",", "p2.fluo/preset/remove/next", ",", "p2.fluo/preset/remove/previous", ",", "p2.fluo/preset/store", ",", "p2.fluo/preset/store/current", ",", "p2.fluo/preset/store/next", ",", "p2.fluo/preset/store/previous", ",", "p2.fluo/preset/write", ",", "p2.fresn/model/documentation/generate", ",", "p2.fresn/model/help", ",", "p2.fresn/model/internals", ",", "p2.fresn/model/reference", ",", "p2.fresn/preset/read", ",", "p2.fresn/preset/recall", ",", "p2.fresn/preset/recall/current", ",", "p2.fresn/preset/recall/next", ",", "p2.fresn/preset/recall/previous", ",", "p2.fresn/preset/remove", ",", "p2.fresn/preset/remove/current", ",", "p2.fresn/preset/remove/next", ",", "p2.fresn/preset/remove/previous", ",", "p2.fresn/preset/store", ",", "p2.fresn/preset/store/current", ",", "p2.fresn/preset/store/next", ",", "p2.fresn/preset/store/previous", ",", "p2.fresn/preset/write", ",", "p2.latV/model/documentation/generate", ",", "p2.latV/model/help", ",", "p2.latV/model/internals", ",", "p2.latV/model/reference", ",", "p2.latV/preset/read", ",", "p2.latV/preset/recall", ",", "p2.latV/preset/recall/current", ",", "p2.latV/preset/recall/next", ",", "p2.latV/preset/recall/previous", ",", "p2.latV/preset/remove", ",", "p2.latV/preset/remove/current", ",", "p2.latV/preset/remove/next", ",", "p2.latV/preset/remove/previous", ",", "p2.latV/preset/store", ",", "p2.latV/preset/store/current", ",", "p2.latV/preset/store/next", ",", "p2.latV/preset/store/previous", ",", "p2.latV/preset/write", ",", "p2.raz/model/documentation/generate", ",", "p2.raz/model/help", ",", "p2.raz/model/internals", ",", "p2.raz/model/reference", ",", "p2.raz/preset/read", ",", "p2.raz/preset/recall", ",", "p2.raz/preset/recall/current", ",", "p2.raz/preset/recall/next", ",", "p2.raz/preset/recall/previous", ",", "p2.raz/preset/remove", ",", "p2.raz/preset/remove/current", ",", "p2.raz/preset/remove/next", ",", "p2.raz/preset/remove/previous", ",", "p2.raz/preset/store", ",", "p2.raz/preset/store/current", ",", "p2.raz/preset/store/next", ",", "p2.raz/preset/store/previous", ",", "p2.raz/preset/write", ",", "p2.svob/model/documentation/generate", ",", "p2.svob/model/help", ",", "p2.svob/model/internals", ",", "p2.svob/model/reference", ",", "p2.svob/preset/read", ",", "p2.svob/preset/recall", ",", "p2.svob/preset/recall/current", ",", "p2.svob/preset/recall/next", ",", "p2.svob/preset/recall/previous", ",", "p2.svob/preset/remove", ",", "p2.svob/preset/remove/current", ",", "p2.svob/preset/remove/next", ",", "p2.svob/preset/remove/previous", ",", "p2.svob/preset/store", ",", "p2.svob/preset/store/current", ",", "p2.svob/preset/store/next", ",", "p2.svob/preset/store/previous", ",", "p2.svob/preset/write", ",", "p4(view).mask/view/documentation/generate", ",", "p4(view).mask/view/help", ",", "p4(view).mask/view/internals", ",", "p4(view).mask/view/reference", ",", "p4.mask/model/documentation/generate", ",", "p4.mask/model/help", ",", "p4.mask/model/internals", ",", "p4.mask/model/reference", ",", "p4.mask/preset/read", ",", "p4.mask/preset/recall", ",", "p4.mask/preset/recall/current", ",", "p4.mask/preset/recall/next", ",", "p4.mask/preset/recall/previous", ",", "p4.mask/preset/remove", ",", "p4.mask/preset/remove/current", ",", "p4.mask/preset/remove/next", ",", "p4.mask/preset/remove/previous", ",", "p4.mask/preset/store", ",", "p4.mask/preset/store/current", ",", "p4.mask/preset/store/next", ",", "p4.mask/preset/store/previous", ",", "p4.mask/preset/write", ",", "preset/read", ",", "preset/recall", ",", "preset/recall/current", ",", "preset/recall/next", ",", "preset/recall/previous", ",", "preset/remove", ",", "preset/remove/current", ",", "preset/remove/next", ",", "preset/remove/previous", ",", "preset/store", ",", "preset/store/current", ",", "preset/store/next", ",", "preset/store/previous", ",", "preset/write", ",", "wacmap.selador/model/documentation/generate", ",", "wacmap.selador/model/help", ",", "wacmap.selador/model/internals", ",", "wacmap.selador/model/reference", ",", "wacom/model/documentation/generate", ",", "wacom/model/help", ",", "wacom/model/internals", ",", "wacom/model/reference", ",", "<separator>", ",", "(", "returns", ":)", ",", "BCF/model/address", ",", "BCF/model/class", ",", "BCF/preset/names", ",", "BCF/track.1/fader/model/address", ",", "BCF/track.1/fader/model/class", ",", "BCF/track.1/key.1/model/address", ",", "BCF/track.1/key.1/model/class", ",", "BCF/track.1/key.2/model/address", ",", "BCF/track.1/key.2/model/class", ",", "BCF/track.1/model/address", ",", "BCF/track.1/model/class", ",", "BCF/track.1/press.1/model/address", ",", "BCF/track.1/press.1/model/class", ",", "BCF/track.1/press.2/model/address", ",", "BCF/track.1/press.2/model/class", ",", "BCF/track.1/press.3/model/address", ",", "BCF/track.1/press.3/model/class", ",", "BCF/track.1/press.4/model/address", ",", "BCF/track.1/press.4/model/class", ",", "BCF/track.1/turn.1/model/address", ",", "BCF/track.1/turn.1/model/class", ",", "BCF/track.1/turn.2/model/address", ",", "BCF/track.1/turn.2/model/class", ",", "BCF/track.1/turn.3/model/address", ",", "BCF/track.1/turn.3/model/class", ",", "BCF/track.1/turn.4/model/address", ",", "BCF/track.1/turn.4/model/class", ",", "BCF/track.2/fader/model/address", ",", "BCF/track.2/fader/model/class", ",", "BCF/track.2/key.1/model/address", ",", "BCF/track.2/key.1/model/class", ",", "BCF/track.2/key.2/model/address", ",", "BCF/track.2/key.2/model/class", ",", "BCF/track.2/model/address", ",", "BCF/track.2/model/class", ",", "BCF/track.2/press.1/model/address", ",", "BCF/track.2/press.1/model/class", ",", "BCF/track.2/press.2/model/address", ",", "BCF/track.2/press.2/model/class", ",", "BCF/track.2/press.3/model/address", ",", "BCF/track.2/press.3/model/class", ",", "BCF/track.2/press.4/model/address", ",", "BCF/track.2/press.4/model/class", ",", "BCF/track.2/turn.1/model/address", ",", "BCF/track.2/turn.1/model/class", ",", "BCF/track.2/turn.2/model/address", ",", "BCF/track.2/turn.2/model/class", ",", "BCF/track.2/turn.3/model/address", ",", "BCF/track.2/turn.3/model/class", ",", "BCF/track.2/turn.4/model/address", ",", "BCF/track.2/turn.4/model/class", ",", "BCF/track.3/fader/model/address", ",", "BCF/track.3/fader/model/class", ",", "BCF/track.3/key.1/model/address", ",", "BCF/track.3/key.1/model/class", ",", "BCF/track.3/key.2/model/address", ",", "BCF/track.3/key.2/model/class", ",", "BCF/track.3/model/address", ",", "BCF/track.3/model/class", ",", "BCF/track.3/press.1/model/address", ",", "BCF/track.3/press.1/model/class", ",", "BCF/track.3/press.2/model/address", ",", "BCF/track.3/press.2/model/class", ",", "BCF/track.3/press.3/model/address", ",", "BCF/track.3/press.3/model/class", ",", "BCF/track.3/press.4/model/address", ",", "BCF/track.3/press.4/model/class", ",", "BCF/track.3/turn.1/model/address", ",", "BCF/track.3/turn.1/model/class", ",", "BCF/track.3/turn.2/model/address", ",", "BCF/track.3/turn.2/model/class", ",", "BCF/track.3/turn.3/model/address", ",", "BCF/track.3/turn.3/model/class", ",", "BCF/track.3/turn.4/model/address", ",", "BCF/track.3/turn.4/model/class", ",", "BCF/track.4/fader/model/address", ",", "BCF/track.4/fader/model/class", ",", "BCF/track.4/key.1/model/address", ",", "BCF/track.4/key.1/model/class", ",", "BCF/track.4/key.2/model/address", ",", "BCF/track.4/key.2/model/class", ",", "BCF/track.4/model/address", ",", "BCF/track.4/model/class", ",", "BCF/track.4/press.1/model/address", ",", "BCF/track.4/press.1/model/class", ",", "BCF/track.4/press.2/model/address", ",", "BCF/track.4/press.2/model/class", ",", "BCF/track.4/press.3/model/address", ",", "BCF/track.4/press.3/model/class", ",", "BCF/track.4/press.4/model/address", ",", "BCF/track.4/press.4/model/class", ",", "BCF/track.4/turn.1/model/address", ",", "BCF/track.4/turn.1/model/class", ",", "BCF/track.4/turn.2/model/address", ",", "BCF/track.4/turn.2/model/class", ",", "BCF/track.4/turn.3/model/address", ",", "BCF/track.4/turn.3/model/class", ",", "BCF/track.4/turn.4/model/address", ",", "BCF/track.4/turn.4/model/class", ",", "BCF/track.5/fader/model/address", ",", "BCF/track.5/fader/model/class", ",", "BCF/track.5/key.1/model/address", ",", "BCF/track.5/key.1/model/class", ",", "BCF/track.5/key.2/model/address", ",", "BCF/track.5/key.2/model/class", ",", "BCF/track.5/model/address", ",", "BCF/track.5/model/class", ",", "BCF/track.5/press.1/model/address", ",", "BCF/track.5/press.1/model/class", ",", "BCF/track.5/press.2/model/address", ",", "BCF/track.5/press.2/model/class", ",", "BCF/track.5/press.3/model/address", ",", "BCF/track.5/press.3/model/class", ",", "BCF/track.5/press.4/model/address", ",", "BCF/track.5/press.4/model/class", ",", "BCF/track.5/turn.1/model/address", ",", "BCF/track.5/turn.1/model/class", ",", "BCF/track.5/turn.2/model/address", ",", "BCF/track.5/turn.2/model/class", ",", "BCF/track.5/turn.3/model/address", ",", "BCF/track.5/turn.3/model/class", ",", "BCF/track.5/turn.4/model/address", ",", "BCF/track.5/turn.4/model/class", ",", "BCF/track.6/fader/model/address", ",", "BCF/track.6/fader/model/class", ",", "BCF/track.6/key.1/model/address", ",", "BCF/track.6/key.1/model/class", ",", "BCF/track.6/key.2/model/address", ",", "BCF/track.6/key.2/model/class", ",", "BCF/track.6/model/address", ",", "BCF/track.6/model/class", ",", "BCF/track.6/press.1/model/address", ",", "BCF/track.6/press.1/model/class", ",", "BCF/track.6/press.2/model/address", ",", "BCF/track.6/press.2/model/class", ",", "BCF/track.6/press.3/model/address", ",", "BCF/track.6/press.3/model/class", ",", "BCF/track.6/press.4/model/address", ",", "BCF/track.6/press.4/model/class", ",", "BCF/track.6/turn.1/model/address", ",", "BCF/track.6/turn.1/model/class", ",", "BCF/track.6/turn.2/model/address", ",", "BCF/track.6/turn.2/model/class", ",", "BCF/track.6/turn.3/model/address", ",", "BCF/track.6/turn.3/model/class", ",", "BCF/track.6/turn.4/model/address", ",", "BCF/track.6/turn.4/model/class", ",", "BCF/track.7/fader/model/address", ",", "BCF/track.7/fader/model/class", ",", "BCF/track.7/key.1/model/address", ",", "BCF/track.7/key.1/model/class", ",", "BCF/track.7/key.2/model/address", ",", "BCF/track.7/key.2/model/class", ",", "BCF/track.7/model/address", ",", "BCF/track.7/model/class", ",", "BCF/track.7/press.1/model/address", ",", "BCF/track.7/press.1/model/class", ",", "BCF/track.7/press.2/model/address", ",", "BCF/track.7/press.2/model/class", ",", "BCF/track.7/press.3/model/address", ",", "BCF/track.7/press.3/model/class", ",", "BCF/track.7/press.4/model/address", ",", "BCF/track.7/press.4/model/class", ",", "BCF/track.7/turn.1/model/address", ",", "BCF/track.7/turn.1/model/class", ",", "BCF/track.7/turn.2/model/address", ",", "BCF/track.7/turn.2/model/class", ",", "BCF/track.7/turn.3/model/address", ",", "BCF/track.7/turn.3/model/class", ",", "BCF/track.7/turn.4/model/address", ",", "BCF/track.7/turn.4/model/class", ",", "BCF/track.8/fader/model/address", ",", "BCF/track.8/fader/model/class", ",", "BCF/track.8/key.1/model/address", ",", "BCF/track.8/key.1/model/class", ",", "BCF/track.8/key.2/model/address", ",", "BCF/track.8/key.2/model/class", ",", "BCF/track.8/model/address", ",", "BCF/track.8/model/class", ",", "BCF/track.8/press.1/model/address", ",", "BCF/track.8/press.1/model/class", ",", "BCF/track.8/press.2/model/address", ",", "BCF/track.8/press.2/model/class", ",", "BCF/track.8/press.3/model/address", ",", "BCF/track.8/press.3/model/class", ",", "BCF/track.8/press.4/model/address", ",", "BCF/track.8/press.4/model/class", ",", "BCF/track.8/turn.1/model/address", ",", "BCF/track.8/turn.1/model/class", ",", "BCF/track.8/turn.2/model/address", ",", "BCF/track.8/turn.2/model/class", ",", "BCF/track.8/turn.3/model/address", ",", "BCF/track.8/turn.3/model/class", ",", "BCF/track.8/turn.4/model/address", ",", "BCF/track.8/turn.4/model/class", ",", "Sel(view).arr/Selador(view)/view/class", ",", "Sel(view).arr/view/class", ",", "Sel(view).bas/Selador(view)/view/class", ",", "Sel(view).bas/view/class", ",", "Sel(view).face/Selador(view)/view/class", ",", "Sel(view).face/view/class", ",", "Sel(view).inter/Selador(view)/view/class", ",", "Sel(view).inter/view/class", ",", "Sel(view).rido/Selador(view)/view/class", ",", "Sel(view).rido/view/class", ",", "Sel.arr/Selador.1/model/address", ",", "Sel.arr/Selador.1/model/class", ",", "Sel.arr/Selador.2/model/address", ",", "Sel.arr/Selador.2/model/class", ",", "Sel.arr/Selador.3/model/address", ",", "Sel.arr/Selador.3/model/class", ",", "Sel.arr/model/address", ",", "Sel.arr/model/class", ",", "Sel.arr/preset/names", ",", "Sel.bas/Selador.1/model/address", ",", "Sel.bas/Selador.1/model/class", ",", "Sel.bas/Selador.2/model/address", ",", "Sel.bas/Selador.2/model/class", ",", "Sel.bas/model/address", ",", "Sel.bas/model/class", ",", "Sel.bas/preset/names", ",", "Sel.face/Selador.1/model/address", ",", "Sel.face/Selador.1/model/class", ",", "Sel.face/Selador.2/model/address", ",", "Sel.face/Selador.2/model/class", ",", "Sel.face/model/address", ",", "Sel.face/model/class", ",", "Sel.face/preset/names", ",", "Sel.inter/Selador.1/model/address", ",", "Sel.inter/Selador.1/model/class", ",", "Sel.inter/Selador.2/model/address", ",", "Sel.inter/Selador.2/model/class", ",", "Sel.inter/Selador.3/model/address", ",", "Sel.inter/Selador.3/model/class", ",", "Sel.inter/model/address", ",", "Sel.inter/model/class", ",", "Sel.inter/preset/names", ",", "Sel.rido/Selador.1/model/address", ",", "Sel.rido/Selador.1/model/class", ",", "Sel.rido/Selador.2/model/address", ",", "Sel.rido/Selador.2/model/class", ",", "Sel.rido/model/address", ",", "Sel.rido/model/class", ",", "Sel.rido/preset/names", ",", "Zdbap(view)/ZdbapSource(view)/view/class", ",", "Zdbap(view)/view/class", ",", "Zdbap/model/address", ",", "Zdbap/model/class", ",", "Zdbap/source.1/model/address", ",", "Zdbap/source.1/model/class", ",", "Zdbap/source.1/trajectory/menu", ",", "Zdbap/source.2/model/address", ",", "Zdbap/source.2/model/class", ",", "Zdbap/source.2/trajectory/menu", ",", "Zdbap/source.3/model/address", ",", "Zdbap/source.3/model/class", ",", "Zdbap/source.3/trajectory/menu", ",", "Zdbap/source.4/model/address", ",", "Zdbap/source.4/model/class", ",", "Zdbap/source.4/trajectory/menu", ",", "Zdbap/source.5/model/address", ",", "Zdbap/source.5/model/class", ",", "Zdbap/source.5/trajectory/menu", ",", "Zdbap/source.6/model/address", ",", "Zdbap/source.6/model/class", ",", "Zdbap/source.6/trajectory/menu", ",", "Zdbap/speaker.1/model/address", ",", "Zdbap/speaker.1/model/class", ",", "Zdbap/speaker.2/model/address", ",", "Zdbap/speaker.2/model/class", ",", "Zdbap/speaker.3/model/address", ",", "Zdbap/speaker.3/model/class", ",", "Zdbap/speaker.4/model/address", ",", "Zdbap/speaker.4/model/class", ",", "cueManager(view)/view/class", ",", "cueManager/cue/current/name", ",", "cueManager/cue/current/number", ",", "cueManager/cue/current/time", ",", "cueManager/cue/names", ",", "cueManager/cue/recalled", ",", "cueManager/cuelist/names", ",", "cueManager/model/address", ",", "cueManager/model/class", ",", "cueManager/preset/current", ",", "cueManager/preset/names", ",", "cuelist/names", ",", "cyclo(view)/view/class", ",", "cyclo/model/address", ",", "cyclo/model/class", ",", "cyclo/preset/names", ",", "function.1/func.1/model/address", ",", "function.1/func.1/model/class", ",", "function.1/func.1/position", ",", "function.1/func.1/preset/names", ",", "function.1/func.10/model/address", ",", "function.1/func.10/model/class", ",", "function.1/func.10/position", ",", "function.1/func.10/preset/names", ",", "function.1/func.2/model/address", ",", "function.1/func.2/model/class", ",", "function.1/func.2/position", ",", "function.1/func.2/preset/names", ",", "function.1/func.3/model/address", ",", "function.1/func.3/model/class", ",", "function.1/func.3/position", ",", "function.1/func.3/preset/names", ",", "function.1/func.4/model/address", ",", "function.1/func.4/model/class", ",", "function.1/func.4/position", ",", "function.1/func.4/preset/names", ",", "function.1/func.5/model/address", ",", "function.1/func.5/model/class", ",", "function.1/func.5/position", ",", "function.1/func.5/preset/names", ",", "function.1/func.6/model/address", ",", "function.1/func.6/model/class", ",", "function.1/func.6/position", ",", "function.1/func.6/preset/names", ",", "function.1/func.7/model/address", ",", "function.1/func.7/model/class", ",", "function.1/func.7/position", ",", "function.1/func.7/preset/names", ",", "function.1/func.8/model/address", ",", "function.1/func.8/model/class", ",", "function.1/func.8/position", ",", "function.1/func.8/preset/names", ",", "function.1/func.9/model/address", ",", "function.1/func.9/model/class", ",", "function.1/func.9/position", ",", "function.1/func.9/preset/names", ",", "function.1/model/address", ",", "function.1/model/class", ",", "function.1/preset/names", ",", "function.2/func.1/model/address", ",", "function.2/func.1/model/class", ",", "function.2/func.1/position", ",", "function.2/func.1/preset/names", ",", "function.2/func.10/model/address", ",", "function.2/func.10/model/class", ",", "function.2/func.10/position", ",", "function.2/func.10/preset/names", ",", "function.2/func.2/model/address", ",", "function.2/func.2/model/class", ",", "function.2/func.2/position", ",", "function.2/func.2/preset/names", ",", "function.2/func.3/model/address", ",", "function.2/func.3/model/class", ",", "function.2/func.3/position", ",", "function.2/func.3/preset/names", ",", "function.2/func.4/model/address", ",", "function.2/func.4/model/class", ",", "function.2/func.4/position", ",", "function.2/func.4/preset/names", ",", "function.2/func.5/model/address", ",", "function.2/func.5/model/class", ",", "function.2/func.5/position", ",", "function.2/func.5/preset/names", ",", "function.2/func.6/model/address", ",", "function.2/func.6/model/class", ",", "function.2/func.6/position", ",", "function.2/func.6/preset/names", ",", "function.2/func.7/model/address", ",", "function.2/func.7/model/class", ",", "function.2/func.7/position", ",", "function.2/func.7/preset/names", ",", "function.2/func.8/model/address", ",", "function.2/func.8/model/class", ",", "function.2/func.8/position", ",", "function.2/func.8/preset/names", ",", "function.2/func.9/model/address", ",", "function.2/func.9/model/class", ",", "function.2/func.9/position", ",", "function.2/func.9/preset/names", ",", "function.2/model/address", ",", "function.2/model/class", ",", "function.2/preset/names", ",", "function.3/func.1/model/address", ",", "function.3/func.1/model/class", ",", "function.3/func.1/position", ",", "function.3/func.1/preset/names", ",", "function.3/model/address", ",", "function.3/model/class", ",", "function.3/preset/names", ",", "mapperBCF(view)/bcfMapper(view)/view/class", ",", "mapperBCF(view)/view/class", ",", "mapperFunction(view).1/view/class", ",", "mapperFunction(view)/view/class", ",", "p(view).fresnFen/view/class", ",", "p(view).fresntest/view/class", ",", "p.fresnFen/model/address", ",", "p.fresnFen/model/class", ",", "p.fresnFen/preset/names", ",", "p.fresntest/model/address", ",", "p.fresntest/model/class", ",", "p.fresntest/preset/names", ",", "p2(view).T8/view/class", ",", "p2(view).brabo/view/class", ",", "p2(view).fluo/view/class", ",", "p2(view).fresn/view/class", ",", "p2(view).latV/view/class", ",", "p2(view).raz/view/class", ",", "p2(view).svob/view/class", ",", "p2.T8/model/address", ",", "p2.T8/model/class", ",", "p2.T8/preset/names", ",", "p2.brabo/model/address", ",", "p2.brabo/model/class", ",", "p2.brabo/preset/names", ",", "p2.fluo/model/address", ",", "p2.fluo/model/class", ",", "p2.fluo/preset/names", ",", "p2.fresn/model/address", ",", "p2.fresn/model/class", ",", "p2.fresn/preset/names", ",", "p2.latV/model/address", ",", "p2.latV/model/class", ",", "p2.latV/preset/names", ",", "p2.raz/model/address", ",", "p2.raz/model/class", ",", "p2.raz/preset/names", ",", "p2.svob/model/address", ",", "p2.svob/model/class", ",", "p2.svob/preset/names", ",", "p4(view).mask/view/class", ",", "p4.mask/model/address", ",", "p4.mask/model/class", ",", "p4.mask/preset/names", ",", "preset/names", ",", "wacmap.selador/model/address", ",", "wacmap.selador/model/class", ",", "wacom/buttons", ",", "wacom/eraser", ",", "wacom/model/address", ",", "wacom/model/class", ",", "wacom/tilt/x", ",", "wacom/tilt/y", ",", "wacom/x", ",", "wacom/y", ",", "wacom/z", ",", "<separator>" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 360.0, 77.0, 25.0, 20.0 ],
					"prefix" : "Servo:/",
					"presentation" : 1,
					"presentation_rect" : [ 388.0, 2.0, 15.0, 20.0 ],
					"types" : [  ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-129", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [ 372.5, 163.5, 262.5, 163.5 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-81", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-84", 0 ]
				}

			}
 ]
	}

}
