{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 23.0, 52.0, 722.0, 651.0 ],
		"bglocked" : 0,
		"defrect" : [ 23.0, 52.0, 722.0, 651.0 ],
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
					"patching_rect" : [ 200.0, 95.0, 167.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write",
					"patching_rect" : [ 530.0, 95.0, 76.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 \\\"mydefault\\\"",
					"patching_rect" : [ 370.0, 95.0, 156.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return delete @type msg_int @description \"Delete Nth voice.\"",
					"linecount" : 2,
					"patching_rect" : [ 470.0, 421.0, 185.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return aed @type msg_list @description \"Position of Nth voice as list of polar coordinates (index, azi, ele, dist, active).\"",
					"linecount" : 2,
					"patching_rect" : [ 350.0, 465.0, 324.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"patching_rect" : [ 195.0, 248.0, 46.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Channel offset",
					"patching_rect" : [ 4.0, 46.0, 81.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 46.0, 81.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 195.0, 320.0, 49.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"patching_rect" : [ 195.0, 296.0, 41.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"patching_rect" : [ 195.0, 272.0, 151.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"patching_rect" : [ 195.0, 352.0, 64.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 270.0, 84.0, 589.0, 524.0 ],
						"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 270.0, 84.0, 589.0, 524.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"patching_rect" : [ 518.0, 34.0, 24.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"presentation_rect" : [ 518.0, 34.0, 24.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"patching_rect" : [ 463.0, 34.0, 24.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"presentation_rect" : [ 463.0, 34.0, 24.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[16]",
									"patching_rect" : [ 295.0, 486.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"presentation_rect" : [ 295.0, 486.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 32 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[17]",
									"patching_rect" : [ 295.0, 457.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"presentation_rect" : [ 295.0, 457.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 31 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[18]",
									"patching_rect" : [ 295.0, 428.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"presentation_rect" : [ 295.0, 428.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 30 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[19]",
									"patching_rect" : [ 295.0, 399.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"presentation_rect" : [ 295.0, 399.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 29 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[20]",
									"patching_rect" : [ 295.0, 370.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"presentation_rect" : [ 295.0, 370.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 28 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[21]",
									"patching_rect" : [ 295.0, 341.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"presentation_rect" : [ 295.0, 341.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 27 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[22]",
									"patching_rect" : [ 295.0, 312.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"presentation_rect" : [ 295.0, 312.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 26 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[23]",
									"patching_rect" : [ 295.0, 283.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"presentation_rect" : [ 295.0, 283.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 25 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[24]",
									"patching_rect" : [ 295.0, 254.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"presentation_rect" : [ 295.0, 254.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 24 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[25]",
									"patching_rect" : [ 295.0, 225.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"presentation_rect" : [ 295.0, 225.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 23 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[26]",
									"patching_rect" : [ 295.0, 196.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"presentation_rect" : [ 295.0, 196.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 22 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[27]",
									"patching_rect" : [ 295.0, 167.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"presentation_rect" : [ 295.0, 167.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 21 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[28]",
									"patching_rect" : [ 295.0, 138.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"presentation_rect" : [ 295.0, 138.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 20 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[29]",
									"patching_rect" : [ 295.0, 109.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"presentation_rect" : [ 295.0, 109.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 19 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[30]",
									"patching_rect" : [ 295.0, 80.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"presentation_rect" : [ 295.0, 80.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 18 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[31]",
									"patching_rect" : [ 295.0, 51.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"presentation_rect" : [ 295.0, 51.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 17 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"patching_rect" : [ 408.0, 34.0, 24.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"presentation_rect" : [ 408.0, 34.0, 24.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 775.0, 140.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"hidden" : 1,
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 775.0, 45.0, 25.0, 25.0 ],
									"numinlets" : 0,
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
									"patching_rect" : [ 21.0, 87.0, 231.0, 17.0 ],
									"numinlets" : 2,
									"presentation" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"presentation_rect" : [ 21.0, 87.0, 231.0, 17.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"patching_rect" : [ 21.0, 54.0, 263.0, 17.0 ],
									"numinlets" : 2,
									"presentation" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"presentation_rect" : [ 21.0, 54.0, 263.0, 17.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"patching_rect" : [ 21.0, 70.0, 173.0, 17.0 ],
									"numinlets" : 2,
									"presentation" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"presentation_rect" : [ 21.0, 70.0, 173.0, 17.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 21.0, 125.0, 65.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"presentation_rect" : [ 21.0, 125.0, 65.0, 19.0 ],
									"fontsize" : 10.0,
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 270, 84, 859, 634, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"patching_rect" : [ 231.0, 34.0, 24.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"presentation_rect" : [ 231.0, 34.0, 24.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"patching_rect" : [ 176.0, 34.0, 24.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"presentation_rect" : [ 176.0, 34.0, 24.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[15]",
									"patching_rect" : [ 8.0, 486.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"presentation_rect" : [ 8.0, 486.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 16 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[14]",
									"patching_rect" : [ 8.0, 457.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"presentation_rect" : [ 8.0, 457.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 15 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[13]",
									"patching_rect" : [ 8.0, 428.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"presentation_rect" : [ 8.0, 428.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 14 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[12]",
									"patching_rect" : [ 8.0, 399.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-31",
									"presentation_rect" : [ 8.0, 399.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 13 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[11]",
									"patching_rect" : [ 8.0, 370.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-32",
									"presentation_rect" : [ 8.0, 370.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 12 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[10]",
									"patching_rect" : [ 8.0, 341.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-33",
									"presentation_rect" : [ 8.0, 341.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 11 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[9]",
									"patching_rect" : [ 8.0, 312.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-34",
									"presentation_rect" : [ 8.0, 312.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 10 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[8]",
									"patching_rect" : [ 8.0, 283.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"presentation_rect" : [ 8.0, 283.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 9 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[7]",
									"patching_rect" : [ 8.0, 254.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-36",
									"presentation_rect" : [ 8.0, 254.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 8 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[6]",
									"patching_rect" : [ 8.0, 225.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-37",
									"presentation_rect" : [ 8.0, 225.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 7 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[5]",
									"patching_rect" : [ 8.0, 196.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-38",
									"presentation_rect" : [ 8.0, 196.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 6 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[4]",
									"patching_rect" : [ 8.0, 167.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-39",
									"presentation_rect" : [ 8.0, 167.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 5 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[3]",
									"patching_rect" : [ 8.0, 138.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"presentation_rect" : [ 8.0, 138.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 4 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[2]",
									"patching_rect" : [ 8.0, 109.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"presentation_rect" : [ 8.0, 109.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 3 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[1]",
									"patching_rect" : [ 8.0, 80.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-42",
									"presentation_rect" : [ 8.0, 80.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 2 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup",
									"patching_rect" : [ 8.0, 51.0, 282.0, 23.0 ],
									"numinlets" : 0,
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"presentation_rect" : [ 8.0, 51.0, 284.0, 31.0 ],
									"lockeddragscroll" : 1,
									"args" : [ 1 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 80 80 80",
									"patching_rect" : [ 775.0, 85.0, 94.0, 19.0 ],
									"numinlets" : 4,
									"numoutlets" : 0,
									"hidden" : 1,
									"id" : "obj-44",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"patching_rect" : [ 121.0, 34.0, 24.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-45",
									"fontname" : "Verdana",
									"presentation_rect" : [ 121.0, 34.0, 24.0, 19.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.sur.speaker.setup",
									"patching_rect" : [ 88.0, 12.0, 124.0, 19.0 ],
									"numinlets" : 1,
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numoutlets" : 0,
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-46",
									"fontname" : "Verdana",
									"presentation_rect" : [ 88.0, 12.0, 124.0, 19.0 ],
									"fontsize" : 10.0
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
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices",
					"patching_rect" : [ 4.0, 27.0, 74.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 27.0, 74.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 350.0, 320.0, 49.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"patching_rect" : [ 350.0, 273.0, 87.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 50.0, 95.0, 137.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Offset",
					"patching_rect" : [ 197.0, 567.0, 35.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"minimum" : 0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"presentation_rect" : [ 85.0, 45.0, 35.0, 19.0 ],
					"maximum" : 32,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.speaker.setup",
					"patching_rect" : [ 350.0, 398.0, 139.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
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
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"patching_rect" : [ 245.0, 416.0, 52.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 273.0, 360.0, 27.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filtered to only pass the positions of active voices, the rest are set to inactive",
									"linecount" : 2,
									"patching_rect" : [ 336.0, 336.0, 213.0, 31.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 138.0, 458.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"patching_rect" : [ 245.0, 117.0, 51.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.xyz2aed",
									"patching_rect" : [ 286.0, 95.0, 94.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"patching_rect" : [ 245.0, 74.0, 52.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 270.0, 157.0, 38.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 245.0, 278.0, 38.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump i",
									"patching_rect" : [ 13.0, 186.0, 51.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "dump", "int" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"patching_rect" : [ 270.0, 237.0, 53.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
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
									"patching_rect" : [ 270.0, 198.0, 39.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"patching_rect" : [ 270.0, 179.0, 21.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"patching_rect" : [ 138.0, 393.0, 117.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">",
									"patching_rect" : [ 273.0, 336.0, 27.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"patching_rect" : [ 273.0, 305.0, 21.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 245.0, 49.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /voices",
									"patching_rect" : [ 13.0, 162.0, 119.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 13.0, 49.0, 15.0, 15.0 ],
									"numinlets" : 0,
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
									"patching_rect" : [ 245.0, 27.0, 138.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All positions are dumped if number of voices is changed, in order to update active status.",
									"linecount" : 2,
									"patching_rect" : [ 336.0, 234.0, 236.0, 31.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The others are set to inactive",
									"patching_rect" : [ 336.0, 418.0, 183.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"fontsize" : 10.0
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
									"midpoints" : [ 54.5, 330.0, 290.5, 330.0 ]
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
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Describe speaker setup as sets of xyz coordinates.\"",
					"linecount" : 2,
					"patching_rect" : [ 20.0, 145.0, 372.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 20.0, 85.0, 21.0, 21.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 20.0, 310.0, 21.0, 21.0 ],
					"numinlets" : 1,
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
					"patching_rect" : [ 235.0, 560.0, 423.0, 31.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"has_panel" : 1
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
					"midpoints" : [ 204.5, 381.0, 479.5, 381.0 ]
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
					"midpoints" : [ 427.5, 341.0, 359.5, 341.0 ]
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
					"midpoints" : [ 539.5, 132.0, 29.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 379.5, 132.0, 29.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 132.0, 29.5, 132.0 ]
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
					"midpoints" : [ 209.5, 132.0, 29.5, 132.0 ]
				}

			}
 ]
	}

}
