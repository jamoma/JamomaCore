{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 176.0, 61.0, 1028.0, 441.0 ],
		"bglocked" : 0,
		"defrect" : [ 176.0, 61.0, 1028.0, 441.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 0",
					"fontsize" : 9.0,
					"patching_rect" : [ 731.0, 223.0, 47.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"fontsize" : 10.0,
					"patching_rect" : [ 768.0, 202.0, 24.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl slice 7",
					"fontsize" : 9.0,
					"patching_rect" : [ 304.0, 278.0, 51.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontsize" : 10.0,
					"patching_rect" : [ 688.0, 193.0, 24.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 1 0",
					"fontsize" : 9.0,
					"patching_rect" : [ 573.0, 219.0, 47.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1 == 0 then 0 else out2 $i1",
					"fontsize" : 9.0,
					"patching_rect" : [ 689.0, 129.0, 152.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend accel",
					"fontsize" : 9.0,
					"patching_rect" : [ 373.0, 133.0, 71.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t reset",
					"fontsize" : 9.0,
					"patching_rect" : [ 531.0, 137.0, 41.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "reset" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /acceleration /attractpoint /random_reset /on /updaterate /update",
					"fontsize" : 9.0,
					"patching_rect" : [ 373.0, 106.0, 508.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass /neighbors /maxspeed /minspeed /center /attract /match /avoid /repel /edgedist /speed /inertia /prefdist /flyrect /number /mode",
					"linecount" : 2,
					"fontsize" : 9.0,
					"patching_rect" : [ 21.0, 65.0, 370.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 16,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p xyz",
					"fontsize" : 9.0,
					"patching_rect" : [ 281.0, 301.0, 35.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 854.0, 693.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 854.0, 693.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
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
									"text" : "jcom.return xyz/16 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 208.0, 564.0, 278.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/15 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 196.0, 529.0, 278.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/32 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 522.0, 569.0, 274.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/31 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 515.0, 530.0, 274.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/30 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 509.0, 493.0, 274.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 0.0, -2.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/29 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 489.0, 460.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/28 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 476.0, 425.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/27 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 460.0, 392.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/26 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 446.0, 359.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/25 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 432.0, 325.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/24 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 418.0, 292.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/23 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 404.0, 258.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/22 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 390.0, 224.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/21 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 376.0, 190.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/20 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 362.0, 157.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/19 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 348.0, 123.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/18 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 335.0, 89.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/17 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 320.0, 57.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/14 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, 494.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/13 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 169.0, 460.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/12 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 156.0, 425.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/11 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 140.0, 392.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/10 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 126.0, 359.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/9 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 112.0, 325.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/8 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 98.0, 292.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/7 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 84.0, 258.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/6 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 70.0, 224.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/5 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 56.0, 190.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/4 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 42.0, 157.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/3 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 28.0, 123.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/2 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 15.0, 89.0, 307.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31",
									"fontsize" : 9.0,
									"patching_rect" : [ 0.0, 25.0, 460.0, 17.0 ],
									"numinlets" : 1,
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numoutlets" : 33,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return xyz/1 @type msg_list @description \"returns a position of boid number xyz/<n> in xyz-coordinates\"",
									"linecount" : 2,
									"fontsize" : 9.0,
									"patching_rect" : [ 0.0, 57.0, 311.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 3 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 4 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 5 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 6 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 7 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 8 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 9 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 10 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 11 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 12 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 13 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 14 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 15 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 16 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 17 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 18 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 19 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 20 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 21 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 22 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 23 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 24 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 25 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 26 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 27 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 28 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 29 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 30 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 31 ],
									"destination" : [ "obj-3", 0 ],
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
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 610.0, 130.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "int",
					"fontsize" : 9.0,
					"patching_rect" : [ 688.0, 172.0, 27.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!/ 1000.",
					"fontsize" : 10.0,
					"patching_rect" : [ 688.0, 152.0, 52.0, 19.0 ],
					"numinlets" : 2,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 15",
					"fontsize" : 9.0,
					"patching_rect" : [ 610.0, 192.0, 57.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return flock @type msg_list @description \"returns a list of the boids position\"",
					"fontsize" : 9.0,
					"patching_rect" : [ 373.0, 301.0, 385.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend attractpt",
					"fontsize" : 9.0,
					"patching_rect" : [ 451.0, 214.0, 90.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "boids3d 32",
					"fontsize" : 9.0,
					"patching_rect" : [ 373.0, 254.0, 59.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 21.0, 36.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 15 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 13 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 14 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 11 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 12 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 10 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 9 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 7 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 8 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 6 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 5 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 4 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 3 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 3 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 4 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 5 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 540.5, 242.0, 382.5, 242.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 382.5, 242.0, 382.5, 242.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 460.5, 242.0, 382.5, 242.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 582.5, 242.0, 382.5, 242.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 740.5, 247.0, 382.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 698.5, 147.0, 582.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 697.5, 190.0, 657.5, 190.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 697.5, 213.0, 582.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 831.5, 150.0, 697.5, 150.0 ]
				}

			}
 ]
	}

}
