{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 7.0, 234.0, 963.0, 590.0 ],
		"bglocked" : 0,
		"defrect" : [ 7.0, 234.0, 963.0, 590.0 ],
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
					"id" : "obj-30",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 510.0, 100.0, 20.0 ],
					"fontsize" : 10.970939,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/cf 2273.925537",
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 2,
					"patching_rect" : [ 30.0, 535.0, 168.0, 18.0 ],
					"fontsize" : 10.970939,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p settings",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"patching_rect" : [ 681.0, 289.0, 57.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
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
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 113.0, 27.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 88.0, 26.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/audio/gain 100.",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"patching_rect" : [ 51.0, 143.0, 153.0, 16.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/audio/mute 0",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"patching_rect" : [ 39.0, 123.0, 142.0, 16.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 21.0, 54.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 172.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 2,
									"patching_rect" : [ 22.0, 41.0, 50.0, 18.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/input~/audio/gain/midi 127.",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"patching_rect" : [ 32.0, 68.0, 155.0, 16.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/q 2.55",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2,
									"patching_rect" : [ 22.0, 104.0, 142.0, 16.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/filtertype bandpass",
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2,
									"patching_rect" : [ 28.0, 85.0, 143.0, 16.0 ],
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-10", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
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
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"patching_rect" : [ 369.0, 330.0, 321.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "turn on the audio, play any sound,",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"patching_rect" : [ 369.0, 312.0, 181.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 2,
					"patching_rect" : [ 171.0, 506.0, 159.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-5",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 290.0, 300.0, 140.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-6",
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"patching_rect" : [ 30.0, 432.0, 300.0, 70.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/filter~" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper[1]",
					"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"id" : "obj-7",
					"name" : "jmod.cont_mapper.maxpat",
					"numinlets" : 1,
					"patching_rect" : [ 335.0, 96.0, 600.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/mapper.2" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "•",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 192.0, 17.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "•",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 311.0, 17.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall this preset :",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"patching_rect" : [ 550.0, 310.0, 181.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mapper.2/preset/recall audio",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 2,
					"patching_rect" : [ 651.0, 311.0, 180.0, 16.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 650.0, 355.0, 180.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mess around with the other parameters, and see how it reacts....",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 369.0, 290.0, 334.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "you should see the wet/dry gain of the filter moving when you move your mouse from left to right",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"patching_rect" : [ 369.0, 266.0, 498.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2_ turn on the mouse module ->",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 369.0, 240.0, 173.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "as you can see, it routes the x position from the mouse module to the gain of the limiter",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"patching_rect" : [ 369.0, 214.0, 449.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1_ recall a ready-made mapping ->",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"patching_rect" : [ 369.0, 192.0, 186.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to try it out :",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 1,
					"patching_rect" : [ 340.0, 165.0, 91.0, 21.0 ],
					"fontsize" : 11.556055,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mouse/mouse_on 1",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"patching_rect" : [ 651.0, 237.0, 180.0, 16.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mapper.1/preset/recall mouse",
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 2,
					"patching_rect" : [ 651.0, 194.0, 180.0, 16.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Notice there are three different modes (upper-right menu): - bypass : the mapper is made inactive;\r- edit : range and clipmode are set automatically according to the parameter/return settings, changing the curve coef will update the display below;\r- active : automatic range/clipmode setting, and curve display are disabled (to improve performance)",
					"linecount" : 7,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 187.0, 277.0, 90.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Then, choose the source and destinations adresses, fine-tune the settings, and you're done.",
					"linecount" : 2,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 153.0, 280.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "control",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"id" : "obj-23",
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"patching_rect" : [ 336.0, 357.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/control" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cont_mapper",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 34.0, 218.0, 28.0 ],
					"fontsize" : 17.334082,
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a one-to-one mapper",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 64.0, 242.0, 18.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"patching_rect" : [ 24.0, 22.0, 256.0, 63.0 ],
					"numoutlets" : 0,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module allows you to map data from a module's output (return) to another module's parameter",
					"linecount" : 2,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 105.0, 280.0, 30.0 ],
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mouse/1",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"id" : "obj-28",
					"name" : "jmod.mouse.maxpat",
					"numinlets" : 1,
					"patching_rect" : [ 335.0, 430.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/mouse" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper",
					"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"id" : "obj-29",
					"name" : "jmod.cont_mapper.maxpat",
					"numinlets" : 1,
					"patching_rect" : [ 335.0, 25.0, 600.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/mapper.1" ],
					"lockeddragscroll" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [ 690.5, 349.0, 659.5, 349.0 ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-5", 2 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 0,
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
