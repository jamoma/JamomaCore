{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 19.0, 73.0, 983.0, 676.0 ],
		"bglocked" : 0,
		"defrect" : [ 19.0, 73.0, 983.0, 676.0 ],
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
					"maxclass" : "message",
					"text" : "/module_name /tmapper.2",
					"linecount" : 5,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"presentation_rect" : [ 267.0, 425.0, 0.0, 0.0 ],
					"id" : "obj-28",
					"numoutlets" : 1,
					"patching_rect" : [ 265.0, 425.0, 50.0, 71.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mode 1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"presentation_rect" : [ 472.0, 504.0, 0.0, 0.0 ],
					"id" : "obj-27",
					"numoutlets" : 1,
					"patching_rect" : [ 470.0, 505.0, 57.0, 18.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/module_name /limiter~",
					"linecount" : 5,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-26",
					"numoutlets" : 1,
					"patching_rect" : [ 550.0, 605.0, 50.0, 71.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/recall 0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-1",
					"numoutlets" : 1,
					"patching_rect" : [ 165.0, 345.0, 95.0, 18.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/write",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-15",
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 360.0, 83.0, 18.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 0 nothing",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1,
					"patching_rect" : [ 145.0, 180.0, 158.0, 18.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 2 gain_ramp",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-8",
					"numoutlets" : 1,
					"patching_rect" : [ 145.0, 150.0, 158.0, 18.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "impulsion : works everytime somethings comes out from the source adress select value :",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 25.0, 285.0, 280.0, 30.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "moving the mouse horizontally will change the gain of the limiter~ with a ramp of one second _ notice the temporal gate will prevent changes to happen more often than any 2 seconds",
					"linecount" : 7,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-3",
					"numoutlets" : 1,
					"patching_rect" : [ 386.0, 305.0, 159.0, 88.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2_ recall a ready-made mapping ¨:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 386.0, 234.0, 185.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-5",
					"pattrmode" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 386.0, 254.0, 221.0, 23.0 ],
					"fontsize" : 13.482065,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "toggle", "limiter~", "modes", ",", "ramp", "limiter~", "gain", ",", "toggle", "limiter~", "modes", "with", "delay" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p presets",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-6",
					"numoutlets" : 1,
					"patching_rect" : [ 386.0, 281.0, 54.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 285.0, 418.0, 934.0, 322.0 ],
						"bglocked" : 0,
						"defrect" : [ 285.0, 418.0, 934.0, 322.0 ],
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
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmapper.1/preset/read help1.xml, /tmapper.2/preset/read help2.xml",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-15",
									"numoutlets" : 1,
									"patching_rect" : [ 715.0, 125.5, 188.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-10",
									"numoutlets" : 1,
									"patching_rect" : [ 715.0, 100.0, 56.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.send jcom.remote.module.to",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 1,
									"patching_rect" : [ 715.0, 160.5, 180.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 281.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set clicking will change the limiter~ mode _ with a delay of 2 seconds",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-2",
									"numoutlets" : 1,
									"patching_rect" : [ 443.0, 195.0, 286.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set moving the mouse horizontally will change the gain of the limiter~ with a ramp of one second _ notice the temporal gate will prevent changes to happen more often than any 2 seconds",
									"linecount" : 6,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-3",
									"numoutlets" : 1,
									"patching_rect" : [ 229.0, 191.0, 190.0, 76.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\r/jmod_to/mapper/1/preset/recall 6;\r/jmod_to/mapper/2/preset/recall 7",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-4",
									"numoutlets" : 1,
									"patching_rect" : [ 463.0, 73.0, 192.0, 40.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-5",
									"numoutlets" : 1,
									"patching_rect" : [ 15.0, 16.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set clicking will change the limiter~ mode",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-6",
									"numoutlets" : 1,
									"patching_rect" : [ 15.0, 190.0, 216.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 4,
									"patching_rect" : [ 15.0, 41.0, 652.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\r/jmod_to/mapper/1/preset/recall 4;\r/jmod_to/mapper/2/preset/recall 5",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-8",
									"numoutlets" : 1,
									"patching_rect" : [ 245.0, 73.0, 192.0, 40.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmapper.1/preset/recall 1, /tmapper.2/preset/recall 1",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"id" : "obj-9",
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 73.0, 192.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 261.0, 24.0, 261.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 238.5, 269.0, 24.0, 269.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 452.5, 269.0, 24.0, 269.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 156.0, 724.5, 156.0 ]
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
					"maxclass" : "bpatcher",
					"varname" : "/mapper/2",
					"numinlets" : 1,
					"id" : "obj-7",
					"name" : "jmod.trig_mapper.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 340.0, 105.0, 603.0, 73.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/tmapper.2" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1_ turn on the mouse module ->",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-10",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 386.0, 210.0, 173.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to try it out :",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 359.0, 182.0, 91.0, 21.0 ],
					"fontsize" : 11.556055
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r/jmod_to/mouse/1/mouse_on 1",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"id" : "obj-12",
					"numoutlets" : 1,
					"patching_rect" : [ 566.0, 195.0, 180.0, 28.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "actions :",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 26.0, 260.0, 62.0, 21.0 ],
					"fontsize" : 11.556055
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Then, choose the source and destinations adresses, fine-tune the settings, and you're done.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 25.0, 211.0, 280.0, 30.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "control",
					"numinlets" : 1,
					"id" : "obj-18",
					"name" : "jmod.control.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 550.0, 355.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/control" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.trig_mapper",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-19",
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 30.0, 34.0, 218.0, 28.0 ],
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a one-to-one mapper for discrete events",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-20",
					"numoutlets" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 31.0, 64.0, 242.0, 18.0 ],
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-21",
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"patching_rect" : [ 24.0, 22.0, 256.0, 63.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module allows you to map data from a module's output to another module's parameter or message",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 24.0, 98.0, 280.0, 30.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mouse/1",
					"numinlets" : 1,
					"id" : "obj-23",
					"name" : "jmod.mouse.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 550.0, 430.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/mouse" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~/1",
					"numinlets" : 3,
					"id" : "obj-24",
					"name" : "jmod.limiter~.maxpat",
					"numoutlets" : 3,
					"patching_rect" : [ 550.0, 505.0, 300.0, 70.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter~" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper.1",
					"numinlets" : 1,
					"id" : "obj-25",
					"name" : "jmod.trig_mapper.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 339.0, 26.0, 603.0, 73.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/tmapper.1" ],
					"lockeddragscroll" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
