{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 16.0, 206.0, 963.0, 590.0 ],
		"bglocked" : 0,
		"defrect" : [ 16.0, 206.0, 963.0, 590.0 ],
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
					"maxclass" : "comment",
					"text" : "you can chan change the edit mode for all mappers in a row",
					"linecount" : 2,
					"patching_rect" : [ 75.0, 265.0, 225.0, 30.0 ],
					"fontname" : "Verdana",
					"id" : "obj-34",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /*/edit",
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 355.0, 123.0, 20.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "edit",
					"presentation_rect" : [ 574.0, 19.0, 41.0, 19.0 ],
					"items" : [ "edit", ",", "active", ",", "bypass" ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"patching_rect" : [ 30.0, 270.0, 42.0, 19.0 ],
					"fontname" : "Verdana",
					"presentation" : 1,
					"id" : "obj-30",
					"arrowlink" : 1,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"pattrmode" : 1,
					"numoutlets" : 3,
					"arrow" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"patching_rect" : [ 650.0, 415.0, 100.0, 20.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 1,
					"fontsize" : 10.970939,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.receive jcom.remote.module.from",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 650.0, 385.0, 207.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/module_name /filter~",
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.0, 544.0, 168.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 2,
					"fontsize" : 10.970939,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p settings",
					"outlettype" : [ "" ],
					"patching_rect" : [ 681.0, 289.0, 57.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
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
									"maxclass" : "message",
									"text" : "/control/audio 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 165.0, 153.0, 16.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 113.0, 27.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 88.0, 26.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/audio/gain 100.",
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 143.0, 153.0, 16.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/audio/mute 0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 123.0, 142.0, 16.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 22.0, 21.0, 54.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 30.0, 190.0, 15.0, 15.0 ],
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
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 41.0, 50.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/input~/audio/gain 100.",
									"outlettype" : [ "" ],
									"patching_rect" : [ 32.0, 68.0, 155.0, 16.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/q 2.55",
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 104.0, 142.0, 16.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/filter~/filtertype bandpass",
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 85.0, 143.0, 16.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 0 ],
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
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "and move your mouse horizontally to change the wet/dry level",
					"patching_rect" : [ 369.0, 330.0, 321.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "turn on the audio, play any sound,",
					"patching_rect" : [ 369.0, 312.0, 181.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"patching_rect" : [ 170.0, 515.0, 159.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 29.0, 299.0, 300.0, 140.0 ],
					"id" : "obj-5",
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"args" : [ "/input~" ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"patching_rect" : [ 29.0, 441.0, 300.0, 70.0 ],
					"id" : "obj-6",
					"name" : "jmod.filter~.maxpat",
					"numinlets" : 3,
					"args" : [ "/filter~" ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper[1]",
					"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.0, 96.0, 600.0, 70.0 ],
					"id" : "obj-7",
					"name" : "jmod.cont_mapper.maxpat",
					"numinlets" : 1,
					"args" : [ "/mapper.2" ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "•",
					"patching_rect" : [ 355.0, 192.0, 17.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "•",
					"patching_rect" : [ 355.0, 311.0, 17.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall this preset :",
					"patching_rect" : [ 550.0, 310.0, 181.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mapper.2/preset/recall audio",
					"outlettype" : [ "" ],
					"patching_rect" : [ 651.0, 311.0, 180.0, 16.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"outlettype" : [ "" ],
					"patching_rect" : [ 650.0, 355.0, 180.0, 18.0 ],
					"hidden" : 1,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mess around with the other parameters, and see how it reacts....",
					"patching_rect" : [ 369.0, 290.0, 334.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "you should see the wet/dry gain of the filter moving when you move your mouse from left to right",
					"patching_rect" : [ 369.0, 266.0, 498.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2_ turn on the mouse module ->",
					"patching_rect" : [ 369.0, 240.0, 173.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "as you can see, it routes the x position from the mouse module to the gain of the limiter",
					"patching_rect" : [ 369.0, 214.0, 449.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1_ recall a ready-made mapping ->",
					"patching_rect" : [ 369.0, 192.0, 186.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to try it out :",
					"patching_rect" : [ 340.0, 165.0, 91.0, 21.0 ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 11.556055,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mouse/mouse_on 1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 651.0, 237.0, 180.0, 16.0 ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mapper.1/preset/recall mouse",
					"outlettype" : [ "" ],
					"patching_rect" : [ 651.0, 194.0, 180.0, 16.0 ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Notice there are three different modes (upper-right menu): - bypass : the mapper is made inactive;\r- edit : range and clipmode are set automatically according to the parameter/return settings, changing the curve coef will update the display below;\r- active : automatic range/clipmode setting, and curve display are disabled (to improve performance)",
					"linecount" : 7,
					"patching_rect" : [ 25.0, 175.0, 277.0, 90.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Then, choose the source and destinations adresses, fine-tune the settings, and you're done.",
					"linecount" : 2,
					"patching_rect" : [ 25.0, 141.0, 280.0, 30.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "control",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 336.0, 357.0, 150.0, 70.0 ],
					"id" : "obj-23",
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"args" : [ "/control" ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cont_mapper",
					"patching_rect" : [ 30.0, 34.0, 218.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a one-to-one mapper",
					"patching_rect" : [ 31.0, 64.0, 242.0, 18.0 ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 24.0, 22.0, 256.0, 63.0 ],
					"id" : "obj-26",
					"rounded" : 0,
					"numinlets" : 1,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module allows you to map data from a module's output (return) to another module's parameter",
					"linecount" : 2,
					"patching_rect" : [ 24.0, 105.0, 280.0, 30.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mouse/1",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.0, 430.0, 150.0, 70.0 ],
					"id" : "obj-28",
					"name" : "jmod.mouse.maxpat",
					"numinlets" : 1,
					"args" : [ "/mouse" ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper",
					"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.0, 25.0, 600.0, 70.0 ],
					"id" : "obj-29",
					"name" : "jmod.cont_mapper.maxpat",
					"numinlets" : 1,
					"args" : [ "/mapper.1" ],
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [ 38.5, 537.0, 167.0, 537.0, 167.0, 537.0, 192.5, 537.0 ]
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
					"midpoints" : [ 690.5, 349.0, 659.5, 349.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
