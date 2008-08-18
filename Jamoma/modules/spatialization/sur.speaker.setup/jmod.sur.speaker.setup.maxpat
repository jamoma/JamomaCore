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
					"id" : "obj-25",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 200.0, 95.0, 167.0, 16.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write",
					"id" : "obj-1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 530.0, 95.0, 76.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 \\\"mydefault\\\"",
					"id" : "obj-2",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 370.0, 95.0, 157.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return delete @type msg_int @description \"Delete Nth voice.\"",
					"linecount" : 2,
					"id" : "obj-3",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 421.0, 185.0, 31.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return aed @type msg_list @description \"Position of Nth voice as list of polar coordinates (index, azi, ele, dist, active).\"",
					"linecount" : 2,
					"id" : "obj-4",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 350.0, 465.0, 324.0, 31.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-5",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 248.0, 46.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-7",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 320.0, 49.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"id" : "obj-8",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 296.0, 41.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "open" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"id" : "obj-9",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 272.0, 151.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Inspector",
					"id" : "obj-10",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 195.0, 352.0, 68.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 5.0, 44.0, 581.0, 488.0 ],
						"bglocked" : 0,
						"defrect" : [ 5.0, 44.0, 581.0, 488.0 ],
						"openrect" : [ 5.0, 44.0, 581.0, 488.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"title" : "Speaker setup",
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"id" : "obj-52",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 181.0, 94.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 525.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"id" : "obj-53",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 166.0, 79.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 469.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"id" : "obj-54",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 151.0, 64.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 419.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"id" : "obj-51",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 166.0, 79.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 242.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"id" : "obj-50",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 151.0, 64.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 186.0, 4.0, 26.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[16]",
									"lockeddragscroll" : 1,
									"args" : [ 32 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 501.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 456.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[17]",
									"lockeddragscroll" : 1,
									"args" : [ 31 ],
									"id" : "obj-4",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 472.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 427.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[18]",
									"lockeddragscroll" : 1,
									"args" : [ 30 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 443.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 398.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[19]",
									"lockeddragscroll" : 1,
									"args" : [ 29 ],
									"id" : "obj-6",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 414.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 369.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[20]",
									"lockeddragscroll" : 1,
									"args" : [ 28 ],
									"id" : "obj-7",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 385.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 340.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[21]",
									"lockeddragscroll" : 1,
									"args" : [ 27 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 356.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 311.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[22]",
									"lockeddragscroll" : 1,
									"args" : [ 26 ],
									"id" : "obj-9",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 327.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 282.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[23]",
									"lockeddragscroll" : 1,
									"args" : [ 25 ],
									"id" : "obj-10",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 298.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 253.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[24]",
									"lockeddragscroll" : 1,
									"args" : [ 24 ],
									"id" : "obj-11",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 269.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 224.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[25]",
									"lockeddragscroll" : 1,
									"args" : [ 23 ],
									"id" : "obj-12",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 240.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 195.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[26]",
									"lockeddragscroll" : 1,
									"args" : [ 22 ],
									"id" : "obj-13",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 211.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 166.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[27]",
									"lockeddragscroll" : 1,
									"args" : [ 21 ],
									"id" : "obj-14",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 182.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 137.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[28]",
									"lockeddragscroll" : 1,
									"args" : [ 20 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 153.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 108.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[29]",
									"lockeddragscroll" : 1,
									"args" : [ 19 ],
									"id" : "obj-16",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 124.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 79.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[30]",
									"lockeddragscroll" : 1,
									"args" : [ 18 ],
									"id" : "obj-17",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 95.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 50.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[31]",
									"lockeddragscroll" : 1,
									"args" : [ 17 ],
									"id" : "obj-18",
									"numinlets" : 0,
									"patching_rect" : [ 310.0, 66.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 295.0, 21.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"hidden" : 1,
									"id" : "obj-20",
									"numinlets" : 1,
									"patching_rect" : [ 790.0, 155.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"id" : "obj-21",
									"numinlets" : 0,
									"patching_rect" : [ 790.0, 60.0, 25.0, 25.0 ],
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
									"id" : "obj-22",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 36.0, 102.0, 231.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"presentation_rect" : [ 21.0, 57.0, 231.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"hidden" : 1,
									"id" : "obj-23",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 36.0, 69.0, 263.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"presentation_rect" : [ 21.0, 24.0, 263.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"hidden" : 1,
									"id" : "obj-24",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 36.0, 85.0, 173.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"presentation_rect" : [ 21.0, 40.0, 173.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"hidden" : 1,
									"id" : "obj-25",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 140.0, 65.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"presentation_rect" : [ 21.0, 95.0, 65.0, 19.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 5, 44, 586, 532, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[15]",
									"lockeddragscroll" : 1,
									"args" : [ 16 ],
									"id" : "obj-28",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 501.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 456.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[14]",
									"lockeddragscroll" : 1,
									"args" : [ 15 ],
									"id" : "obj-29",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 472.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 427.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[13]",
									"lockeddragscroll" : 1,
									"args" : [ 14 ],
									"id" : "obj-30",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 443.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 398.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[12]",
									"lockeddragscroll" : 1,
									"args" : [ 13 ],
									"id" : "obj-31",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 414.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 369.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[11]",
									"lockeddragscroll" : 1,
									"args" : [ 12 ],
									"id" : "obj-32",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 385.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 340.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[10]",
									"lockeddragscroll" : 1,
									"args" : [ 11 ],
									"id" : "obj-33",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 356.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 311.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[9]",
									"lockeddragscroll" : 1,
									"args" : [ 10 ],
									"id" : "obj-34",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 327.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 282.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[8]",
									"lockeddragscroll" : 1,
									"args" : [ 9 ],
									"id" : "obj-35",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 298.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 253.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[7]",
									"lockeddragscroll" : 1,
									"args" : [ 8 ],
									"id" : "obj-36",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 269.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 224.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[6]",
									"lockeddragscroll" : 1,
									"args" : [ 7 ],
									"id" : "obj-37",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 240.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 195.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[5]",
									"lockeddragscroll" : 1,
									"args" : [ 6 ],
									"id" : "obj-38",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 211.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 166.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[4]",
									"lockeddragscroll" : 1,
									"args" : [ 5 ],
									"id" : "obj-39",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 182.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 137.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[3]",
									"lockeddragscroll" : 1,
									"args" : [ 4 ],
									"id" : "obj-40",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 153.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 108.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[2]",
									"lockeddragscroll" : 1,
									"args" : [ 3 ],
									"id" : "obj-41",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 124.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 79.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup[1]",
									"lockeddragscroll" : 1,
									"args" : [ 2 ],
									"id" : "obj-42",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 95.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 50.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.ch.xyz_setup",
									"lockeddragscroll" : 1,
									"args" : [ 1 ],
									"id" : "obj-43",
									"numinlets" : 0,
									"patching_rect" : [ 23.0, 66.0, 282.0, 23.0 ],
									"presentation" : 1,
									"numoutlets" : 1,
									"name" : "jcom.sur.ch.xyz_setup.maxpat",
									"outlettype" : [ "" ],
									"presentation_rect" : [ 8.0, 21.0, 284.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"id" : "obj-45",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 136.0, 49.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"presentation_rect" : [ 136.0, 4.0, 26.0, 19.0 ]
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Voices:",
					"id" : "obj-11",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 35.0, 46.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 17.0, 36.0, 46.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-12",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 350.0, 320.0, 49.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"id" : "obj-13",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 350.0, 273.0, 87.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-14",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 50.0, 95.0, 137.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-15",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 197.0, 567.0, 21.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 67.0, 36.0, 21.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.speaker.setup",
					"id" : "obj-18",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 350.0, 398.0, 139.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
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
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 245.0, 458.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"id" : "obj-2",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 245.0, 416.0, 52.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"id" : "obj-3",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 273.0, 360.0, 27.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Filtered to only pass the positions of active voices, the rest are set to inactive",
									"linecount" : 2,
									"id" : "obj-4",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 336.0, 336.0, 213.0, 31.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 138.0, 458.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"id" : "obj-6",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 245.0, 117.0, 51.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
									"id" : "obj-7",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 286.0, 95.0, 322.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"id" : "obj-8",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 245.0, 74.0, 52.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"id" : "obj-9",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 270.0, 157.0, 38.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"id" : "obj-10",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 245.0, 278.0, 38.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump i",
									"id" : "obj-11",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 186.0, 51.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "dump", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"id" : "obj-12",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 270.0, 237.0, 53.0, 19.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
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
									"id" : "obj-13",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 270.0, 198.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"id" : "obj-14",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 270.0, 179.0, 21.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"id" : "obj-15",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 138.0, 393.0, 117.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">",
									"id" : "obj-16",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 273.0, 336.0, 27.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"id" : "obj-17",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 273.0, 305.0, 21.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-18",
									"numinlets" : 0,
									"patching_rect" : [ 245.0, 49.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /voices",
									"id" : "obj-19",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 162.0, 119.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-20",
									"numinlets" : 0,
									"patching_rect" : [ 13.0, 49.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of index, azi, ele, dist",
									"id" : "obj-21",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 245.0, 27.0, 138.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All positions are dumped if number of voices is changed, in order to update active status.",
									"linecount" : 2,
									"id" : "obj-22",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 336.0, 234.0, 236.0, 31.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The others are set to inactive",
									"id" : "obj-23",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 336.0, 418.0, 183.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Describe speaker setup as sets of xyz coordinates.\"",
					"linecount" : 2,
					"id" : "obj-20",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 145.0, 372.0, 31.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-21",
					"numinlets" : 0,
					"patching_rect" : [ 20.0, 85.0, 21.0, 21.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-22",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 310.0, 21.0, 21.0 ],
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
					"id" : "obj-23",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 235.0, 560.0, 423.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-24",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"has_panel" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [ 204.5, 381.0, 479.5, 381.0 ]
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
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-3", 0 ],
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
