{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 44.0, 917.0, 832.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 44.0, 917.0, 832.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 329.0, 89.0, 76.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 \\\"mydefault\\\"",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 184.0, 89.0, 142.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return delete @type msg_int @description \"Delete Nth voice.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 434.0, 347.0, 167.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return aed @type msg_list @description \"Position of Nth voice as list of polar coordinates (index, azi, ele, dist, active).\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 305.0, 389.0, 319.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 150.0, 172.0, 43.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Channel offset",
					"fontsize" : 9.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 4.0, 46.0, 74.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 150.0, 244.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"outlettype" : [ "open" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 150.0, 220.0, 37.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /open_inspector",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 150.0, 196.0, 151.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 150.0, 276.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 100.0, 100.0, 600.0, 561.0 ],
						"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 600.0, 561.0 ],
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
									"fontsize" : 9.0,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"patching_rect" : [ 518.0, 34.0, 24.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"fontsize" : 9.0,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"patching_rect" : [ 463.0, 34.0, 24.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[16]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 486.0, 282.0, 23.0 ],
									"args" : [ 32 ],
									"numinlets" : 0,
									"id" : "obj-3",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[17]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 457.0, 282.0, 23.0 ],
									"args" : [ 31 ],
									"numinlets" : 0,
									"id" : "obj-4",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[18]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 428.0, 282.0, 23.0 ],
									"args" : [ 30 ],
									"numinlets" : 0,
									"id" : "obj-5",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[19]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 399.0, 282.0, 23.0 ],
									"args" : [ 29 ],
									"numinlets" : 0,
									"id" : "obj-6",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[20]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 370.0, 282.0, 23.0 ],
									"args" : [ 28 ],
									"numinlets" : 0,
									"id" : "obj-7",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[21]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 341.0, 282.0, 23.0 ],
									"args" : [ 27 ],
									"numinlets" : 0,
									"id" : "obj-8",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[22]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 312.0, 282.0, 23.0 ],
									"args" : [ 26 ],
									"numinlets" : 0,
									"id" : "obj-9",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[23]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 283.0, 282.0, 23.0 ],
									"args" : [ 25 ],
									"numinlets" : 0,
									"id" : "obj-10",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[24]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 254.0, 282.0, 23.0 ],
									"args" : [ 24 ],
									"numinlets" : 0,
									"id" : "obj-11",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[25]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 225.0, 282.0, 23.0 ],
									"args" : [ 23 ],
									"numinlets" : 0,
									"id" : "obj-12",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[26]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 196.0, 282.0, 23.0 ],
									"args" : [ 22 ],
									"numinlets" : 0,
									"id" : "obj-13",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[27]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 167.0, 282.0, 23.0 ],
									"args" : [ 21 ],
									"numinlets" : 0,
									"id" : "obj-14",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[28]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 138.0, 282.0, 23.0 ],
									"args" : [ 20 ],
									"numinlets" : 0,
									"id" : "obj-15",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[29]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 109.0, 282.0, 23.0 ],
									"args" : [ 19 ],
									"numinlets" : 0,
									"id" : "obj-16",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[30]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 80.0, 282.0, 23.0 ],
									"args" : [ 18 ],
									"numinlets" : 0,
									"id" : "obj-17",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[31]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 295.0, 51.0, 282.0, 23.0 ],
									"args" : [ 17 ],
									"numinlets" : 0,
									"id" : "obj-18",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"fontsize" : 9.0,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"patching_rect" : [ 408.0, 34.0, 24.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"hidden" : 1,
									"patching_rect" : [ 773.0, 135.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"patching_rect" : [ 773.0, 57.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-21",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 700 635, window exec",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1,
									"patching_rect" : [ 21.0, 87.0, 214.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1,
									"patching_rect" : [ 21.0, 54.0, 239.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1,
									"patching_rect" : [ 21.0, 70.0, 158.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1,
									"patching_rect" : [ 21.0, 125.0, 59.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"fontsize" : 9.0,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"patching_rect" : [ 231.0, 34.0, 24.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"fontsize" : 9.0,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"patching_rect" : [ 176.0, 34.0, 24.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[15]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 486.0, 282.0, 23.0 ],
									"args" : [ 16 ],
									"numinlets" : 0,
									"id" : "obj-28",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[14]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 457.0, 282.0, 23.0 ],
									"args" : [ 15 ],
									"numinlets" : 0,
									"id" : "obj-29",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[13]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 428.0, 282.0, 23.0 ],
									"args" : [ 14 ],
									"numinlets" : 0,
									"id" : "obj-30",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[12]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 399.0, 282.0, 23.0 ],
									"args" : [ 13 ],
									"numinlets" : 0,
									"id" : "obj-31",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[11]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 370.0, 282.0, 23.0 ],
									"args" : [ 12 ],
									"numinlets" : 0,
									"id" : "obj-32",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[10]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 341.0, 282.0, 23.0 ],
									"args" : [ 11 ],
									"numinlets" : 0,
									"id" : "obj-33",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[9]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 312.0, 282.0, 23.0 ],
									"args" : [ 10 ],
									"numinlets" : 0,
									"id" : "obj-34",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[8]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 283.0, 282.0, 23.0 ],
									"args" : [ 9 ],
									"numinlets" : 0,
									"id" : "obj-35",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[7]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 254.0, 282.0, 23.0 ],
									"args" : [ 8 ],
									"numinlets" : 0,
									"id" : "obj-36",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[6]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 225.0, 282.0, 23.0 ],
									"args" : [ 7 ],
									"numinlets" : 0,
									"id" : "obj-37",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[5]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 196.0, 282.0, 23.0 ],
									"args" : [ 6 ],
									"numinlets" : 0,
									"id" : "obj-38",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[4]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 167.0, 282.0, 23.0 ],
									"args" : [ 5 ],
									"numinlets" : 0,
									"id" : "obj-39",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[3]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 138.0, 282.0, 23.0 ],
									"args" : [ 4 ],
									"numinlets" : 0,
									"id" : "obj-40",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[2]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 109.0, 282.0, 23.0 ],
									"args" : [ 3 ],
									"numinlets" : 0,
									"id" : "obj-41",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[1]",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 80.0, 282.0, 23.0 ],
									"args" : [ 2 ],
									"numinlets" : 0,
									"id" : "obj-42",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup",
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1,
									"patching_rect" : [ 8.0, 51.0, 282.0, 23.0 ],
									"args" : [ 1 ],
									"numinlets" : 0,
									"id" : "obj-43",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 80 80 80",
									"fontsize" : 9.0,
									"hidden" : 1,
									"patching_rect" : [ 773.0, 81.0, 88.0, 17.0 ],
									"numinlets" : 4,
									"id" : "obj-44",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"fontsize" : 9.0,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"patching_rect" : [ 121.0, 34.0, 24.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-45",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.sur.speaker.setup",
									"fontsize" : 9.0,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"patching_rect" : [ 88.0, 12.0, 115.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numoutlets" : 0
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"fontsize" : 9.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 4.0, 27.0, 74.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 305.0, 244.0, 45.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 305.0, 197.0, 79.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 38.0, 89.0, 125.0, 15.0 ],
					"numinlets" : 2,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Offset",
					"outlettype" : [ "int", "bang" ],
					"maximum" : 32,
					"fontsize" : 9.0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"triangle" : 0,
					"patching_rect" : [ 85.0, 25.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"minimum" : 0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 16.0, 377.0, 65.0, 26.0 ],
					"numinlets" : 2,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 16.0, 340.0, 75.0, 26.0 ],
					"numinlets" : 2,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.speaker.setup",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 305.0, 322.0, 139.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 2,
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
									"patching_rect" : [ 245.0, 458.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 416.0, 51.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 273.0, 360.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filtered to only pass the positions of active voices, the rest are set to inactive",
									"linecount" : 2,
									"fontsize" : 9.0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"patching_rect" : [ 336.0, 336.0, 210.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 138.0, 458.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 117.0, 51.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.xyz2aed",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 286.0, 95.0, 94.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 74.0, 51.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 270.0, 157.0, 38.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 278.0, 38.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump i",
									"outlettype" : [ "dump", "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 13.0, 186.0, 47.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 270.0, 237.0, 53.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 4,
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
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 270.0, 198.0, 38.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 270.0, 179.0, 20.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 138.0, 393.0, 117.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">",
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 273.0, 336.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 273.0, 305.0, 20.0, 15.0 ],
									"numinlets" : 2,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 245.0, 49.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-18",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /voices",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 13.0, 162.0, 112.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 49.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-20",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of index, azi, ele, dist",
									"fontsize" : 9.0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"patching_rect" : [ 245.0, 27.0, 130.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All positions are dumped if number of voices is changed, in order to update active status.",
									"linecount" : 2,
									"fontsize" : 9.0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"patching_rect" : [ 336.0, 234.0, 213.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The others are set to inactive",
									"fontsize" : 9.0,
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"patching_rect" : [ 336.0, 418.0, 183.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numoutlets" : 0
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Offset",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 528.0, 73.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sur.speaker.setup @size 1U-half @module_type control @inspector 1 @description \"Describe speaker setup as sets of xyz coordinates.\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 16.0, 114.0, 372.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"id" : "obj-21",
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"patching_rect" : [ 16.0, 293.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter voices @repetitions/allow 0 @type msg_int @range 0 32 @range/clipmode both @priority 1 @description \"Number of voices to transmit.\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1,
					"patching_rect" : [ 528.0, 93.0, 373.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jcom.gui.1Uh.a.stereo",
					"lockeddragscroll" : 1,
					"patching_rect" : [ 0.0, 0.0, 256.0, 62.0 ],
					"args" : [  ],
					"numinlets" : 0,
					"id" : "obj-24",
					"name" : "jcom.gui.mxt",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 537.5, 125.0, 521.0, 125.0, 521.0, 68.0, 537.5, 68.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 1,
					"midpoints" : [ 159.5, 305.0, 434.5, 305.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 374.5, 265.0, 314.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 338.5, 109.0, 25.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 193.5, 109.0, 25.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 47.5, 108.0, 25.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
