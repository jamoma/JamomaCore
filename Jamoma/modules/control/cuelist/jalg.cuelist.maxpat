{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 137.0, 168.0, 782.0, 674.0 ],
		"bglocked" : 0,
		"defrect" : [ 137.0, 168.0, 782.0, 674.0 ],
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
					"text" : "p listen",
					"patching_rect" : [ 53.0, 442.0, 45.0, 18.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 39.0, 74.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 39.0, 74.0, 600.0, 426.0 ],
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
									"text" : "s #1_remote",
									"patching_rect" : [ 63.0, 303.0, 73.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "We can not actually use jcom.return here, as it would produce a feedback loop, talking to itself.",
									"patching_rect" : [ 80.0, 272.0, 484.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "name jcom.remote.module.from",
									"patching_rect" : [ 80.0, 86.0, 170.0, 16.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "name \"that deaf dumb and blind kid\"",
									"patching_rect" : [ 95.0, 108.0, 193.0, 16.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"patching_rect" : [ 80.0, 52.0, 42.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /remote",
									"patching_rect" : [ 80.0, 193.0, 93.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return remote @description \"Reports all changes of values in all modules\"",
									"patching_rect" : [ 106.0, 244.0, 403.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.receive \"that deaf dumb and blind kid\"",
									"patching_rect" : [ 80.0, 150.0, 228.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if we are not listening, jcom.receive is set to another argument to save cpu",
									"linecount" : 2,
									"patching_rect" : [ 123.0, 50.0, 201.0, 30.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 80.0, 32.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 80.0, 245.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 89.5, 221.0, 72.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 53.0, 596.0, 15.0, 15.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route read",
					"patching_rect" : [ 620.0, 196.0, 60.0, 18.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"color" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- events are sent remotely to the target parameter in the target module.",
					"linecount" : 2,
					"patching_rect" : [ 581.0, 436.0, 202.0, 30.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"patching_rect" : [ 418.0, 433.0, 180.0, 18.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p trigger_cue",
					"patching_rect" : [ 418.0, 192.0, 75.0, 18.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 39.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
						"defrect" : [ 39.0, 59.0, 600.0, 426.0 ],
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
									"maxclass" : "comment",
									"text" : "This is done by stopping the delay in the [WAIT_or_pass_on] subpatch.",
									"linecount" : 2,
									"patching_rect" : [ 322.0, 309.0, 234.0, 30.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If a new cue is triggered, we have to make sure that any current cue on WAIT is cancelled.",
									"linecount" : 2,
									"patching_rect" : [ 322.0, 280.0, 245.0, 30.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "WAIT (pause/resume)",
									"patching_rect" : [ 322.0, 32.0, 135.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "WAIT will cause uzi to pause and resume",
									"patching_rect" : [ 322.0, 125.0, 213.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s b",
									"patching_rect" : [ 50.0, 60.0, 240.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend line",
									"patching_rect" : [ 80.0, 258.0, 70.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1+$i2-1",
									"patching_rect" : [ 80.0, 229.0, 83.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"patching_rect" : [ 50.0, 196.0, 40.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"patching_rect" : [ 50.0, 121.0, 81.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i2-$i1+1",
									"patching_rect" : [ 50.0, 166.0, 83.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #0_cues 1",
									"patching_rect" : [ 50.0, 86.0, 140.0, 28.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 17.334082,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", "$0_cues", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 303.0, 30.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "resume" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 80.0, 280.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 280.0, 278.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use Uzi to dump the lines of the script that belong to the desired cue.",
									"linecount" : 2,
									"patching_rect" : [ 322.0, 81.0, 193.0, 30.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Cue that we want to trigger",
									"patching_rect" : [ 68.0, 32.0, 146.0, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "poll lines from [text]",
									"patching_rect" : [ 79.0, 303.0, 118.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 312.0, 189.0, 59.5, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 2 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 152.0, 153.5, 152.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return cues @type msg_symbol \"When a new cue script is loaded, all cues are dumped one ata time. The symbols ---START and ---END indicates the start and end of the list of cues.\"",
					"linecount" : 3,
					"patching_rect" : [ 393.0, 491.0, 336.0, 42.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p find_cues",
					"patching_rect" : [ 342.0, 338.0, 65.0, 18.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 4,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "query", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 45.0, 53.0, 888.0, 706.0 ],
						"bglocked" : 0,
						"defrect" : [ 45.0, 53.0, 888.0, 706.0 ],
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
									"text" : "jcom.thru",
									"patching_rect" : [ 30.0, 565.0, 59.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "---END",
									"patching_rect" : [ 30.0, 287.0, 43.0, 16.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "---START",
									"patching_rect" : [ 122.0, 287.0, 56.0, 16.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"patching_rect" : [ 30.0, 256.0, 103.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"patching_rect" : [ 111.0, 540.0, 74.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "sort 1 -1, dump",
									"linecount" : 2,
									"patching_rect" : [ 76.0, 323.0, 54.0, 28.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 s",
									"patching_rect" : [ 111.0, 480.0, 76.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter",
									"patching_rect" : [ 111.0, 449.0, 66.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 5,
									"fontsize" : 9.873845,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s",
									"patching_rect" : [ 111.0, 418.0, 76.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"patching_rect" : [ 111.0, 511.0, 53.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #1_set_menu",
									"patching_rect" : [ 30.0, 589.0, 87.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-",
									"patching_rect" : [ 642.0, 205.0, 29.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "->",
									"patching_rect" : [ 340.0, 461.0, 29.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"patching_rect" : [ 361.0, 202.0, 51.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "internally store cue names and what line they start and end at",
									"linecount" : 6,
									"patching_rect" : [ 269.0, 459.0, 67.0, 78.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "return list of cues",
									"linecount" : 2,
									"patching_rect" : [ 745.0, 610.0, 77.0, 30.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang when new text file has been read",
									"linecount" : 2,
									"patching_rect" : [ 745.0, 101.0, 113.0, 30.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "connect to text inlet",
									"patching_rect" : [ 509.0, 513.0, 117.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- the names of all cues.",
									"patching_rect" : [ 235.0, 40.0, 413.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- what line they start and end at.",
									"patching_rect" : [ 235.0, 53.0, 412.0, 18.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 745.0, 589.0, 15.0, 15.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grab from text",
									"patching_rect" : [ 509.0, 500.0, 100.0, 18.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "text outlet 3",
									"patching_rect" : [ 540.0, 109.0, 100.0, 18.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "text outlet 2",
									"patching_rect" : [ 461.0, 109.0, 100.0, 18.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 745.0, 136.0, 15.0, 15.0 ],
									"id" : "obj-25",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"patching_rect" : [ 407.0, 260.0, 22.0, 18.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"patching_rect" : [ 407.0, 305.0, 27.0, 18.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"patching_rect" : [ 572.0, 252.0, 27.0, 18.0 ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"patching_rect" : [ 401.0, 380.0, 27.0, 18.0 ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack s 0 0",
									"patching_rect" : [ 373.0, 358.0, 72.0, 18.0 ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i2-$i1+1",
									"patching_rect" : [ 572.0, 202.0, 83.0, 18.0 ],
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i i",
									"patching_rect" : [ 542.0, 161.0, 105.0, 18.0 ],
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #0_cues 1",
									"patching_rect" : [ 361.0, 457.0, 81.0, 18.0 ],
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", "$0_cues", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend store",
									"patching_rect" : [ 361.0, 416.0, 78.0, 18.0 ],
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"patching_rect" : [ 361.0, 158.0, 53.0, 18.0 ],
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack s 0 0",
									"patching_rect" : [ 361.0, 333.0, 60.0, 18.0 ],
									"id" : "obj-36",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route CUE",
									"patching_rect" : [ 361.0, 180.0, 59.0, 18.0 ],
									"id" : "obj-37",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend line",
									"patching_rect" : [ 572.0, 414.0, 70.0, 18.0 ],
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"patching_rect" : [ 542.0, 182.0, 40.0, 18.0 ],
									"id" : "obj-39",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t query 0 clear",
									"patching_rect" : [ 487.0, 417.0, 81.0, 18.0 ],
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "query", "int", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 542.0, 136.0, 15.0, 15.0 ],
									"id" : "obj-41",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 463.0, 136.0, 15.0, 15.0 ],
									"id" : "obj-42",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 361.0, 136.0, 15.0, 15.0 ],
									"id" : "obj-43",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 487.0, 502.0, 15.0, 15.0 ],
									"id" : "obj-44",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "text outlet 1",
									"patching_rect" : [ 359.0, 109.0, 100.0, 18.0 ],
									"id" : "obj-45",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "When the cue script is loaded, it is scanned by this subpatch in order to get:",
									"patching_rect" : [ 235.0, 27.0, 414.0, 18.0 ],
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-------- connect to text outlets --------",
									"patching_rect" : [ 367.0, 90.0, 238.0, 18.0 ],
									"id" : "obj-47",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the text file is scanned from end to beginning",
									"linecount" : 3,
									"patching_rect" : [ 664.0, 197.0, 92.0, 42.0 ],
									"id" : "obj-48",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "discard comments -->",
									"patching_rect" : [ 240.0, 205.0, 119.0, 18.0 ],
									"id" : "obj-49",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of cues are reversed before being dumped (as the cuescript file has been scanned in reverse order).",
									"linecount" : 3,
									"patching_rect" : [ 30.0, 610.0, 216.0, 42.0 ],
									"id" : "obj-50",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 585.0, 754.0, 585.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 131.5, 309.0, 39.5, 309.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 120.5, 561.0, 39.5, 561.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 562.0, 242.0, 39.5, 242.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [ 558.5, 448.0, 211.0, 448.0, 211.0, 503.0, 120.5, 503.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 508.0, 120.5, 508.0 ]
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-8", 2 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [ 527.5, 445.0, 144.0, 445.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 2 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [ 558.5, 451.0, 370.5, 451.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [ 589.5, 285.0, 391.0, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-36", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 410.5, 402.0, 450.0, 402.0, 450.0, 300.0, 424.5, 300.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 2 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 637.5, 298.0, 424.5, 298.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 754.0, 383.0, 496.5, 383.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 581.5, 477.0, 496.0, 477.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 2 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-31", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "grab 3",
					"patching_rect" : [ 342.0, 298.0, 63.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p cue_gate",
					"patching_rect" : [ 418.0, 341.0, 64.0, 18.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 468.0, 122.0, 568.0, 420.0 ],
						"bglocked" : 0,
						"defrect" : [ 468.0, 122.0, 568.0, 420.0 ],
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
									"text" : "sel bang",
									"patching_rect" : [ 195.0, 55.0, 53.0, 19.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 25.0, 30.0, 150.0, 17.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 65.0, 195.0, 150.0, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 330.0, 160.0, 150.0, 17.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 45.0, 115.0, 150.0, 17.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 340.0, 95.0, 150.0, 17.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"patching_rect" : [ 340.0, 65.0, 150.0, 17.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fromsymbol",
									"patching_rect" : [ 260.0, 298.0, 67.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"patching_rect" : [ 232.0, 276.0, 40.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 277.0, 247.0, 27.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 1",
									"patching_rect" : [ 277.0, 225.0, 34.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"patching_rect" : [ 260.0, 179.0, 27.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"patching_rect" : [ 277.0, 203.0, 35.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp #.*",
									"patching_rect" : [ 218.0, 157.0, 66.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (.*)#.*",
									"patching_rect" : [ 201.0, 83.0, 83.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "filter out comments (text starting with a #)",
									"patching_rect" : [ 324.0, 124.0, 225.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp #.*",
									"patching_rect" : [ 252.0, 121.0, 66.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"patching_rect" : [ 205.0, 30.0, 53.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route bang CUE",
									"patching_rect" : [ 232.0, 328.0, 87.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 205.0, 6.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 296.0, 354.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "from text",
									"patching_rect" : [ 225.0, 6.0, 100.0, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All lines from text starts of with \"set\", so we have to get rid of that",
									"linecount" : 2,
									"patching_rect" : [ 7.0, 57.0, 186.0, 30.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 3 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 3 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 3 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 3 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 3 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 3 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p WAIT_or_pass_on",
					"patching_rect" : [ 418.0, 373.0, 108.0, 18.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "resume" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 33.0, 59.0, 723.0, 414.0 ],
										"bglocked" : 0,
						"defrect" : [ 33.0, 59.0, 723.0, 414.0 ],
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
									"maxclass" : "comment",
									"text" : "cue events passed through",
									"linecount" : 2,
									"patching_rect" : [ 97.0, 300.0, 85.0, 30.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t stop",
									"patching_rect" : [ 397.0, 129.0, 37.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "stop" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t resume",
									"linecount" : 2,
									"patching_rect" : [ 210.0, 237.0, 45.0, 30.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "resume" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "defer",
									"patching_rect" : [ 210.0, 214.0, 34.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 0",
									"patching_rect" : [ 210.0, 192.0, 33.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i pause",
									"patching_rect" : [ 210.0, 160.0, 61.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "pause" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route WAIT",
									"patching_rect" : [ 210.0, 118.0, 98.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 210.0, 65.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 397.0, 84.0, 15.0, 15.0 ],
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 78.0, 300.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 210.0, 300.0, 15.0, 15.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If a WAIT message is received, uzi is paused for a while. Other messages are passed through to the right outlet.",
									"linecount" : 2,
									"patching_rect" : [ 207.0, 34.0, 293.0, 30.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to uzi",
									"patching_rect" : [ 227.0, 300.0, 36.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If a new cue is triggered, we have to make sure that the previous one is cancelled.",
									"linecount" : 2,
									"patching_rect" : [ 421.0, 83.0, 232.0, 30.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 298.5, 147.0, 87.0, 147.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 406.5, 187.0, 219.5, 187.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 261.5, 282.0, 219.0, 282.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.filesaver TEXT",
					"patching_rect" : [ 507.0, 223.0, 109.0, 18.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /listen",
					"patching_rect" : [ 53.0, 47.0, 113.0, 18.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"patching_rect" : [ 329.0, 106.0, 40.0, 18.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "open" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p get_state",
					"patching_rect" : [ 240.0, 106.0, 65.0, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 525.0, 121.0, 311.0, 291.0 ],
										"bglocked" : 0,
						"defrect" : [ 525.0, 121.0, 311.0, 291.0 ],
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
									"text" : "deferlow",
									"patching_rect" : [ 60.0, 116.0, 51.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p get_parameter_values",
									"patching_rect" : [ 141.0, 145.0, 130.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 1001.0, 608.0 ],
																		"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 1001.0, 608.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s b",
													"patching_rect" : [ 93.0, 102.0, 40.0, 18.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "This stops jcom.receive from listening if we are not currently requesting the names of all modules.",
													"linecount" : 3,
													"patching_rect" : [ 286.0, 196.0, 210.0, 42.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "name jcom.remote.module.from",
													"patching_rect" : [ 123.0, 217.0, 170.0, 16.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "name \"that deaf dumb and blind kid\"",
													"patching_rect" : [ 93.0, 198.0, 193.0, 16.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t cr l tab",
													"patching_rect" : [ 51.0, 469.0, 51.0, 18.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3,
													"outlettype" : [ "cr", "", "tab" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"patching_rect" : [ 51.0, 437.0, 113.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"patching_rect" : [ 113.0, 369.0, 51.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"patching_rect" : [ 51.0, 409.0, 75.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"patching_rect" : [ 93.0, 340.0, 28.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t cr s",
													"patching_rect" : [ 612.0, 159.0, 35.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "cr", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s s",
													"patching_rect" : [ 93.0, 50.0, 40.0, 18.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"patching_rect" : [ 51.0, 376.0, 36.0, 18.0 ],
													"id" : "obj-12",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /parameter_value",
													"patching_rect" : [ 93.0, 312.0, 171.0, 18.0 ],
													"id" : "obj-13",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend # Module",
													"patching_rect" : [ 637.0, 184.0, 100.0, 18.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.receive \"that deaf dumb and blind kid\"",
													"patching_rect" : [ 93.0, 243.0, 228.0, 18.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /*",
													"patching_rect" : [ 93.0, 283.0, 93.0, 18.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.send jcom.remote.module.to",
													"linecount" : 2,
													"patching_rect" : [ 108.0, 154.0, 125.0, 30.0 ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s/parameter_values/dump",
													"patching_rect" : [ 108.0, 128.0, 186.0, 18.0 ],
													"id" : "obj-18",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 93.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-19",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 51.0, 529.0, 15.0, 15.0 ],
													"id" : "obj-20",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "This part introduce a comment to mark the beginning of a new module",
													"linecount" : 2,
													"patching_rect" : [ 625.0, 126.0, 192.0, 30.0 ],
													"id" : "obj-21",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 646.5, 513.0, 60.0, 513.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 621.5, 513.0, 60.0, 513.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 2 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 92.5, 507.0, 60.0, 507.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 76.5, 507.0, 60.0, 507.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 60.5, 507.0, 60.0, 507.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [ 113.0, 85.0, 77.5, 85.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 123.5, 84.0, 621.5, 84.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t open b clear",
									"patching_rect" : [ 60.0, 72.0, 77.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "open", "bang", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "text",
									"patching_rect" : [ 60.0, 198.0, 40.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p get_names_of_modules",
									"patching_rect" : [ 141.0, 123.0, 137.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 831.0, 519.0 ],
																		"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 831.0, 519.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "name jcom.remote.module.from",
													"patching_rect" : [ 215.0, 203.0, 170.0, 16.0 ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "name \"that deaf dumb and blind kid\"",
													"patching_rect" : [ 175.0, 183.0, 193.0, 16.0 ],
													"id" : "obj-2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"patching_rect" : [ 175.0, 408.0, 74.0, 18.0 ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump b /*/module_name/get b clear",
													"patching_rect" : [ 50.0, 50.0, 231.0, 18.0 ],
													"id" : "obj-4",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 5,
													"outlettype" : [ "dump", "bang", "/*/module_name/get", "bang", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "sort -1 -1",
													"patching_rect" : [ 105.0, 259.0, 56.0, 16.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf store %s %s",
													"patching_rect" : [ 175.0, 329.0, 107.0, 18.0 ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"patching_rect" : [ 175.0, 380.0, 53.0, 18.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"save" : [ "#N", "coll", ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /module_name",
													"patching_rect" : [ 175.0, 298.0, 157.0, 18.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /*",
													"patching_rect" : [ 175.0, 273.0, 93.0, 18.0 ],
													"id" : "obj-9",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.receive \"that deaf dumb and blind kid\"",
													"patching_rect" : [ 175.0, 238.0, 228.0, 18.0 ],
													"id" : "obj-10",
													"fontname" : "Verdana",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.send jcom.remote.module.to",
													"linecount" : 2,
													"patching_rect" : [ 174.0, 96.0, 125.0, 30.0 ],
													"id" : "obj-11",
													"fontname" : "Verdana",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 175.0, 430.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Request names of all modules",
													"linecount" : 2,
													"patching_rect" : [ 293.0, 100.0, 88.0, 30.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "coll is used to store names of all modules so that they can be alphabetized.",
													"linecount" : 3,
													"patching_rect" : [ 282.0, 383.0, 145.0, 42.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "This stops jcom.receive from listening if we are not currently requesting the names of all modules.",
													"linecount" : 3,
													"patching_rect" : [ 399.0, 183.0, 210.0, 42.0 ],
													"id" : "obj-16",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845,
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 4 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 271.5, 72.0, 392.0, 72.0, 392.0, 361.0, 184.5, 361.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 360.0, 184.5, 360.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 114.5, 356.0, 184.5, 356.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 3 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [ 184.5, 322.0, 272.5, 322.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 60.0, 28.0, 14.0, 14.0 ],
									"id" : "obj-6",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 127.5, 142.0, 69.5, 142.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "text",
					"patching_rect" : [ 418.0, 296.0, 47.0, 28.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 17.334082,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.filewatcher",
					"patching_rect" : [ 151.0, 140.0, 92.0, 18.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /load_script /get_state /view /cue /save_script /remote",
					"patching_rect" : [ 151.0, 71.0, 545.0, 18.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 53.0, 26.0, 15.0, 15.0 ],
					"id" : "obj-19",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 351.5, 361.0, 320.0, 361.0, 320.0, 294.0, 351.5, 294.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-8", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-8", 3 ],
					"hidden" : 0,
					"midpoints" : [ 441.5, 330.0, 397.5, 330.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 3 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 338.5, 233.0, 427.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 3 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 395.5, 318.0, 415.0, 318.0, 415.0, 294.0, 427.5, 294.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 5 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"midpoints" : [ 598.833313, 102.0, 698.0, 102.0, 698.0, 425.0, 427.5, 425.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [ 516.5, 398.0, 688.0, 398.0, 688.0, 182.0, 483.5, 182.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [ 160.5, 164.0, 629.5, 164.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 160.5, 236.0, 427.5, 236.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 4 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 516.5, 246.0, 427.5, 246.0 ]
				}

			}
 ]
	}

}
