{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 729.0, 449.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 729.0, 449.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "out[2]",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 52.0, 349.0, 24.0, 24.0 ],
					"id" : "obj-11",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 42.0, 76.0, 61.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multiout",
					"text" : "jcom.multi.out~",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 32,
					"patching_rect" : [ 252.0, 93.0, 417.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multiin",
					"text" : "jcom.multi.in~",
					"fontname" : "Arial",
					"numinlets" : 32,
					"numoutlets" : 1,
					"patching_rect" : [ 252.0, 313.0, 417.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "messages",
					"text" : "p messages",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 179.0, 129.0, 61.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 183.0, 324.0, 361.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 183.0, 324.0, 361.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p source_position",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 36.0, 168.0, 89.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ -1139.0, 5.0, 935.0, 733.0 ],
										"bglocked" : 0,
										"defrect" : [ -1139.0, 5.0, 935.0, 733.0 ],
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
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "number",
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"fontname" : "Arial",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1,
													"triscale" : 0.9,
													"numoutlets" : 2,
													"patching_rect" : [ 451.0, 554.0, 35.0, 20.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "ele",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 414.0, 574.0, 35.0, 20.0 ],
													"fontsize" : 12.0,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "azi",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 367.0, 573.0, 32.0, 20.0 ],
													"fontsize" : 12.0,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"fontname" : "Arial",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1,
													"triscale" : 0.9,
													"numoutlets" : 2,
													"patching_rect" : [ 404.0, 554.0, 44.0, 20.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"fontname" : "Arial",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"numinlets" : 1,
													"triscale" : 0.9,
													"numoutlets" : 2,
													"patching_rect" : [ 357.0, 553.0, 43.0, 20.0 ],
													"fontsize" : 12.0,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "actual panning direction",
													"linecount" : 2,
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 358.0, 590.0, 99.0, 34.0 ],
													"fontsize" : 12.0,
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "actual spreading",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 487.0, 554.0, 119.0, 20.0 ],
													"fontsize" : 12.0,
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 180.0, 138.0, 51.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 180.0, 114.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 180.0, 90.0, 51.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 138.0, 51.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 114.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 90.0, 51.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 10.0, 124.0, 20.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang" ],
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend getcell",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 503.0, 224.0, 79.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 16 0",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 3,
													"patching_rect" : [ 509.0, 183.0, 46.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 509.0, 147.0, 96.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 509.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- spread",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.0, 354.0, 100.0, 17.0 ],
													"fontsize" : 9.0,
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- dist",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.0, 342.0, 100.0, 17.0 ],
													"fontsize" : 9.0,
													"id" : "obj-21"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- ele",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.0, 330.0, 100.0, 17.0 ],
													"fontsize" : 9.0,
													"id" : "obj-22"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "4 planes:",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.0, 306.0, 100.0, 17.0 ],
													"fontsize" : 9.0,
													"id" : "obj-23"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "- azi",
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.0, 318.0, 100.0, 17.0 ],
													"fontsize" : 9.0,
													"id" : "obj-24"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 234.0, 400.0, 29.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-25"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l i",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 253.0, 331.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "int" ],
													"id" : "obj-26"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "<",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 293.0, 363.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-27"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route cell",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 253.0, 309.0, 53.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-28"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /aed /spread /voices",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"patching_rect" : [ 50.0, 56.0, 402.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-29"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setcell $1 plane 3 val $2, getcell $1",
													"linecount" : 2,
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 180.0, 167.0, 126.0, 25.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-30"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setcell $1 plane 0 val $2, setcell $1 plane 1 val $3, setcell $1 plane 2 val $4, getcell $1",
													"linecount" : 4,
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 167.0, 126.0, 46.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-31"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jit.matrix #0_source_positions 4 float32 32",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 283.0, 213.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "jit_matrix", "" ],
													"id" : "obj-32"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 282.0, 529.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-33"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 234.0, 592.0, 38.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-34"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 234.0, 568.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-35"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 234.0, 466.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-36"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "vbap.mxo",
													"fontname" : "Arial",
													"numinlets" : 5,
													"numoutlets" : 5,
													"patching_rect" : [ 282.0, 501.0, 66.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "list", "int", "int", "int", "float" ],
													"id" : "obj-37"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 s 0. 0. 0. 0.",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 6,
													"patching_rect" : [ 234.0, 426.0, 105.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "int", "", "float", "float", "float", "float" ],
													"id" : "obj-38"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-39",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 234.0, 614.0, 15.0, 15.0 ],
													"id" : "obj-40",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "If speaker setup is updated, source positions are refreshed",
													"linecount" : 2,
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 616.0, 206.0, 155.0, 27.0 ],
													"fontsize" : 9.0,
													"id" : "obj-41"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-17", 2 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"color" : [ 0.6667, 0.6667, 0.6667, 1.0 ],
													"midpoints" : [ 512.5, 266.0, 59.5, 266.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [ 189.5, 222.0, 59.5, 222.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 1 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-34", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [ 595.5, 495.0, 291.5, 495.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 2 ],
													"destination" : [ "obj-37", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 2 ],
													"destination" : [ "obj-27", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 3 ],
													"destination" : [ "obj-37", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 5 ],
													"destination" : [ "obj-37", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 3 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p loudspeaker_setup",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 131.0, 133.0, 101.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 0.0, 44.0, 780.0, 679.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 44.0, 780.0, 679.0 ],
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
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 191.0, 472.0, 47.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-33"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set ls-directions",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 260.0, 429.0, 119.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-32"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 357.0, 241.0, 50.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-31"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 270.0, 203.0, 50.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-29"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 28.0, 87.0, 20.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-27"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p list_round",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 191.0, 420.0, 64.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 374.0, 271.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 374.0, 271.0, 600.0, 426.0 ],
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
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl group 256",
																	"fontname" : "Arial",
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 49.0, 165.0, 67.0, 17.0 ],
																	"fontsize" : 9.0,
																	"outlettype" : [ "", "" ],
																	"id" : "obj-1"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "round",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 66.0, 139.0, 34.0, 17.0 ],
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ],
																	"id" : "obj-2"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "iter",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 66.0, 118.0, 25.0, 17.0 ],
																	"fontsize" : 9.0,
																	"outlettype" : [ "" ],
																	"id" : "obj-3"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontname" : "Arial",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 49.0, 92.0, 27.0, 17.0 ],
																	"fontsize" : 9.0,
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 49.0, 72.0, 15.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 49.0, 187.0, 15.0, 15.0 ],
																	"id" : "obj-6",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "Angles have to be rounded to int.",
																	"fontname" : "Arial",
																	"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 145.0, 130.0, 157.0, 17.0 ],
																	"fontsize" : 9.0,
																	"id" : "obj-7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "define_loudspeakers seems to treat float angles as radians instead of degrees.",
																	"fontname" : "Arial",
																	"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 145.0, 151.0, 362.0, 17.0 ],
																	"fontsize" : 9.0,
																	"id" : "obj-8"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
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
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 10.0,
														"fontname" : "Arial",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontface" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_refresh_speaker-setup",
													"fontname" : "Arial",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 56.0, 141.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 191.0, 504.0, 36.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 0",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 191.0, 392.0, 51.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 191.0, 349.0, 36.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 256",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 221.0, 317.0, 67.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 343.0, 122.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 60.0, 192.0, 29.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b b dump",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"patching_rect" : [ 60.0, 134.0, 56.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "dump" ],
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 0",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 221.0, 269.0, 80.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "" ],
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"patching_rect" : [ 221.0, 179.0, 53.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-15",
													"save" : [ "#N", "coll", ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 282.0, 159.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clip 2 3",
													"fontname" : "Arial",
													"numinlets" : 3,
													"numoutlets" : 1,
													"patching_rect" : [ 282.0, 111.0, 44.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-17"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 343.0, 214.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-18"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /aed /dimensions /voices",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"patching_rect" : [ 221.0, 56.0, 202.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-19"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "define_loudspeakers 3 45 0 -45 0 135 0 -135 0",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 208.0, 566.0, 228.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-20"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 221.0, 36.0, 15.0, 15.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-21",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 208.0, 588.0, 15.0, 15.0 ],
													"id" : "obj-22",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Speaker setup is always refreshed when audio is started, in case numer of voices in or out has been changed.",
													"linecount" : 3,
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 395.0, 125.0, 181.0, 38.0 ],
													"fontsize" : 9.0,
													"id" : "obj-23"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [ 269.5, 452.0, 201.0, 452.0, 201.0, 453.0, 200.5, 453.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [ 291.5, 144.0, 321.0, 144.0, 321.0, 414.0, 269.5, 414.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 200.5, 557.0, 217.5, 557.0 ]
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
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [ 352.5, 385.0, 232.5, 385.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-18", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /source /destination",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 36.0, 91.0, 209.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 36.0, 56.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 36.0, 242.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 42.0, 48.0, 24.0, 24.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scripting",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 84.0, 124.0, 78.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 166.0, 182.0, 865.0, 491.0 ],
						"bglocked" : 0,
						"defrect" : [ 166.0, 182.0, 865.0, 491.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_refresh_speaker-setup",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 201.0, 141.0, 17.0 ],
									"fontsize" : 9.0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "script delete matrix",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 585.0, 361.0, 101.0, 15.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /source/voices /destination/voices",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 246.0, 79.0, 241.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Changes can not take place while audio is running",
									"fontname" : "Arial",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 605.0, 327.0, 215.0, 17.0 ],
									"fontsize" : 9.0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Only apply script if either /source/voices or /destination/voices has changed",
									"fontname" : "Arial",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 429.0, 232.0, 315.0, 17.0 ],
									"fontsize" : 9.0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 227.0, 256.0, 58.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 != $i3 || $i2 !=$i4 then $i1 $i2",
									"fontname" : "Arial",
									"numinlets" : 4,
									"numoutlets" : 1,
									"patching_rect" : [ 227.0, 232.0, 175.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 357.0, 126.0, 27.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "int" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p connect_from_matrix",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 227.0, 361.0, 117.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 881.0, 321.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 881.0, 321.0 ],
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
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 305.0, 267.0, 44.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set multiin",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 305.0, 201.0, 95.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script connect matrix",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 77.0, 201.0, 142.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "was: \nsprintf script connect matrix %ld multiin %ld",
													"linecount" : 2,
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 157.0, 120.0, 219.0, 29.0 ],
													"fontsize" : 10.0,
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 120.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 75.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 0 0",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 3,
													"patching_rect" : [ 50.0, 115.0, 46.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 305.0, 297.0, 15.0, 15.0 ],
													"id" : "obj-7",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 86.5, 186.0, 314.5, 186.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 86.5, 264.0, 314.5, 264.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p connect_to_matrix",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 346.0, 361.0, 104.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 600.0, 426.0 ],
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
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 479.0, 258.0, 44.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set matrix",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 479.0, 215.0, 93.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script connect multiout",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 248.0, 215.0, 149.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "was: \nsprintf script connect multiout %ld matrix %ld",
													"linecount" : 2,
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 265.0, 154.0, 225.0, 29.0 ],
													"fontsize" : 10.0,
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script connect messages 0 matrix 0",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 61.0, 207.0, 172.0, 15.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "" ],
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 4 0",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 3,
													"patching_rect" : [ 47.0, 141.0, 46.0, 17.0 ],
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 47.0, 30.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 61.0, 295.0, 15.0, 15.0 ],
													"id" : "obj-6",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 83.5, 192.0, 488.5, 192.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 83.5, 192.0, 257.5, 192.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 488.5, 282.0, 70.0, 282.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 257.5, 249.0, 488.5, 249.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p new_matrix",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 466.0, 361.0, 73.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 44.0, 74.0, 485.0, 211.0 ],
										"bglocked" : 0,
										"defrect" : [ 44.0, 74.0, 485.0, 211.0 ],
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
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "was: \nsprintf script new matrix newex 252 262 209 196617 matrix~ %ld %ld 1.",
													"linecount" : 2,
													"fontname" : "Arial",
													"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 73.0, 21.0, 329.0, 29.0 ],
													"fontsize" : 10.0,
													"id" : "obj-13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append smooth",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 402.0, 77.0, 79.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 402.0, 98.0, 63.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 402.0, 130.0, 44.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend script new matrix newex 252 262 209 196617 matrix~",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 57.0, 287.0, 18.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ],
													"id" : "obj-5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 402.0, 26.0, 24.0, 24.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-1",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 23.0, 24.0, 24.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 402.0, 154.0, 24.0, 24.0 ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 124.0, 411.5, 124.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 41.0, 48.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 88.0, 102.0, 31.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "int" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 227.0, 406.0, 22.0, 22.0 ],
									"id" : "obj-14",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i i b",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 227.0, 327.0, 377.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "int", "int", "bang" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 246.0, 44.0, 22.0, 22.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i 1",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 246.0, 166.0, 27.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "int" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 227.0, 187.0, 29.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 30.0, 102.0, 41.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 30.0, 69.0, 54.0, 17.0 ],
									"fontsize" : 9.0,
									"outlettype" : [ "int", "float", "int", "int" ],
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "voices",
									"fontname" : "Arial",
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 270.0, 47.0, 49.0, 17.0 ],
									"fontsize" : 9.0,
									"id" : "obj-21"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 92.0, 97.5, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 475.5, 392.0, 236.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 355.5, 392.0, 236.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 594.5, 392.0, 236.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 50.5, 131.0, 255.5, 131.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 275.5, 317.0, 334.5, 317.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [ 236.5, 283.0, 424.0, 283.0, 424.0, 222.0, 340.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 0,
									"midpoints" : [ 275.5, 280.0, 421.0, 280.0, 421.0, 225.0, 392.5, 225.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 275.5, 317.0, 529.5, 317.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 84.0, 145.0, 61.0, 17.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"varname" : "out[1]",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 252.0, 346.0, 24.0, 24.0 ],
					"id" : "obj-8",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"varname" : "in[1]",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 252.0, 47.0, 24.0, 24.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"comment" : "W - omni"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "matrix",
					"text" : "matrix~ 1 0 smooth",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 252.0, 262.0, 209.0, 19.0 ],
					"fontsize" : 9.0,
					"outlettype" : [ "signal", "list" ],
					"id" : "obj-10"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 51.5, 107.0, 188.5, 107.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
