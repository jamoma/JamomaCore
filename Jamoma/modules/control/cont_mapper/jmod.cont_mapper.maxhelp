{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 115.0, 44.0, 1023.0, 578.0 ],
		"bglocked" : 0,
		"defrect" : [ 115.0, 44.0, 1023.0, 578.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
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
					"maxclass" : "newobj",
					"text" : "print",
					"fontname" : "Verdana",
					"id" : "obj-32",
					"patching_rect" : [ 685.0, 505.0, 207.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.receive jcom.remote.module.from",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-31",
					"patching_rect" : [ 685.0, 475.0, 207.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filter~/preset/post",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 626.0, 424.0, 0.0, 0.0 ],
					"id" : "obj-30",
					"patching_rect" : [ 625.0, 425.0, 180.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p settings",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"hidden" : 1,
					"patching_rect" : [ 681.0, 289.0, 57.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 238.0, 256.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 238.0, 256.0 ],
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
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"patching_rect" : [ 113.0, 27.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"id" : "obj-2",
									"patching_rect" : [ 88.0, 26.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/audio/gain/midi 127.",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"patching_rect" : [ 51.0, 143.0, 153.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/audio/mute 0",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"patching_rect" : [ 39.0, 123.0, 142.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ],
									"id" : "obj-5",
									"patching_rect" : [ 22.0, 21.0, 54.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"patching_rect" : [ 33.0, 172.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"patching_rect" : [ 22.0, 41.0, 50.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/input~/audio/gain/midi 127.",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"patching_rect" : [ 32.0, 68.0, 155.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/q 2.55",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"patching_rect" : [ 22.0, 104.0, 142.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/filtertype bandpass",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"patching_rect" : [ 28.0, 85.0, 143.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
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
					"maxclass" : "comment",
					"text" : "and move your mouse horizontally to change the wet/dry level",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 369.0, 330.0, 321.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "turn on the audio, play any sound,",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 369.0, 312.0, 181.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"patching_rect" : [ 171.0, 506.0, 159.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-5",
					"name" : "jmod.input~.maxpat",
					"patching_rect" : [ 30.0, 290.0, 300.0, 140.0 ],
					"numinlets" : 1,
					"args" : [ "/input~" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-6",
					"name" : "jmod.filter~.maxpat",
					"patching_rect" : [ 30.0, 432.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"args" : [ "/filter~" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper[1]",
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"name" : "jmod.cont_mapper.maxpat",
					"patching_rect" : [ 335.0, 96.0, 600.0, 70.0 ],
					"numinlets" : 1,
					"args" : [ "/mapper.2" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "•",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 355.0, 192.0, 17.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "•",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 355.0, 311.0, 17.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall this preset :",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 526.0, 312.0, 181.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mapper.2/preset/recall audio",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"patching_rect" : [ 619.0, 311.0, 180.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"hidden" : 1,
					"patching_rect" : [ 618.0, 355.0, 180.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mess around with the other parameters, and see how it reacts....",
					"fontname" : "Verdana",
					"id" : "obj-13",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 369.0, 290.0, 334.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "you should see the wet/dry gain of the filter moving when you move your mouse from left to right",
					"fontname" : "Verdana",
					"id" : "obj-14",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 369.0, 266.0, 498.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2_ turn on the mouse module ->",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 369.0, 240.0, 173.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "as you can see, it routes the x position from the mouse module to the gain of the limiter",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 369.0, 214.0, 449.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1_ recall a ready-made mapping ->",
					"fontname" : "Verdana",
					"id" : "obj-17",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 369.0, 192.0, 186.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to try it out :",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 340.0, 165.0, 91.0, 21.0 ],
					"fontsize" : 11.556055,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mouse/mouse_on 1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"patching_rect" : [ 619.0, 237.0, 180.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mapper.1/preset/recall mouse",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"patching_rect" : [ 619.0, 194.0, 180.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Notice there are three different modes (upper-right menu): - bypass : the mapper is made inactive;\r- edit : range and clipmode are set automatically according to the parameter/return settings, changing the curve coef will update the display below;\r- active : automatic range/clipmode setting, and curve display are disabled (to improve performance)",
					"linecount" : 7,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 24.0, 187.0, 277.0, 90.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Then, choose the source and destinations adresses, fine-tune the settings, and you're done.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-22",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 24.0, 153.0, 280.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "control",
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"name" : "jmod.control.maxpat",
					"patching_rect" : [ 335.0, 372.0, 152.0, 74.0 ],
					"numinlets" : 1,
					"args" : [ "/control" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cont_mapper",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 30.0, 34.0, 218.0, 28.0 ],
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a one-to-one mapper",
					"fontname" : "Verdana",
					"id" : "obj-25",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 31.0, 64.0, 242.0, 18.0 ],
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-26",
					"patching_rect" : [ 24.0, 22.0, 256.0, 63.0 ],
					"rounded" : 0,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module allows you to map data from a module's output (return) to another module's parameter",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-27",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 24.0, 105.0, 280.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mouse/1",
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"name" : "jmod.mouse.maxpat",
					"patching_rect" : [ 334.0, 445.0, 301.0, 72.0 ],
					"numinlets" : 1,
					"args" : [ "/mouse" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper",
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"name" : "jmod.cont_mapper.maxpat",
					"patching_rect" : [ 335.0, 25.0, 600.0, 70.0 ],
					"numinlets" : 1,
					"args" : [ "/mapper.1" ],
					"lockeddragscroll" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
