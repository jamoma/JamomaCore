{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 80.0, 44.0, 957.0, 401.0 ],
		"bglocked" : 0,
		"defrect" : [ 80.0, 44.0, 957.0, 401.0 ],
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
					"text" : "or make you own ones...",
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 360.0, 185.0, 18.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-10",
					"presentation_rect" : [ 410.0, 361.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "moving the mouse horizontally will change the gain of the limiter~ with a ramp of one second _ notice the \"repeat time\" parameter will prevent changes to happen more often than any 2 seconds",
					"linecount" : 3,
					"numoutlets" : 1,
					"patching_rect" : [ 410.0, 305.0, 357.0, 40.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "recall a ready-made mapping ¨:",
					"numoutlets" : 0,
					"patching_rect" : [ 409.0, 230.0, 185.0, 18.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numoutlets" : 3,
					"patching_rect" : [ 410.0, 254.0, 221.0, 23.0 ],
					"fontsize" : 13.482065,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "toggle", "limiter~", "modes", ",", "ramp", "limiter~", "gain", ",", "toggle", "limiter~", "modes", "with", "delay" ],
					"types" : [  ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"pattrmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p presets",
					"numoutlets" : 1,
					"patching_rect" : [ 410.0, 281.0, 54.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 297.0, 457.0, 757.0, 340.0 ],
						"bglocked" : 0,
						"defrect" : [ 297.0, 457.0, 757.0, 340.0 ],
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
									"maxclass" : "newobj",
									"text" : "del 2000",
									"numoutlets" : 1,
									"patching_rect" : [ 620.0, 100.0, 56.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "bang" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numoutlets" : 1,
									"patching_rect" : [ 555.0, 100.0, 56.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmapper.1/preset/read tmapperHelp1.xml, /tmapper.2/preset/read tmapperHelp2.xml, /mouse/mouse_on 1",
									"linecount" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 490.0, 124.0, 245.0, 40.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"patching_rect" : [ 490.0, 98.5, 56.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "bang" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.send jcom.remote.module.to",
									"numoutlets" : 1,
									"patching_rect" : [ 490.0, 183.0, 180.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 310.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set clicking will change the limiter~ mode _ with a delay of 2 seconds",
									"linecount" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 443.0, 224.0, 286.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set moving the mouse horizontally will change the gain of the limiter~ with a ramp of one second _ notice the \"repeat time\" parameter will prevent changes to happen more often than any 2 seconds",
									"linecount" : 6,
									"numoutlets" : 1,
									"patching_rect" : [ 229.0, 220.0, 204.0, 76.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmapper.1/preset/recall 3, /tmapper.2/preset/recall 3",
									"linecount" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 465.0, 64.0, 192.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 15.0, 10.0, 15.0, 15.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set clicking will change the limiter~ mode",
									"numoutlets" : 1,
									"patching_rect" : [ 15.0, 219.0, 216.0, 16.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 2",
									"numoutlets" : 4,
									"patching_rect" : [ 15.0, 35.0, 652.0, 18.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmapper.1/preset/recall 2, /tmapper.2/preset/recall 2",
									"linecount" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 245.0, 67.0, 192.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmapper.1/preset/recall 1, /tmapper.2/preset/recall 1",
									"linecount" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 67.0, 192.0, 28.0 ],
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 174.0, 499.5, 174.0 ]
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 452.5, 298.0, 24.0, 298.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 238.5, 298.0, 24.0, 298.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 290.0, 24.0, 290.0 ]
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
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 474.5, 174.0, 499.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 174.0, 499.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper/2",
					"numoutlets" : 1,
					"patching_rect" : [ 340.0, 105.0, 600.0, 70.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.trig_mapper.maxpat",
					"id" : "obj-7",
					"args" : [ "/tmapper.2" ],
					"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to try it out :",
					"numoutlets" : 0,
					"patching_rect" : [ 383.0, 197.0, 91.0, 21.0 ],
					"fontsize" : 11.556055,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Then, choose the source and destinations adresses, fine-tune the settings, and you're done.",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 146.0, 280.0, 30.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "control",
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 195.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.control.maxpat",
					"id" : "obj-18",
					"args" : [ "/control" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.trig_mapper",
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 34.0, 218.0, 28.0 ],
					"fontsize" : 17.334082,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a one-to-one mapper for discrete events",
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 64.0, 242.0, 18.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 25.0, 256.0, 63.0 ],
					"id" : "obj-21",
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module allows you to map data from a module's output to another module's parameter or message",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 98.0, 280.0, 30.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mouse/1",
					"numoutlets" : 1,
					"patching_rect" : [ 175.0, 195.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.mouse.maxpat",
					"id" : "obj-23",
					"args" : [ "/mouse" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~/1",
					"numoutlets" : 3,
					"patching_rect" : [ 25.0, 270.0, 300.0, 105.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.limiter~.maxpat",
					"id" : "obj-24",
					"args" : [ "/limiter~" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"numinlets" : 3,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper.1",
					"numoutlets" : 1,
					"patching_rect" : [ 339.0, 26.0, 600.0, 70.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.trig_mapper.maxpat",
					"id" : "obj-25",
					"args" : [ "/tmapper.1" ],
					"presentation_rect" : [ 0.0, 0.0, 600.0, 70.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
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
 ]
	}

}
