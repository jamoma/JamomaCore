{
	"patcher" : 	{
		"rect" : [ 34.0, 67.0, 1177.0, 679.0 ],
		"bglocked" : 1,
		"defrect" : [ 34.0, 67.0, 1177.0, 679.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- only msg_int, msg_float, and msg_list support ramping",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 294.0, 248.0, 210.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "linear.queue",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 167.0, 250.0, 119.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ramp linear.sched",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-3",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 1032.0, 94.0, 110.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ramp linear.queue",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-4",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 936.0, 94.0, 111.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "msg_none (bang)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-5",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 378.0, 215.0, 99.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "msg_list",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 378.0, 203.0, 52.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "msg_float",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-7",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 277.0, 215.0, 60.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "msg_int",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 277.0, 203.0, 51.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "msg_symbol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-9",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 171.0, 214.0, 73.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "msg_toggle",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 171.0, 202.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "u504009737",
					"text" : "pattrstorage",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 826.0, 593.0, 83.0, 18.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 30, 89, 670, 329 ],
						"storage_rect" : [ 0, 0, 640, 240 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slave_mode",
					"text" : "p slave_mode",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-12",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 686.0, 593.0, 85.0, 18.0 ],
					"patcher" : 					{
						"rect" : [ 107.0, 69.0, 820.0, 530.0 ],
										"bglocked" : 0,
						"defrect" : [ 107.0, 69.0, 820.0, 530.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "And this one cause a crash at the moment:",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 655.0, 192.0, 116.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This one is ignored:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 475.0, 192.0, 116.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Take a look at jcom.parameter.gain.mxt for an example of how to use this.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 142.0, 532.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Left outlet will be lobotomized, and no ramping, filtering, clipping, etc. will be done.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 122.0, 532.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A jcom.message in slave mode will expose the syntax to jcom.hub and receive messages, but nothing is done to it except for forwarding unaltered out 2nd (direct) outlet.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 92.0, 532.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print MIDDLE",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 452.0, 333.0, 68.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print LEFT",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 239.0, 355.0, 56.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ui\/refresh",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 496.0, 233.0, 58.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dispatched 3.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 233.0, 69.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dispatched 10 300",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-10",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 103.0, 233.0, 93.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print DUMP",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-11",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 552.0, 355.0, 61.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dump",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 673.0, 233.0, 33.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dec",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 380.0, 233.0, 23.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "inc",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 357.0, 233.0, 21.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 222.0, 355.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eple",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 329.0, 233.0, 26.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 40",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-17",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 296.0, 233.0, 31.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-18",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 259.0, 233.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-19",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 222.0, 233.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eple",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-20",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 387.0, 355.0, 132.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 387.0, 333.0, 62.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "\/banan",
									"text" : "jcom.parameter \/banan @slave 1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-22",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 222.0, 289.0, 340.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "\/eple",
									"text" : "jcom.parameter \/eple",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"id" : "obj-23",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 218.0, 447.0, 109.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-24",
									"numoutlets" : 0,
									"fontsize" : 15.799999,
									"patching_rect" : [ 32.0, 27.0, 331.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you want to access a parameter using various syntaxes (e.g. \/gain and \/gain\/midi) you can create jcom.message instances in slave mode.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 60.0, 532.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All of the below messages are simply forwarded:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-26",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 32.0, 192.0, 232.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "non-slave mode (default)",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-27",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 218.0, 424.0, 142.0, 17.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 366.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 338.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 305.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 231.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 268.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 389.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 682.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 112.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 41.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 505.5, 268.0, 231.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "addressing_attributes",
					"text" : "p \/addressing_attributes",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-13",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 555.0, 593.0, 153.0, 18.0 ],
					"patcher" : 					{
						"rect" : [ 125.0, 73.0, 834.0, 546.0 ],
										"bglocked" : 0,
						"defrect" : [ 125.0, 73.0, 834.0, 546.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/preset\/write",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 530.0, 226.0, 76.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-2",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 202.0, 455.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type msg_float",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 243.0, 395.0, 78.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-4",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 118.0, 395.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 159.0, 133.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 112.0, 133.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/bear:type msg_int",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 385.0, 196.0, 87.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type msg_int",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 395.0, 69.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"patching_rect" : [ 272.0, 246.0, 32.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/bear:clipmode both",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-10",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 515.0, 65.0, 90.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/bear 91",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-11",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 544.0, 103.0, 51.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "joe is a bullfrog",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 692.0, 186.0, 81.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "buba 19",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 667.0, 139.0, 45.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "buba 19.5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 681.0, 161.0, 54.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-15",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 191.0, 161.0, 43.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 192.0, 139.0, 62.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-7",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-17",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 247.0, 296.0, 77.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 247.0, 274.0, 62.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 543.0, 305.0, 43.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 543.0, 283.0, 62.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "bear 23",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 566.0, 119.0, 45.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.hub helppatch",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-22",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 515.0, 246.0, 95.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-23",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 190.0, 275.0, 54.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-24",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 206.0, 108.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-25",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 112.0, 111.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-26",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 159.0, 111.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "joe",
									"text" : "jcom.parameter joe @type msg_float",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-27",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 118.0, 429.0, 178.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-28",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 222.0, 55.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "buba[1]",
									"text" : "jcom.parameter buba @type msg_int",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 108.0, 221.0, 175.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"triscale" : 0.9,
									"id" : "obj-30",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 67.0, 58.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "bear[1]",
									"text" : "jcom.parameter bear",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-31",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 112.0, 58.0, 105.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recall 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-32",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 619.0, 412.0, 45.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "recall 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-33",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 602.0, 389.0, 45.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-34",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 563.0, 412.0, 43.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-35",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 546.0, 389.0, 43.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "jmod_param_help_patch",
									"text" : "pattrstorage jmod_param_help_patch",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-36",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 546.0, 465.0, 180.0, 17.0 ],
									"saved_object_attributes" : 									{
										"client_rect" : [ 30, 89, 670, 329 ],
										"storage_rect" : [ 0, 0, 640, 240 ]
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 180.5, 421.0, 127.5, 421.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 252.5, 421.0, 127.5, 421.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 164.5, 93.0, 201.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 2 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 195.5, 268.0, 256.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 701.5, 222.0, 524.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 690.5, 222.0, 524.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 575.5, 142.0, 524.5, 142.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 676.5, 222.0, 524.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 553.5, 129.0, 524.5, 129.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 394.5, 237.0, 524.5, 237.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-14",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 760.0, 289.0, 45.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- defines the size of the step used by the 'inc' and 'dec' messages (default is 1)",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 154.0, 456.0, 311.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@stepsize",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-16",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 450.0, 100.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "float",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 58.0, 464.0, 32.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-18",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 697.0, 331.0, 81.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.gui",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 907.0, 636.0, 55.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.hub",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-20",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 856.0, 636.0, 60.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-21",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 782.0, 636.0, 86.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.parameter.gain",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-22",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 677.0, 636.0, 127.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-23",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 677.0, 673.0, 78.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-24",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 677.0, 693.0, 55.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See also",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 676.0, 619.0, 115.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-26",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 934.0, 531.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/my_int 100 ramp 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-27",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 800.0, 550.0, 130.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/my_int -100 ramp 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-28",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 800.0, 531.0, 134.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "trez",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-29",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 1093.0, 526.0, 33.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "doz",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-30",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 1067.0, 526.0, 26.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "uno",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-31",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 1042.0, 526.0, 27.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend \/my_menu",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-32",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 1042.0, 549.0, 109.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/my_toggle $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-33",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 934.0, 550.0, 104.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/my_float 1. ramp 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-34",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 668.0, 550.0, 130.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/my_float 0. ramp 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-35",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 668.0, 531.0, 130.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/my_slider 127 ramp 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-36",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 522.0, 550.0, 144.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/my_slider 0 ramp 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-37",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 522.0, 531.0, 131.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s incomming",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-38",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 924.0, 579.0, 78.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r incomming",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"id" : "obj-39",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 637.0, 255.0, 79.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- qlim-ed messages with set prepended. Use this for connection back to GUI interface object",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-41",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 158.0, 536.0, 343.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- most often, you'll not connect jcom.parameter directly to the rest of the patch, but instead use jcom.hub 2nd outlet. If you for some reason need to connect directly from jcom.parameter, use the 2nd outlet. This outlet is not qlim-ed, and neither has it \"set\" prepended.",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-42",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 158.0, 567.0, 353.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Right:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-43",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 567.0, 134.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Left:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-44",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 536.0, 135.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Outlets:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-45",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 12.288889,
					"patching_rect" : [ 19.0, 508.0, 176.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This helps keeping the patch tidy",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-46",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 71.0, 175.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Can be used internally for processing",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-47",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 628.0, 376.0, 213.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-48",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 552.0, 431.0, 213.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-49",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 552.0, 406.0, 61.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-50",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 629.0, 356.0, 153.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-51",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 629.0, 331.0, 74.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_menu",
					"text" : "jcom.parameter my_menu @type msg_symbol @repetitions 0 @description \"My menu\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-52",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 437.0, 264.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_toggle",
					"text" : "jcom.parameter my_toggle @repetitions 0 @type msg_toggle @description \"My toggle\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-53",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 355.0, 255.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_int",
					"text" : "jcom.parameter my_int @range/clipmode none @type msg_int @ramp/drive scheduler @repetitions 0 @description \"My int\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-54",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 280.0, 301.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_float",
					"text" : "jcom.parameter my_float @range/clipmode none @type msg_float @ramp/drive scheduler @description \"My float\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-55",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 197.0, 292.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_slider",
					"text" : "jcom.parameter my_slider @type msg_int @range/bounds 0 127 @range/clipmode both @ramp/drive scheduler @repetitions 0 @description \"My slider\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-56",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 119.0, 295.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.hub",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-57",
					"numoutlets" : 0,
					"fontsize" : 12.288889,
					"patching_rect" : [ 539.0, 232.0, 84.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Menu 2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-58",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 404.0, 93.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Toggle",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-59",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 334.0, 98.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Int",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-60",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 259.0, 81.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Float",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-61",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 176.0, 90.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Slider",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-62",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 94.0, 96.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "My_Menu",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"items" : [ "uno", ",", "doz", ",", "trez" ],
					"id" : "obj-63",
					"numoutlets" : 3,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 602.0, 171.0, 57.0, 17.0 ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "My_Toggle",
					"numinlets" : 1,
					"id" : "obj-64",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 602.0, 153.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "My_Int",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"id" : "obj-65",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 602.0, 135.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_int",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-66",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 545.0, 136.0, 41.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "My_Float",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"triscale" : 0.9,
					"id" : "obj-67",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 602.0, 117.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"varname" : "My_Slider",
					"numinlets" : 1,
					"id" : "obj-68",
					"numoutlets" : 1,
					"orientation" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 602.0, 94.0, 144.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-69",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 1059.0, 602.0, 79.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jcom.parameter_help @size 2U-half @module_type control",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-70",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 539.0, 282.0, 196.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-71",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 551.0, 263.0, 97.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-72",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 539.0, 263.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-73",
					"numoutlets" : 0,
					"patching_rect" : [ 539.0, 346.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- within each module all parameter names must be unique. Different modules sharing the same parameter names is no problem.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-76",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 158.0, 124.0, 364.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(name of parameter)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-77",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 124.0, 135.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument (obligatory):",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-78",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 12.288889,
					"patching_rect" : [ 19.0, 98.0, 176.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-79",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 15.799999,
					"patching_rect" : [ 20.0, 32.0, 189.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Handling parameters in the modules",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-80",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 21.0, 58.0, 269.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-81",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 19.0, 26.0, 389.0, 51.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-82",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 12.288889,
					"patching_rect" : [ 19.0, 164.0, 85.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_slider",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-84",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 545.0, 96.0, 55.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_float",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-85",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 545.0, 118.0, 50.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_toggle",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-86",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 545.0, 153.0, 55.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_menu",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-87",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 545.0, 171.0, 52.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.gui",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-88",
					"numoutlets" : 0,
					"fontsize" : 12.288889,
					"patching_rect" : [ 539.0, 44.0, 79.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reporting to the rest of the world",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-89",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 552.0, 452.0, 200.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you want to use menu text item instead of index numbers, this is how to do it.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-90",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 938.0, 399.0, 223.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pvar is used for wireless communication between the GUI interface and jcom.parameter.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-91",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 845.0, 42.0, 303.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For testing of remote control of module:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-95",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 537.0, 507.0, 238.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- text describing the parameter for html auto-documenting modules",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-100",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 152.0, 421.0, 349.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-101",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 407.0, 100.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(text)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-102",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 58.0, 421.0, 39.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@clipmode",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-105",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 364.0, 100.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-106",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 58.0, 376.0, 124.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- suggested normal range of parameter (two ints or floats). Default: 0.-127.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-107",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 158.0, 333.0, 289.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- permit repetitions of the same value",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-108",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 159.0, 295.0, 200.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- what kind of parameter is this?",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-109",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 159.0, 188.0, 279.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-110",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 58.0, 303.0, 63.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-111",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 58.0, 291.0, 19.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@repetitions",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-112",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 279.0, 100.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@range",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-113",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 321.0, 100.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "linear.sched",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-114",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 58.0, 259.0, 95.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "msg_generic (default)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-115",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 59.0, 206.0, 134.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@type",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-116",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 43.0, 191.0, 100.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none (default)",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-117",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 59.0, 247.0, 100.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2 ints or floats",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-118",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 58.0, 333.0, 82.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- determines if parameter can be ramped or not",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-119",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 158.0, 235.0, 278.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@ramp",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-120",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 42.0, 235.0, 109.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jcom.gui",
					"numinlets" : 0,
					"name" : "jcom.gui.mxt",
					"id" : "obj-127",
					"numoutlets" : 0,
					"patching_rect" : [ 539.0, 71.0, 256.0, 120.0 ],
					"args" : [ "2374_" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- define range boundary restrictions. Default: none",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-104",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 158.0, 376.0, 265.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-128",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 520.0, 26.0, 300.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-83",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 39.0, 121.0, 469.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-92",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 39.0, 531.0, 469.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-93",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 39.0, 564.0, 469.0, 56.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-96",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 520.0, 210.0, 300.0, 263.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-97",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 827.0, 26.0, 324.0, 447.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-98",
					"numoutlets" : 0,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 520.0, 499.0, 631.0, 77.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-103",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 39.0, 403.0, 470.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-121",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 39.0, 188.0, 470.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-122",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 39.0, 231.0, 470.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-123",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 39.0, 317.0, 470.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-124",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 39.0, 274.0, 470.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-125",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 39.0, 360.0, 470.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-126",
					"numoutlets" : 0,
					"border" : 1,
					"rounded" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 38.0, 446.0, 470.0, 44.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [ 646.5, 279.0, 548.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 548.5, 331.0, 561.5, 331.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 769.5, 322.0, 638.5, 322.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 854.5, 163.0, 839.0, 163.0, 839.0, 89.0, 854.5, 89.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1041.5, 116.0, 854.5, 116.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 945.5, 113.0, 854.5, 113.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 854.5, 228.0, 838.0, 228.0, 838.0, 172.0, 854.5, 172.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [ 854.5, 313.0, 838.0, 313.0, 838.0, 255.0, 854.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 854.5, 387.0, 840.0, 387.0, 840.0, 328.0, 854.5, 328.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 854.5, 468.0, 840.0, 468.0, 840.0, 399.0, 854.5, 399.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [ 928.5, 429.0, 854.5, 429.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1051.5, 544.0, 1051.5, 544.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1076.5, 544.0, 1051.5, 544.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1102.5, 544.0, 1051.5, 544.0 ]
				}

			}
 ]
	}

}
