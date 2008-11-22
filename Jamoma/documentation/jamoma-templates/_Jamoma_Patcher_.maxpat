{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 185.0, 44.0, 866.0, 937.0 ],
		"bglocked" : 0,
		"defrect" : [ 185.0, 44.0, 866.0, 937.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p utilities",
					"id" : "obj-1",
					"fontname" : "Arial",
					"patching_rect" : [ 290.0, 20.0, 83.0, 27.0 ],
					"fontsize" : 18.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 734.0, 284.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 734.0, 284.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "then you can use this directory for saving all kind of stuff...",
									"id" : "obj-3",
									"fontname" : "Arial",
									"patching_rect" : [ 40.0, 70.0, 418.0, 20.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"presentation_rect" : [ 53.0, 68.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "once the patcher has been saved, this value contains the path of the patcher",
									"id" : "obj-2",
									"fontname" : "Arial",
									"patching_rect" : [ 130.0, 35.0, 418.0, 20.0 ],
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "v patchPath",
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"patching_rect" : [ 40.0, 35.0, 85.0, 23.0 ],
									"fontsize" : 14.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"color" : [ 0.894118, 0.066667, 0.066667, 0.8 ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ "/layout" ],
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"patching_rect" : [ 0.0, 70.0, 150.0, 210.0 ],
					"presentation" : 1,
					"name" : "jmod.layout.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"presentation_rect" : [ 0.0, 70.0, 150.0, 210.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p help",
					"id" : "obj-7",
					"fontname" : "Arial",
					"patching_rect" : [ 190.0, 20.0, 62.0, 27.0 ],
					"fontsize" : 18.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 337.0, 368.0, 563.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 337.0, 368.0, 563.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "DELETE IT !",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"patching_rect" : [ 273.0, 532.0, 79.0, 18.0 ],
									"presentation" : 1,
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"presentation_rect" : [ 274.0, 523.0, 79.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "_____________",
									"id" : "obj-8",
									"fontname" : "Arial",
									"patching_rect" : [ 105.0, 455.0, 97.0, 20.0 ],
									"presentation" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"presentation_rect" : [ 105.0, 445.0, 97.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"outlettype" : [ "int" ],
									"id" : "obj-58",
									"patching_rect" : [ 122.0, 88.0, 18.0, 18.0 ],
									"presentation" : 1,
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"presentation_rect" : [ 87.0, 21.0, 18.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "NoFloat",
									"id" : "obj-61",
									"fontname" : "Arial Bold Italic",
									"patching_rect" : [ 111.0, 63.0, 56.0, 21.0 ],
									"presentation" : 1,
									"hidden" : 1,
									"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontsize" : 12.754706,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 107.0, 20.0, 56.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"outlettype" : [ "int" ],
									"id" : "obj-117",
									"patching_rect" : [ 85.0, 88.0, 18.0, 18.0 ],
									"presentation" : 1,
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"presentation_rect" : [ 26.0, 21.0, 18.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "View",
									"id" : "obj-115",
									"fontname" : "Arial Bold Italic",
									"patching_rect" : [ 74.0, 63.0, 41.0, 21.0 ],
									"presentation" : 1,
									"hidden" : 1,
									"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontsize" : 12.754706,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 45.0, 20.0, 41.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p View",
									"outlettype" : [ "" ],
									"id" : "obj-140",
									"fontname" : "Arial",
									"patching_rect" : [ 85.0, 110.0, 56.0, 20.0 ],
									"hidden" : 1,
									"fontsize" : 11.595187,
									"numinlets" : 3,
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 783.0, 319.0, 657.0, 488.0 ],
										"bglocked" : 0,
										"defrect" : [ 783.0, 319.0, 657.0, 488.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 0,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "button",
													"outlettype" : [ "bang" ],
													"id" : "obj-59",
													"patching_rect" : [ 180.0, 375.0, 20.0, 20.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags close",
													"outlettype" : [ "" ],
													"id" : "obj-50",
													"fontname" : "Arial",
													"patching_rect" : [ 210.0, 375.0, 91.0, 15.0 ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"outlettype" : [ "bang" ],
													"id" : "obj-36",
													"patching_rect" : [ 540.0, 255.0, 20.0, 20.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "dispose",
													"outlettype" : [ "" ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"patching_rect" : [ 540.0, 285.0, 46.0, 16.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"prototypename" : "Arial9",
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"patching_rect" : [ 540.0, 225.0, 18.0, 18.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"prototypename" : "Arial9",
													"outlettype" : [ "int" ],
													"id" : "obj-24",
													"patching_rect" : [ 195.0, 45.0, 18.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "toolbarvisible $1",
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"patching_rect" : [ 240.0, 120.0, 76.0, 15.0 ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "thispatcher",
													"outlettype" : [ "", "" ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"patching_rect" : [ 420.0, 105.0, 100.0, 17.0 ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess front",
													"outlettype" : [ "" ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"patching_rect" : [ 510.0, 390.0, 76.0, 18.0 ],
													"hidden" : 1,
													"fontsize" : 10.0,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"prototypename" : "Arial9",
													"outlettype" : [ "int" ],
													"id" : "obj-5",
													"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"prototypename" : "Arial9",
													"outlettype" : [ "int" ],
													"id" : "obj-6",
													"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "savewindow 1",
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"fontname" : "Arial",
													"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"outlettype" : [ "" ],
													"id" : "obj-63",
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"outlettype" : [ "" ],
													"id" : "obj-62",
													"fontname" : "Arial",
													"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"outlettype" : [ "" ],
													"id" : "obj-37",
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nofloat, window exec",
													"outlettype" : [ "" ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"patching_rect" : [ 466.0, 323.0, 170.0, 16.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window exec",
													"outlettype" : [ "" ],
													"id" : "obj-39",
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"outlettype" : [ "bang", "", "bang" ],
													"id" : "obj-40",
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags grow, window flags zoom",
													"linecount" : 2,
													"outlettype" : [ "" ],
													"id" : "obj-42",
													"fontname" : "Arial",
													"patching_rect" : [ 70.0, 343.0, 102.0, 28.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend window size",
													"outlettype" : [ "" ],
													"id" : "obj-43",
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 257.0, 108.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymax",
													"id" : "obj-45",
													"fontname" : "Arial",
													"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmax",
													"id" : "obj-46",
													"fontname" : "Arial",
													"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymin",
													"id" : "obj-47",
													"fontname" : "Arial",
													"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmin",
													"id" : "obj-48",
													"fontname" : "Arial",
													"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pref.",
													"id" : "obj-49",
													"fontname" : "Arial",
													"patching_rect" : [ 180.0, 147.0, 31.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0",
													"outlettype" : [ "int", "int", "int", "int" ],
													"id" : "obj-51",
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "278 50 651 608",
													"outlettype" : [ "" ],
													"id" : "obj-52",
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 147.0, 89.0, 16.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-53",
													"fontname" : "Arial",
													"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-54",
													"fontname" : "Arial",
													"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0 0 0",
													"outlettype" : [ "" ],
													"id" : "obj-55",
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 4,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-56",
													"fontname" : "Arial",
													"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-57",
													"fontname" : "Arial",
													"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"fontname" : "Arial",
													"patching_rect" : [ 283.0, 395.0, 19.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags float, window exec",
													"outlettype" : [ "" ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"patching_rect" : [ 480.0, 343.0, 158.0, 16.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window exec",
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"outlettype" : [ "bang", "", "bang" ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nogrow, window flags nozoom, window flags noclose",
													"linecount" : 3,
													"outlettype" : [ "" ],
													"id" : "obj-29",
													"fontname" : "Arial",
													"patching_rect" : [ 310.0, 343.0, 130.0, 40.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend window size",
													"outlettype" : [ "" ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"patching_rect" : [ 283.0, 257.0, 108.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymax",
													"id" : "obj-27",
													"fontname" : "Arial",
													"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmax",
													"id" : "obj-26",
													"fontname" : "Arial",
													"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymin",
													"id" : "obj-23",
													"fontname" : "Arial",
													"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmin",
													"id" : "obj-22",
													"fontname" : "Arial",
													"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pref.",
													"id" : "obj-20",
													"fontname" : "Arial",
													"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0",
													"outlettype" : [ "int", "int", "int", "int" ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0 340 368 903",
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0 0 0",
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 4,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "view",
													"id" : "obj-11",
													"fontname" : "Arial",
													"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ],
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "presentation $1",
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"patching_rect" : [ 250.0, 90.0, 82.0, 16.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"outlettype" : [ "int" ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 2,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"prototypename" : "Arial9",
													"outlettype" : [ "int" ],
													"id" : "obj-44",
													"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"prototypename" : "Arial9",
													"outlettype" : [ "int" ],
													"id" : "obj-41",
													"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ],
													"fontsize" : 10.435669,
													"numinlets" : 1,
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"prototypename" : "Arial9",
													"id" : "obj-21",
													"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-19", 0 ],
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
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 2 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-7", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-7", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 3 ],
													"destination" : [ "obj-12", 0 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 122.5, 139.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 3 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 2 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 1 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-55", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-55", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 9.0,
										"fontname" : "Arial",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To make a Jamoma patcher, use the LAYOUTS window on the left :",
									"id" : "obj-3",
									"fontname" : "Arial",
									"patching_rect" : [ 0.0, 5.0, 367.0, 20.0 ],
									"presentation" : 1,
									"bgcolor" : [ 0.129412, 0.109804, 0.109804, 0.0 ],
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"presentation_rect" : [ 0.0, 0.0, 367.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"patching_rect" : [ 85.0, 135.0, 59.0, 18.0 ],
									"hidden" : 1,
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 0, 337, 368, 900, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- select a module type from the menu (you can also use the modules from the UserLib on the UserLib tab)\n\n- type a name for this module, or use the one that is proposed\n\n- if you want to make multiple instances of a module, you should use the dot as a separator for the instance number (or name) -> e.g. /module.1 /module.2\n\n- thus, don't use dots in the name of the module you choose\n\n- press enter : the module is created - repeat as many times as desired - you can come back to that later by clicking the Add tab\n\n- you can connect the different modules to create your audio or video signal chain (audio/video outputs begin on the second outlet or inlet - don't connect the first inputs or outputs of the modules together unless you know why you would do that - these are for controlling the modules...)\n\n- once you're done with patching the signal chain, you can visuallty arrange the modules in several layouts -  do so by clicking on the Edit tab and move the modules where you want to see them... when you're happy of it, push the store button on the bottom and your layout is saved.\n\n- you can create more layout presets by using the preset interface that is accessible from the topleft menu of the layout module\n\n- you can make your patch fullsreen by pressing the fullscreen button in the Edit module\n\n- when you'll save and close the patch, the layout file (layout.xml) will be automatically saved in the same folder than your patcher - you should save each new patcher in a dedicated folder\n\n- if you don't need this help window anymore, just \n(you can find it again by making a new template...)",
									"linecount" : 38,
									"presentation_linecount" : 38,
									"id" : "obj-6",
									"fontname" : "Arial",
									"patching_rect" : [ 0.0, 34.0, 367.0, 531.0 ],
									"presentation" : 1,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"presentation_rect" : [ 0.0, 25.0, 367.0, 531.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-140", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-117", 0 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-140", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-140", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [ "control" ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t none",
					"outlettype" : [ "none" ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"patching_rect" : [ 111.106232, 74.501831, 37.875458, 17.0 ],
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"hidden" : 1,
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "hover",
					"outlettype" : [ "", "", "", "" ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"patching_rect" : [ 60.0, 74.564087, 53.369965, 17.0 ],
					"bgcolor" : [ 1.0, 0.52549, 0.05098, 1.0 ],
					"hidden" : 1,
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"id" : "obj-54",
					"fontname" : "Arial",
					"patching_rect" : [ 0.0, 75.0, 58.534798, 17.0 ],
					"hidden" : 1,
					"fontsize" : 9.295724,
					"numinlets" : 1,
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 185, 44, 1051, 1007, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p init_stuff",
					"outlettype" : [ "", "path" ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"patching_rect" : [ 0.0, 95.0, 75.0, 18.0 ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 719.0, 128.0, 424.0, 382.0 ],
						"bglocked" : 0,
						"defrect" : [ 719.0, 128.0, 424.0, 382.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "v patchPath",
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"patching_rect" : [ 275.0, 90.0, 63.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "freebang",
									"outlettype" : [ "bang" ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"patching_rect" : [ 260.0, 160.0, 56.0, 18.0 ],
									"hidden" : 1,
									"fontsize" : 10.0,
									"numinlets" : 0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"patching_rect" : [ 160.0, 170.0, 47.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b path 0",
									"outlettype" : [ "bang", "path", "int" ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"patching_rect" : [ 260.0, 185.0, 65.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/preset/write Servo:/Users/pascalbaltazar/Documents/Docs_boulo/Max_trucs/Jamomactive/Jamoma/documentation/jamoma-templates//layout.xml",
									"linecount" : 5,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"patching_rect" : [ 125.0, 315.0, 199.0, 62.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t path",
									"outlettype" : [ "path" ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"patching_rect" : [ 90.0, 175.0, 36.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 2000",
									"outlettype" : [ "bang" ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"patching_rect" : [ 90.0, 140.0, 49.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"patching_rect" : [ 90.0, 115.0, 48.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"patching_rect" : [ 90.0, 95.0, 48.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /preset/read",
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"patching_rect" : [ 105.0, 225.0, 104.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"patching_rect" : [ 205.0, 250.0, 35.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /preset/write",
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"patching_rect" : [ 205.0, 275.0, 104.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"patching_rect" : [ 220.0, 90.0, 51.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s/layout.xml",
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"patching_rect" : [ 220.0, 115.0, 100.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"patching_rect" : [ 85.0, 70.0, 52.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess locked 0",
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"patching_rect" : [ 70.0, 40.0, 93.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 40.0, 48.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess /panel/open",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 15.0, 108.0, 18.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"patching_rect" : [ 220.0, 65.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-13",
									"patching_rect" : [ 20.0, 300.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-14",
									"patching_rect" : [ 70.0, 225.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 212.0, 79.5, 212.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 99.5, 210.0, 79.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 2 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
