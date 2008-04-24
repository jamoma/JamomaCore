{
	"patcher" : 	{
		"rect" : [ 52.0, 44.0, 917.0, 832.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 52.0, 44.0, 917.0, 832.0 ],
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
					"maxclass" : "message",
					"text" : "\/preset\/write",
					"numinlets" : 2,
					"patching_rect" : [ 329.0, 89.0, 76.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/preset\/store 1 \"mydefault\"",
					"numinlets" : 2,
					"patching_rect" : [ 184.0, 89.0, 142.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return delete @type msg_int @description \"Delete Nth voice.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 434.0, 347.0, 164.0, 28.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return aed @type msg_list @description \"Position of Nth voice as list of polar coordinates (index\\, azi\\, ele\\, dist\\, active).\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 305.0, 389.0, 317.0, 28.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 0,
					"patching_rect" : [ 150.0, 172.0, 43.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Channel offset",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 46.0, 74.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-6",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 244.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 220.0, 37.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "open" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute \/open_inspector",
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 196.0, 151.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 276.0, 60.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"patcher" : 					{
						"rect" : [ 100.0, 100.0, 600.0, 561.0 ],
						"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 100.0, 100.0, 600.0, 561.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"numinlets" : 1,
									"patching_rect" : [ 518.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-1",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"numinlets" : 1,
									"patching_rect" : [ 463.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-2",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[16]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 486.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"args" : [ 32 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[17]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 457.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"args" : [ 31 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[18]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 428.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"args" : [ 30 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[19]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 399.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"args" : [ 29 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[20]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 370.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"args" : [ 28 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[21]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 341.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"args" : [ 27 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[22]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 312.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"args" : [ 26 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[23]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 283.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"args" : [ 25 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[24]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 254.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"args" : [ 24 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[25]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 225.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"args" : [ 23 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[26]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 196.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"args" : [ 22 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[27]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 167.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"args" : [ 21 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[28]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 138.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"args" : [ 20 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[29]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 109.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"args" : [ 19 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[30]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 80.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"args" : [ 18 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[31]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 295.0, 51.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"args" : [ 17 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"numinlets" : 1,
									"patching_rect" : [ 408.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-19",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 773.0, 135.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"hidden" : 1,
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 773.0, 57.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 700 635, window exec",
									"numinlets" : 2,
									"patching_rect" : [ 21.0, 87.0, 214.0, 15.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"numinlets" : 2,
									"patching_rect" : [ 21.0, 54.0, 239.0, 15.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"numinlets" : 2,
									"patching_rect" : [ 21.0, 70.0, 158.0, 15.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numinlets" : 1,
									"patching_rect" : [ 21.0, 125.0, 59.0, 17.0 ],
									"numoutlets" : 2,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-25",
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"numinlets" : 1,
									"patching_rect" : [ 231.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-26",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"numinlets" : 1,
									"patching_rect" : [ 176.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-27",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[15]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 486.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"args" : [ 16 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[14]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 457.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"args" : [ 15 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[13]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 428.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"args" : [ 14 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[12]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 399.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-31",
									"args" : [ 13 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[11]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 370.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-32",
									"args" : [ 12 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[10]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 341.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-33",
									"args" : [ 11 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[9]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 312.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"args" : [ 10 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[8]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 283.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"args" : [ 9 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[7]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 254.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-36",
									"args" : [ 8 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[6]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 225.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-37",
									"args" : [ 7 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[5]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 196.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-38",
									"args" : [ 6 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[4]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 167.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-39",
									"args" : [ 5 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[3]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 138.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"args" : [ 4 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[2]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 109.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"args" : [ 3 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt[1]",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 80.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-42",
									"args" : [ 2 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup.mxt",
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"patching_rect" : [ 8.0, 51.0, 282.0, 23.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"args" : [ 1 ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 80 80 80",
									"numinlets" : 4,
									"patching_rect" : [ 773.0, 81.0, 88.0, 17.0 ],
									"numoutlets" : 0,
									"hidden" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"numinlets" : 1,
									"patching_rect" : [ 121.0, 34.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-45",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.sur.speaker.setup",
									"numinlets" : 1,
									"patching_rect" : [ 88.0, 12.0, 115.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-46",
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 27.0, 74.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-11",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"patching_rect" : [ 305.0, 244.0, 45.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numinlets" : 1,
					"patching_rect" : [ 305.0, 197.0, 78.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"numinlets" : 2,
					"patching_rect" : [ 38.0, 89.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Offset",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 85.0, 25.0, 35.0, 17.0 ],
					"transparent" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"triangle" : 0,
					"triscale" : 0.9,
					"maximum" : 32,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-15",
					"minimum" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 16.0, 377.0, 65.0, 26.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"numinlets" : 2,
					"patching_rect" : [ 16.0, 340.0, 75.0, 26.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.speaker.setup.mxt",
					"numinlets" : 2,
					"patching_rect" : [ 305.0, 322.0, 139.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"patcher" : 					{
						"rect" : [ 8.0, 147.0, 598.0, 546.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 8.0, 147.0, 598.0, 546.0 ],
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
									"numinlets" : 2,
									"patching_rect" : [ 245.0, 416.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numinlets" : 2,
									"patching_rect" : [ 273.0, 360.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filtered to only pass the positions of active voices, the rest are set to inactive",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 336.0, 336.0, 210.0, 28.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
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
									"numinlets" : 2,
									"patching_rect" : [ 245.0, 117.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.xyz2aed.mxt",
									"numinlets" : 1,
									"patching_rect" : [ 286.0, 95.0, 94.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"numinlets" : 2,
									"patching_rect" : [ 245.0, 74.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"numinlets" : 1,
									"patching_rect" : [ 270.0, 157.0, 38.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"numinlets" : 1,
									"patching_rect" : [ 245.0, 278.0, 38.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump i",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 186.0, 46.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "dump", "int" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"numinlets" : 1,
									"patching_rect" : [ 270.0, 237.0, 53.0, 17.0 ],
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-12",
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
									"numinlets" : 2,
									"patching_rect" : [ 270.0, 198.0, 38.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"numinlets" : 2,
									"patching_rect" : [ 270.0, 179.0, 20.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"numinlets" : 2,
									"patching_rect" : [ 138.0, 393.0, 117.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">",
									"numinlets" : 2,
									"patching_rect" : [ 273.0, 336.0, 27.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ],
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"numinlets" : 2,
									"patching_rect" : [ 273.0, 305.0, 20.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 245.0, 49.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute \/voices",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 162.0, 112.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 13.0, 49.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of index, azi, ele, dist",
									"numinlets" : 1,
									"patching_rect" : [ 245.0, 27.0, 130.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All positions are dumped if number of voices is changed, in order to update active status.",
									"linecount" : 2,
									"numinlets" : 1,
									"patching_rect" : [ 336.0, 234.0, 210.0, 28.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The others are set to inactive",
									"numinlets" : 1,
									"patching_rect" : [ 336.0, 418.0, 183.0, 17.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-23"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
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
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 330.0, 290.5, 330.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar Offset",
					"numinlets" : 1,
					"patching_rect" : [ 528.0, 73.0, 62.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sur.speaker.setup @size 1U-half @module_type control @inspector 1 @description \"Describe speaker setup as sets of xyz coordinates.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 114.0, 372.0, 28.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 293.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"id" : "obj-22",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "voices",
					"text" : "jcom.parameter voices @repetitions 0 @type msg_int @range/bounds 0 32 @range/clipmode both @priority 1 @description \"Number of voices to transmit.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 528.0, 93.0, 344.0, 28.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "\/Jamoma",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 193.5, 109.0, 25.5, 109.0 ]
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
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 373.5, 265.0, 314.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
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
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
