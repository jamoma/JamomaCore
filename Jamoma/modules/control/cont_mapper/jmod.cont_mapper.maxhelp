{
	"patcher" : 	{
		"rect" : [ 263.0, 82.0, 1023.0, 578.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 263.0, 82.0, 1023.0, 578.0 ],
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
					"maxclass" : "newobj",
					"text" : "p settings",
					"patching_rect" : [ 681.0, 289.0, 54.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 238.0, 256.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 238.0, 256.0 ],
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
									"maxclass" : "inlet",
									"patching_rect" : [ 113.0, 27.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 88.0, 26.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/filter~\/audio\/gain\/midi 127.",
									"patching_rect" : [ 51.0, 143.0, 148.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/filter~\/audio\/mute 0",
									"patching_rect" : [ 39.0, 123.0, 142.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"patching_rect" : [ 22.0, 21.0, 50.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 33.0, 172.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"patching_rect" : [ 22.0, 41.0, 50.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/input~\/audio\/gain\/midi 127.",
									"patching_rect" : [ 32.0, 68.0, 142.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/filter~\/q 2.55",
									"patching_rect" : [ 22.0, 104.0, 142.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\/filter~\/filtertype bandpass",
									"patching_rect" : [ 28.0, 85.0, 142.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "and move your mouse horizontally to change the wet\/dry level",
					"patching_rect" : [ 369.0, 330.0, 289.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "turn on the audio, play any sound,",
					"patching_rect" : [ 369.0, 312.0, 162.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"patching_rect" : [ 171.0, 506.0, 159.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 2,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input~",
					"patching_rect" : [ 30.0, 290.0, 300.0, 140.0 ],
					"name" : "jmod.input~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 3,
					"args" : [ "\/input~" ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/filter~",
					"patching_rect" : [ 30.0, 432.0, 300.0, 70.0 ],
					"name" : "jmod.filter~",
					"lockeddragscroll" : 1,
					"id" : "obj-6",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [ "\/filter~" ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/mapper[1]",
					"patching_rect" : [ 335.0, 96.0, 600.0, 70.0 ],
					"name" : "jmod.cont_mapper.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [ "\/mapper.2" ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "•",
					"patching_rect" : [ 355.0, 192.0, 16.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "•",
					"patching_rect" : [ 355.0, 311.0, 16.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall this preset :",
					"patching_rect" : [ 526.0, 312.0, 181.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/mapper.2\/preset\/recall audio",
					"patching_rect" : [ 619.0, 311.0, 180.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"patching_rect" : [ 618.0, 355.0, 170.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mess around with the other parameters, and see how it reacts....",
					"patching_rect" : [ 369.0, 290.0, 303.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "you should see the wet\/dry gain of the filter moving when you move your mouse from left to right",
					"patching_rect" : [ 369.0, 266.0, 457.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2_ turn on the mouse module ->",
					"patching_rect" : [ 369.0, 240.0, 168.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "as you can see, it routes the x position from the mouse module to the gain of the limiter",
					"patching_rect" : [ 369.0, 214.0, 405.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1_ recall a ready-made mapping ->",
					"patching_rect" : [ 369.0, 192.0, 168.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to try it out :",
					"patching_rect" : [ 340.0, 165.0, 91.0, 21.0 ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.533333
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/mouse\/mouse_on 1",
					"patching_rect" : [ 619.0, 237.0, 180.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/mapper.1\/preset\/recall mouse",
					"patching_rect" : [ 619.0, 194.0, 180.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Notice there are three different modes (upper-right menu): - bypass : the mapper is made inactive;\r- edit : range and clipmode are set automatically according to the parameter\/return settings, changing the curve coef will update the display below;\r- active : automatic range\/clipmode setting, and curve display are disabled (to improve performance)",
					"linecount" : 7,
					"patching_rect" : [ 24.0, 187.0, 277.0, 80.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Then, choose the source and destinations adresses, fine-tune the settings, and you're done.",
					"linecount" : 2,
					"patching_rect" : [ 24.0, 153.0, 280.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "control",
					"patching_rect" : [ 335.0, 372.0, 301.0, 72.0 ],
					"name" : "jmod.control.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [ "\/control" ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cont_mapper",
					"patching_rect" : [ 30.0, 34.0, 218.0, 28.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a one-to-one mapper",
					"patching_rect" : [ 31.0, 64.0, 242.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"patching_rect" : [ 24.0, 22.0, 256.0, 63.0 ],
					"rounded" : 0,
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module allows you to map data from a module's output (return) to another module's parameter",
					"linecount" : 2,
					"patching_rect" : [ 24.0, 105.0, 280.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/mouse\/1",
					"patching_rect" : [ 334.0, 445.0, 301.0, 72.0 ],
					"name" : "jmod.mouse",
					"lockeddragscroll" : 1,
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [ "\/mouse" ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/mapper",
					"patching_rect" : [ 335.0, 25.0, 600.0, 70.0 ],
					"name" : "jmod.cont_mapper.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [ "\/mapper.1" ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 690.5, 349.0, 627.5, 349.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
 ]
	}

}
