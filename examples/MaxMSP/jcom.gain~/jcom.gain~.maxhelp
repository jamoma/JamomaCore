{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 167.0, 127.0, 617.0, 485.0 ],
		"bglocked" : 0,
		"defrect" : [ 167.0, 127.0, 617.0, 485.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
<<<<<<< HEAD
					"args" : [ "@name", "jcom.gain~", "@description", "Control level as well as dry/wet mix" ],
					"bgmode" : 1,
					"id" : "obj-44",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 617.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 1197.0, 68.0 ],
					"prototypename" : "bphelp",
					"varname" : "maxhelpui"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-1",
					"maxclass" : "newobj",
=======
					"maxclass" : "bpatcher",
					"id" : "obj-44",
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 285.0, 617.0, 70.0 ],
					"numoutlets" : 0,
					"name" : "jcom.maxhelpui.maxpat",
					"args" : [ "@name", "jcom.gain~", "@description", "Control level as well as dry/wet mix" ],
					"bgmode" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 54 100",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 285.0, 250.0, 60.0, 19.0 ],
					"hidden" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1, loop 1, modout 1",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 140.0, 235.0, 113.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 285.0, 225.0, 56.0, 19.0 ],
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-4",
					"linecount" : 2,
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "mixed and gained output",
					"linecount" : 2,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 329.0, 176.0, 109.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-5",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "wet input",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 414.0, 131.0, 70.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-6",
					"numinlets" : 1,
					"patching_rect" : [ 412.0, 127.0, 71.0, 20.0 ],
					"numoutlets" : 0,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-7",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "dumpout",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 474.0, 176.0, 58.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-8",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "dry input",
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 329.0, 131.0, 70.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 326.0, 152.0, 165.5, 19.0 ],
					"text" : "jcom.gain~ 4"
=======
					"maxclass" : "newobj",
					"text" : "jcom.gain~ 4",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 326.0, 152.0, 113.5, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-10",
					"numinlets" : 1,
					"patching_rect" : [ 326.0, 128.0, 71.0, 20.0 ],
					"numoutlets" : 0,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-11",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "N channels of processed (mixed and gained) signal",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 41.0, 192.0, 277.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-12",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "Outlets:",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 178.0, 49.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-13",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "the number of channels (default 1)",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 41.0, 111.0, 243.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-14",
					"linecount" : 2,
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "If number of channels is N, the first N inlets are raw input, and the next N inlets are for wet signal",
					"linecount" : 2,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 41.0, 147.0, 263.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-15",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "wet",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 448.0, 330.0, 27.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 107.0, 410.0, 30.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 25.0, 410.0, 73.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 140.0, 440.0, 46.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p vertigo",
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 175.0, 325.0, 53.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 317.0, 264.0, 493.0, 278.0 ],
						"bglocked" : 0,
						"defrect" : [ 317.0, 264.0, 493.0, 278.0 ],
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.35",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 57.0, 64.0, 51.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.35",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 154.0, 63.0, 51.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tapout~ 500",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 200.0, 135.0, 74.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tapin~ 1000",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 200.0, 100.0, 73.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "tapconnect" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tapout~ 750",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 135.0, 74.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tapin~ 1000",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 100.0, 73.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "tapconnect" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 320.0, 145.0, 78.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 200.0, 227.0, 30.0, 30.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 227.0, 30.0, 30.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-10",
									"numinlets" : 0,
									"patching_rect" : [ 200.0, 20.0, 30.0, 30.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-11",
									"numinlets" : 0,
									"patching_rect" : [ 35.0, 20.0, 30.0, 30.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess -200",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 320.0, 119.0, 85.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "freqshift~ -50",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 200.0, 179.0, 79.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "freqshift~ -50",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 35.0, 179.0, 79.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "signal", "signal" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 163.5, 84.0, 209.5, 84.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 44.5, 203.0, 132.0, 203.0, 132.0, 56.0, 163.5, 56.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 209.5, 208.0, 121.0, 208.0, 121.0, 55.0, 66.5, 55.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 66.5, 85.0, 44.5, 85.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
<<<<<<< HEAD
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontname" : "Verdana",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
=======
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					}

<<<<<<< HEAD
			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-23",
=======
				}

			}
, 			{
				"box" : 				{
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "flonum",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 477.0, 311.0, 48.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"id" : "obj-24",
					"numinlets" : 1,
					"patching_rect" : [ 331.0, 311.0, 144.0, 15.0 ],
					"numoutlets" : 1,
					"orientation" : 1,
					"outlettype" : [ "" ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mix $1",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 530.0, 310.0, 45.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 477.0, 284.0, 48.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"id" : "obj-27",
					"numinlets" : 1,
					"patching_rect" : [ 331.0, 284.0, 144.0, 15.0 ],
					"numoutlets" : 1,
					"orientation" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gain $1",
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 530.0, 285.0, 48.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-29",
					"numinlets" : 1,
					"patching_rect" : [ 498.0, 340.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 514.0, 340.0, 62.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 105.0, 235.0, 33.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-32",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "processed",
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 215.0, 360.0, 59.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-33",
					"numinlets" : 1,
					"patching_rect" : [ 200.0, 430.0, 100.0, 12.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-34",
					"numinlets" : 1,
					"patching_rect" : [ 200.0, 445.0, 100.0, 12.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sfplay~ 2",
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 140.0, 265.0, 58.0, 19.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "signal", "bang" ],
					"save" : [ "#N", "sfplay~", "", 2, 120960, 0, "", ";" ]
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-36",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "newobj",
					"text" : "jcom.gain~ 2",
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 4,
					"patching_rect" : [ 140.0, 395.0, 78.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-37",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "raw",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 105.0, 365.0, 29.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-38",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "Argument:",
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 96.0, 243.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-39",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "dry",
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 331.0, 330.0, 27.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-40",
					"numinlets" : 1,
					"patching_rect" : [ 326.0, 273.0, 261.0, 91.0 ],
					"numoutlets" : 0,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-41",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "Inlets:",
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 129.0, 108.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-42",
					"numinlets" : 1,
					"patching_rect" : [ 471.0, 173.0, 56.0, 20.0 ],
					"numoutlets" : 0,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-43",
					"numinlets" : 1,
					"patching_rect" : [ 326.0, 173.0, 124.0, 37.0 ],
					"numoutlets" : 0,
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 523.5, 387.0, 149.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 539.5, 301.0, 581.0, 301.0, 581.0, 387.0, 149.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 539.5, 328.0, 581.0, 328.0, 581.0, 387.0, 149.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-36", 3 ],
					"hidden" : 0,
					"midpoints" : [ 218.5, 352.0, 208.5, 352.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 433.0, 149.5, 433.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 116.5, 433.0, 149.5, 433.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
