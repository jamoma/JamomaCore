{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 92.0, 55.0, 529.0, 425.0 ],
		"bglocked" : 0,
		"defrect" : [ 92.0, 55.0, 529.0, 425.0 ],
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
					"text" : "At the time of this writing, you cannot mix the audio versions of these objects with the non-audio versions.",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 30.0, 340.0, 375.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Another important function they provide is bypassing, freezing, and muting.",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 30.0, 320.0, 394.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.in and jcom.out do the communication in a module between the hub and the algorithm. jcom.out, for example, can send a reference to the output matrix to the hub so that the preview in the gui can be displayed.",
					"linecount" : 3,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 30.0, 275.0, 382.0, 43.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Why do we need these?",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 30.0, 255.0, 203.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The second outlet from the right for jcom.in~ are control messages for the algorithm.",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 150.0, 205.0, 249.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The argument specifies the number of inputs or outputs to manage for both objects. the last outlet of both objects is a standard 'dumpout' outlet for attribute return values",
					"linecount" : 4,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 155.0, 145.0, 242.0, 55.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p algorithm",
					"numinlets" : 3,
					"numoutlets" : 3,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 28.0, 157.0, 82.0, 19.0 ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 49.0, 59.0, 316.0, 205.0 ],
						"bglocked" : 0,
						"defrect" : [ 49.0, 59.0, 316.0, 205.0 ],
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
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"patching_rect" : [ 50.0, 135.0, 24.0, 24.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 30.0, 24.0, 24.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-3",
									"patching_rect" : [ 160.0, 135.0, 24.0, 24.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"patching_rect" : [ 120.0, 135.0, 24.0, 24.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 30.0, 24.0, 24.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 30.0, 24.0, 24.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
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
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"patching_rect" : [ 115.0, 85.0, 27.0, 27.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 85.0, 27.0, 27.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-10",
					"patching_rect" : [ 90.0, 220.0, 27.0, 27.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-11",
					"patching_rect" : [ 60.0, 220.0, 27.0, 27.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 2",
					"numinlets" : 2,
					"numoutlets" : 3,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 60.0, 185.0, 79.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 2",
					"numinlets" : 2,
					"numoutlets" : 4,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 60.0, 120.0, 74.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "module conduits for non-audio input/output",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 30.0, 50.0, 260.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.in / jcom.out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 30.0, 20.0, 193.0, 28.0 ],
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-16",
					"patching_rect" : [ 15.0, 10.0, 255.0, 60.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.in and jcom.out are input/output conduits for control signals in a jamoma module (most often these are Jitter matrices), much like jcom.in~ and jcom.out~ are for audio 'signals'.",
					"linecount" : 4,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 155.0, 85.0, 251.0, 55.0 ],
					"fontsize" : 10.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 100.5, 180.0, 129.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 0,
					"midpoints" : [ 87.833336, 148.0, 100.5, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 106.166664, 141.0, 37.5, 141.0 ]
				}

			}
 ]
	}

}
