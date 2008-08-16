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
					"id" : "obj-25",
					"fontname" : "Arial",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write",
					"patching_rect" : [ 530.0, 95.0, 76.0, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 \\\"mydefault\\\"",
					"patching_rect" : [ 370.0, 95.0, 156.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return delete @type msg_int @description \"Delete Nth voice.\"",
					"linecount" : 2,
					"patching_rect" : [ 470.0, 421.0, 185.0, 31.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return aed @type msg_list @description \"Position of Nth voice as list of polar coordinates (index, azi, ele, dist, active).\"",
					"linecount" : 2,
					"patching_rect" : [ 350.0, 465.0, 324.0, 31.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"patching_rect" : [ 195.0, 248.0, 46.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Channel offset",
					"patching_rect" : [ 4.0, 46.0, 81.0, 19.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 46.0, 81.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 195.0, 320.0, 49.0, 19.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"patching_rect" : [ 195.0, 296.0, 41.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "open" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"patching_rect" : [ 195.0, 272.0, 151.0, 19.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"patching_rect" : [ 195.0, 352.0, 64.0, 19.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 518.0, 34.0, 24.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"patching_rect" : [ 463.0, 34.0, 24.0, 19.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 463.0, 34.0, 24.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[16]",
									"patching_rect" : [ 295.0, 486.0, 282.0, 23.0 ],
									"args" : [ 32 ],
									"id" : "obj-3",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 486.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[17]",
									"patching_rect" : [ 295.0, 457.0, 282.0, 23.0 ],
									"args" : [ 31 ],
									"id" : "obj-4",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 457.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[18]",
									"patching_rect" : [ 295.0, 428.0, 282.0, 23.0 ],
									"args" : [ 30 ],
									"id" : "obj-5",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 428.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[19]",
									"patching_rect" : [ 295.0, 399.0, 282.0, 23.0 ],
									"args" : [ 29 ],
									"id" : "obj-6",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 399.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[20]",
									"patching_rect" : [ 295.0, 370.0, 282.0, 23.0 ],
									"args" : [ 28 ],
									"id" : "obj-7",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 370.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[21]",
									"patching_rect" : [ 295.0, 341.0, 282.0, 23.0 ],
									"args" : [ 27 ],
									"id" : "obj-8",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 341.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[22]",
									"patching_rect" : [ 295.0, 312.0, 282.0, 23.0 ],
									"args" : [ 26 ],
									"id" : "obj-9",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 312.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[23]",
									"patching_rect" : [ 295.0, 283.0, 282.0, 23.0 ],
									"args" : [ 25 ],
									"id" : "obj-10",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 283.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[24]",
									"patching_rect" : [ 295.0, 254.0, 282.0, 23.0 ],
									"args" : [ 24 ],
									"id" : "obj-11",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 254.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[25]",
									"patching_rect" : [ 295.0, 225.0, 282.0, 23.0 ],
									"args" : [ 23 ],
									"id" : "obj-12",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 225.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[26]",
									"patching_rect" : [ 295.0, 196.0, 282.0, 23.0 ],
									"args" : [ 22 ],
									"id" : "obj-13",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 196.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[27]",
									"patching_rect" : [ 295.0, 167.0, 282.0, 23.0 ],
									"args" : [ 21 ],
									"id" : "obj-14",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 167.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[28]",
									"patching_rect" : [ 295.0, 138.0, 282.0, 23.0 ],
									"args" : [ 20 ],
									"id" : "obj-15",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 138.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[29]",
									"patching_rect" : [ 295.0, 109.0, 282.0, 23.0 ],
									"args" : [ 19 ],
									"id" : "obj-16",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 109.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[30]",
									"patching_rect" : [ 295.0, 80.0, 282.0, 23.0 ],
									"args" : [ 18 ],
									"id" : "obj-17",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 80.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[31]",
									"patching_rect" : [ 295.0, 51.0, 282.0, 23.0 ],
									"args" : [ 17 ],
									"id" : "obj-18",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 295.0, 51.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"patching_rect" : [ 408.0, 34.0, 24.0, 19.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 408.0, 34.0, 24.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"hidden" : 1,
									"patching_rect" : [ 775.0, 140.0, 25.0, 25.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"patching_rect" : [ 775.0, 45.0, 25.0, 25.0 ],
									"id" : "obj-21",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 700 635, window exec",
									"hidden" : 1,
									"patching_rect" : [ 21.0, 87.0, 231.0, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"presentation" : 1,
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"presentation_rect" : [ 21.0, 87.0, 231.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"hidden" : 1,
									"patching_rect" : [ 21.0, 54.0, 263.0, 17.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"presentation" : 1,
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"presentation_rect" : [ 21.0, 54.0, 263.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"hidden" : 1,
									"patching_rect" : [ 21.0, 70.0, 173.0, 17.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"presentation" : 1,
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"presentation_rect" : [ 21.0, 70.0, 173.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"hidden" : 1,
									"patching_rect" : [ 21.0, 125.0, 65.0, 19.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"presentation" : 1,
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"presentation_rect" : [ 21.0, 125.0, 65.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"patching_rect" : [ 231.0, 34.0, 24.0, 19.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 231.0, 34.0, 24.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"patching_rect" : [ 176.0, 34.0, 24.0, 19.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 176.0, 34.0, 24.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[15]",
									"patching_rect" : [ 8.0, 486.0, 282.0, 23.0 ],
									"args" : [ 16 ],
									"id" : "obj-28",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 486.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[14]",
									"patching_rect" : [ 8.0, 457.0, 282.0, 23.0 ],
									"args" : [ 15 ],
									"id" : "obj-29",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 457.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[13]",
									"patching_rect" : [ 8.0, 428.0, 282.0, 23.0 ],
									"args" : [ 14 ],
									"id" : "obj-30",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 428.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[12]",
									"patching_rect" : [ 8.0, 399.0, 282.0, 23.0 ],
									"args" : [ 13 ],
									"id" : "obj-31",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 399.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[11]",
									"patching_rect" : [ 8.0, 370.0, 282.0, 23.0 ],
									"args" : [ 12 ],
									"id" : "obj-32",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 370.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[10]",
									"patching_rect" : [ 8.0, 341.0, 282.0, 23.0 ],
									"args" : [ 11 ],
									"id" : "obj-33",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 341.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[9]",
									"patching_rect" : [ 8.0, 312.0, 282.0, 23.0 ],
									"args" : [ 10 ],
									"id" : "obj-34",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 312.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[8]",
									"patching_rect" : [ 8.0, 283.0, 282.0, 23.0 ],
									"args" : [ 9 ],
									"id" : "obj-35",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 283.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[7]",
									"patching_rect" : [ 8.0, 254.0, 282.0, 23.0 ],
									"args" : [ 8 ],
									"id" : "obj-36",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 254.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[6]",
									"patching_rect" : [ 8.0, 225.0, 282.0, 23.0 ],
									"args" : [ 7 ],
									"id" : "obj-37",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 225.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[5]",
									"patching_rect" : [ 8.0, 196.0, 282.0, 23.0 ],
									"args" : [ 6 ],
									"id" : "obj-38",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 196.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[4]",
									"patching_rect" : [ 8.0, 167.0, 282.0, 23.0 ],
									"args" : [ 5 ],
									"id" : "obj-39",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 167.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[3]",
									"patching_rect" : [ 8.0, 138.0, 282.0, 23.0 ],
									"args" : [ 4 ],
									"id" : "obj-40",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 138.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[2]",
									"patching_rect" : [ 8.0, 109.0, 282.0, 23.0 ],
									"args" : [ 3 ],
									"id" : "obj-41",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 109.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[1]",
									"patching_rect" : [ 8.0, 80.0, 282.0, 23.0 ],
									"args" : [ 2 ],
									"id" : "obj-42",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 80.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup",
									"patching_rect" : [ 8.0, 51.0, 282.0, 23.0 ],
									"args" : [ 1 ],
									"id" : "obj-43",
									"presentation" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"numinlets" : 0,
									"numoutlets" : 1,
									"presentation_rect" : [ 8.0, 51.0, 284.0, 31.0 ],
									"outlettype" : [ "" ],
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 80 80 80",
									"hidden" : 1,
									"patching_rect" : [ 775.0, 85.0, 94.0, 19.0 ],
									"id" : "obj-44",
									"fontname" : "Verdana",
									"numinlets" : 4,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"patching_rect" : [ 121.0, 34.0, 24.0, 19.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-45",
									"fontname" : "Verdana",
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 121.0, 34.0, 24.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.sur.speaker.setup",
									"patching_rect" : [ 88.0, 12.0, 124.0, 19.0 ],
									"frgb" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"id" : "obj-46",
									"fontname" : "Verdana",
									"presentation" : 1,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"presentation_rect" : [ 88.0, 12.0, 124.0, 19.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
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
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
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
									"source" : [ "obj-42", 0 ],
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
									"source" : [ "obj-40", 0 ],
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
									"source" : [ "obj-38", 0 ],
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
									"source" : [ "obj-36", 0 ],
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
									"source" : [ "obj-34", 0 ],
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
									"source" : [ "obj-32", 0 ],
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
									"source" : [ "obj-30", 0 ],
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
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
					"text" : "Voices",
					"patching_rect" : [ 4.0, 27.0, 74.0, 19.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"presentation" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 27.0, 74.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 350.0, 320.0, 49.0, 19.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"patching_rect" : [ 350.0, 273.0, 87.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 50.0, 95.0, 137.0, 17.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "Offset",
					"patching_rect" : [ 197.0, 567.0, 35.0, 19.0 ],
					"minimum" : 0,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"presentation" : 1,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"maximum" : 32,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triangle" : 0,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 2,
					"triscale" : 0.9,
					"presentation_rect" : [ 85.0, 45.0, 35.0, 19.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.speaker.setup",
					"patching_rect" : [ 350.0, 398.0, 139.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 633.0, 172.0, 598.0, 546.0 ],
						"bglocked" : 0,
						"defrect" : [ 633.0, 172.0, 598.0, 546.0 ],
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
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"patching_rect" : [ 245.0, 416.0, 52.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 273.0, 360.0, 27.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filtered to only pass the positions of active voices, the rest are set to inactive",
									"linecount" : 2,
									"patching_rect" : [ 336.0, 336.0, 213.0, 31.0 ],
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 138.0, 458.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"patching_rect" : [ 245.0, 117.0, 51.0, 19.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
									"patching_rect" : [ 286.0, 95.0, 322.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"patching_rect" : [ 245.0, 74.0, 52.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 270.0, 157.0, 38.0, 19.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 245.0, 278.0, 38.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump i",
									"patching_rect" : [ 13.0, 186.0, 51.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "dump", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"patching_rect" : [ 270.0, 237.0, 53.0, 19.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 4,
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
									"patching_rect" : [ 270.0, 198.0, 39.0, 19.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"patching_rect" : [ 270.0, 179.0, 21.0, 17.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"patching_rect" : [ 138.0, 393.0, 117.0, 19.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">",
									"patching_rect" : [ 273.0, 336.0, 27.0, 19.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"patching_rect" : [ 273.0, 305.0, 21.0, 17.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 245.0, 49.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /voices",
									"patching_rect" : [ 13.0, 162.0, 119.0, 19.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 13.0, 49.0, 15.0, 15.0 ],
									"id" : "obj-20",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of index, azi, ele, dist",
									"patching_rect" : [ 245.0, 27.0, 138.0, 19.0 ],
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All positions are dumped if number of voices is changed, in order to update active status.",
									"linecount" : 2,
									"patching_rect" : [ 336.0, 234.0, 236.0, 31.0 ],
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The others are set to inactive",
									"patching_rect" : [ 336.0, 418.0, 183.0, 19.0 ],
									"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
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
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Describe speaker setup as sets of xyz coordinates.\"",
					"linecount" : 2,
					"patching_rect" : [ 20.0, 145.0, 372.0, 31.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 20.0, 85.0, 21.0, 21.0 ],
					"id" : "obj-21",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 20.0, 310.0, 21.0, 21.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 0,
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
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"id" : "obj-24",
					"presentation" : 1,
					"has_panel" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 132.0, 29.5, 132.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 379.5, 132.0, 29.5, 132.0 ]
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
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-3", 0 ],
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
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
