{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 44.0, 917.0, 832.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 44.0, 917.0, 832.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
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
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"patching_rect" : [ 165.0, 70.0, 167.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 329.0, 89.0, 76.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 \\\"mydefault\\\"",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 184.0, 89.0, 142.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return delete @type msg_int @description \"Delete Nth voice.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 425.0, 345.0, 167.0, 28.0 ],
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return aed @type msg_list @description \"Position of Nth voice as list of polar coordinates (index, azi, ele, dist, active).\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 305.0, 389.0, 319.0, 28.0 ],
					"numoutlets" : 2,
					"id" : "obj-4",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 150.0, 172.0, 43.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Channel offset",
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 46.0, 74.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 4.0, 46.0, 74.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 150.0, 244.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 150.0, 220.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "open" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 150.0, 196.0, 151.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 150.0, 276.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 414.0, 274.0, 951.0, 563.0 ],
						"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 414.0, 274.0, 951.0, 563.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
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
									"text" : "z",
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 518.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 463.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[16]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 486.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"args" : [ 32 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[17]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 457.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"args" : [ 31 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[18]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 428.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"args" : [ 30 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[19]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 399.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"args" : [ 29 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[20]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 370.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"args" : [ 28 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[21]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 341.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"args" : [ 27 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[22]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 312.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"args" : [ 26 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[23]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 283.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"args" : [ 25 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[24]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 254.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "" ],
									"args" : [ 24 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[25]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 225.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"args" : [ 23 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[26]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 196.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"args" : [ 22 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[27]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 167.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ],
									"args" : [ 21 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[28]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 138.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"args" : [ 20 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[29]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 109.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"args" : [ 19 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[30]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 80.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ],
									"args" : [ 18 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[31]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 51.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"args" : [ 17 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 408.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-19",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 773.0, 135.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"patching_rect" : [ 773.0, 57.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 700 635, window exec",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 21.0, 87.0, 214.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-22",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 21.0, 54.0, 239.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 21.0, 70.0, 158.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 21.0, 125.0, 59.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-25",
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 231.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-26",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 176.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-27",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[15]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 486.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "" ],
									"args" : [ 16 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[14]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 457.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ],
									"args" : [ 15 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[13]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 428.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"args" : [ 14 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[12]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 399.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "" ],
									"args" : [ 13 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[11]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 370.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"args" : [ 12 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[10]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 341.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"args" : [ 11 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[9]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 312.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-34",
									"outlettype" : [ "" ],
									"args" : [ 10 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[8]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 283.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "" ],
									"args" : [ 9 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[7]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 254.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "" ],
									"args" : [ 8 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[6]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 225.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "" ],
									"args" : [ 7 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[5]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 196.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "" ],
									"args" : [ 6 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[4]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 167.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "" ],
									"args" : [ 5 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[3]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 138.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-40",
									"outlettype" : [ "" ],
									"args" : [ 4 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[2]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 109.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-41",
									"outlettype" : [ "" ],
									"args" : [ 3 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[1]",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 80.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-42",
									"outlettype" : [ "" ],
									"args" : [ 2 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup",
									"numinlets" : 0,
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 51.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-43",
									"outlettype" : [ "" ],
									"args" : [ 1 ],
									"name" : "jcom.sur.ch.xyz_setup.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 80 80 80",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 4,
									"fontsize" : 9.0,
									"patching_rect" : [ 773.0, 81.0, 88.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 121.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-45",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.sur.speaker.setup",
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 88.0, 12.0, 115.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-46",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 27.0, 74.0, 17.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 4.0, 27.0, 74.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-11",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 305.0, 244.0, 45.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 305.0, 197.0, 79.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-13",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 38.0, 89.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Offset",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"presentation_rect" : [ 85.0, 45.0, 35.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 490.0, 100.0, 35.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"minimum" : 0,
					"id" : "obj-15",
					"outlettype" : [ "int", "bang" ],
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"maximum" : 32,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 16.0, 340.0, 75.0, 26.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.speaker.setup",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 305.0, 322.0, 139.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-18",
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 8.0, 147.0, 598.0, 546.0 ],
						"bglocked" : 0,
						"defrect" : [ 8.0, 147.0, 598.0, 546.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 245.0, 458.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 416.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 273.0, 360.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filtered to only pass the positions of active voices, the rest are set to inactive",
									"linecount" : 2,
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 336.0, 336.0, 210.0, 28.0 ],
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 138.0, 458.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 117.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.xyz2aed",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 286.0, 95.0, 94.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-7",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 74.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 270.0, 157.0, 38.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-9",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 278.0, 38.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump i",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 13.0, 186.0, 47.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "dump", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 270.0, 237.0, 53.0, 17.0 ],
									"numoutlets" : 4,
									"id" : "obj-12",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 270.0, 198.0, 38.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-13",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 270.0, 179.0, 20.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 138.0, 393.0, 117.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-15",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 273.0, 336.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 273.0, 305.0, 20.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 245.0, 49.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /voices",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 13.0, 162.0, 112.0, 17.0 ],
									"numoutlets" : 2,
									"id" : "obj-19",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 13.0, 49.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of index, azi, ele, dist",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 27.0, 130.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All positions are dumped if number of voices is changed, in order to update active status.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 336.0, 234.0, 213.0, 28.0 ],
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The others are set to inactive",
									"fontname" : "Verdana",
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"patching_rect" : [ 336.0, 418.0, 183.0, 17.0 ],
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 50.5, 330.0, 290.5, 330.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 231.0, 279.5, 231.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 282.5, 385.0, 147.5, 385.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-11", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Describe speaker setup as sets of xyz coordinates.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 16.0, 114.0, 372.0, 28.0 ],
					"numoutlets" : 2,
					"id" : "obj-20",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 293.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-22",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter voices @repetitions/allow 0 @type msg_int @range/bounds 0 32 @range/clipmode both @priority 1 @description \"Number of voices to transmit.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 528.0, 93.0, 384.0, 28.0 ],
					"numoutlets" : 3,
					"id" : "obj-23",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"has_panel" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [ 159.5, 305.0, 434.5, 305.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 374.5, 265.0, 314.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 338.5, 109.0, 25.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 193.5, 109.0, 25.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 108.0, 25.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 174.5, 87.0, 165.0, 87.0, 165.0, 111.0, 25.5, 111.0 ]
				}

			}
 ]
	}

}
