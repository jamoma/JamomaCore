{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 110.0, 122.0, 782.0, 674.0 ],
		"bglocked" : 0,
		"defrect" : [ 110.0, 122.0, 782.0, 674.0 ],
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
					"text" : "print --init",
					"fontname" : "Verdana",
					"id" : "obj-21",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 380.0, 67.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 340.0, 59.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p listen",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 53.0, 442.0, 45.0, 18.0 ],
					"numoutlets" : 1,
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
									"fontname" : "Verdana",
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 303.0, 73.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "We can not actually use jcom.return here, as it would produce a feedback loop, talking to itself.",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 272.0, 484.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "name jcom.remote.module.from",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 80.0, 86.0, 170.0, 16.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "name \"that deaf dumb and blind kid\"",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 95.0, 108.0, 193.0, 16.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 52.0, 42.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /remote",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 193.0, 93.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return remote @description \"Reports all changes of values in all modules\"",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 106.0, 244.0, 403.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.receive \"that deaf dumb and blind kid\"",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 150.0, 228.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if we are not listening, jcom.receive is set to another argument to save cpu",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-9",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 123.0, 50.0, 201.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"numinlets" : 0,
									"patching_rect" : [ 80.0, 32.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-11",
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 245.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 89.5, 221.0, 72.5, 221.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-2",
					"numinlets" : 1,
					"patching_rect" : [ 53.0, 596.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route read",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"color" : [ 0.4, 0.4, 0.8, 1.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 620.0, 196.0, 60.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- events are sent remotely to the target parameter in the target module.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 581.0, 436.0, 202.0, 30.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.send jcom.remote.module.to",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 418.0, 433.0, 180.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p trigger_cue",
					"outlettype" : [ "", "bang" ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 418.0, 192.0, 75.0, 18.0 ],
					"numoutlets" : 2,
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
									"fontname" : "Verdana",
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 309.0, 234.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If a new cue is triggered, we have to make sure that any current cue on WAIT is cancelled.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 280.0, 245.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "WAIT (pause/resume)",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 32.0, 135.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "WAIT will cause uzi to pause and resume",
									"fontname" : "Verdana",
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 125.0, 213.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s b",
									"outlettype" : [ "", "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 60.0, 240.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend line",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 258.0, 70.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1+$i2-1",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 80.0, 229.0, 83.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 196.0, 40.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 121.0, 81.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i2-$i1+1",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 50.0, 166.0, 83.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #0_cues 1",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"fontsize" : 17.334082,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 86.0, 140.0, 28.0 ],
									"numoutlets" : 4,
									"save" : [ "#N", "coll", "$0_cues", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "pause" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"patching_rect" : [ 303.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-14",
									"numinlets" : 1,
									"patching_rect" : [ 80.0, 280.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-15",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 278.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use Uzi to dump the lines of the script that belong to the desired cue.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-16",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 81.0, 193.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Cue that we want to trigger",
									"fontname" : "Verdana",
									"id" : "obj-17",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 68.0, 32.0, 146.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "poll lines from [text]",
									"fontname" : "Verdana",
									"id" : "obj-18",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 79.0, 303.0, 118.0, 18.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-15", 0 ],
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
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-10", 1 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
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
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return cues @type msg_symbol \"When a new cue script is loaded, all cues are dumped one ata time. The symbols ---START and ---END indicates the start and end of the list of cues.\"",
					"linecount" : 3,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 393.0, 491.0, 336.0, 42.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p find_cues",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"fontsize" : 9.873845,
					"numinlets" : 4,
					"patching_rect" : [ 342.0, 338.0, 65.0, 18.0 ],
					"numoutlets" : 2,
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
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 30.0, 565.0, 59.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "---END",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 30.0, 287.0, 43.0, 16.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "---START",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 122.0, 287.0, 56.0, 16.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b",
									"outlettype" : [ "bang", "bang", "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 30.0, 256.0, 103.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 111.0, 540.0, 74.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "sort 1 -1, dump",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 76.0, 323.0, 54.0, 28.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 s",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 111.0, 480.0, 76.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter",
									"outlettype" : [ "int", "", "", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"fontsize" : 9.873845,
									"numinlets" : 5,
									"patching_rect" : [ 111.0, 449.0, 66.0, 18.0 ],
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 111.0, 418.0, 76.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 111.0, 511.0, 53.0, 18.0 ],
									"numoutlets" : 4,
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
									"fontname" : "Verdana",
									"id" : "obj-11",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 30.0, 589.0, 87.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-",
									"fontname" : "Verdana",
									"id" : "obj-12",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 642.0, 205.0, 29.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "->",
									"fontname" : "Verdana",
									"id" : "obj-13",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 340.0, 461.0, 29.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 361.0, 202.0, 51.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "internally store cue names and what line they start and end at",
									"linecount" : 6,
									"fontname" : "Verdana",
									"id" : "obj-15",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 269.0, 459.0, 67.0, 78.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "return list of cues",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-16",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 745.0, 610.0, 77.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang when new text file has been read",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-17",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 745.0, 101.0, 113.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "connect to text inlet",
									"fontname" : "Verdana",
									"id" : "obj-18",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 513.0, 117.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- the names of all cues.",
									"fontname" : "Verdana",
									"id" : "obj-19",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 235.0, 40.0, 413.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- what line they start and end at.",
									"fontname" : "Verdana",
									"id" : "obj-20",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 235.0, 53.0, 412.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-21",
									"numinlets" : 1,
									"patching_rect" : [ 745.0, 589.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "grab from text",
									"fontname" : "Verdana",
									"id" : "obj-22",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 500.0, 100.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "text outlet 3",
									"fontname" : "Verdana",
									"id" : "obj-23",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 540.0, 109.0, 100.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "text outlet 2",
									"fontname" : "Verdana",
									"id" : "obj-24",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 461.0, 109.0, 100.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "bang" ],
									"id" : "obj-25",
									"numinlets" : 0,
									"patching_rect" : [ 745.0, 136.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-26",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 407.0, 260.0, 22.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 407.0, 305.0, 27.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-28",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 572.0, 252.0, 27.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 401.0, 380.0, 27.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack s 0 0",
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-30",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 373.0, 358.0, 72.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i2-$i1+1",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-31",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 572.0, 202.0, 83.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i i",
									"outlettype" : [ "int", "int", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-32",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 542.0, 161.0, 105.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #0_cues 1",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-33",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 361.0, 457.0, 81.0, 18.0 ],
									"numoutlets" : 4,
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
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-34",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 361.0, 416.0, 78.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-35",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 361.0, 158.0, 53.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack s 0 0",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-36",
									"fontsize" : 9.873845,
									"numinlets" : 3,
									"patching_rect" : [ 361.0, 333.0, 60.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route CUE",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-37",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 361.0, 180.0, 59.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend line",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-38",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 572.0, 414.0, 70.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-39",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 542.0, 182.0, 40.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t query 0 clear",
									"outlettype" : [ "query", "int", "clear" ],
									"fontname" : "Verdana",
									"id" : "obj-40",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 487.0, 417.0, 81.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-41",
									"numinlets" : 0,
									"patching_rect" : [ 542.0, 136.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-42",
									"numinlets" : 0,
									"patching_rect" : [ 463.0, 136.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-43",
									"numinlets" : 0,
									"patching_rect" : [ 361.0, 136.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-44",
									"numinlets" : 1,
									"patching_rect" : [ 487.0, 502.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "text outlet 1",
									"fontname" : "Verdana",
									"id" : "obj-45",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 359.0, 109.0, 100.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "When the cue script is loaded, it is scanned by this subpatch in order to get:",
									"fontname" : "Verdana",
									"id" : "obj-46",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 235.0, 27.0, 414.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-------- connect to text outlets --------",
									"fontname" : "Verdana",
									"id" : "obj-47",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 367.0, 90.0, 238.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the text file is scanned from end to beginning",
									"linecount" : 3,
									"fontname" : "Verdana",
									"id" : "obj-48",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 664.0, 197.0, 92.0, 42.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "discard comments -->",
									"fontname" : "Verdana",
									"id" : "obj-49",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 205.0, 119.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "List of cues are reversed before being dumped (as the cuescript file has been scanned in reverse order).",
									"linecount" : 3,
									"fontname" : "Verdana",
									"id" : "obj-50",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 30.0, 610.0, 216.0, 42.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-31", 1 ],
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
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-28", 0 ],
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
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 581.5, 477.0, 496.0, 477.0 ]
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
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 754.0, 383.0, 496.5, 383.0 ]
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
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 410.5, 402.0, 450.0, 402.0, 450.0, 300.0, 424.5, 300.0 ]
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
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
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
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-29", 0 ],
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
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-40", 2 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [ 558.5, 451.0, 370.5, 451.0 ]
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-36", 0 ],
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
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-37", 0 ],
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
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-7", 1 ],
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
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-40", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"midpoints" : [ 558.5, 448.0, 211.0, 448.0, 211.0, 503.0, 120.5, 503.0 ]
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 562.0, 242.0, 39.5, 242.0 ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 585.0, 754.0, 585.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "grab 3",
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 342.0, 298.0, 63.0, 18.0 ],
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p cue_gate",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 418.0, 341.0, 64.0, 18.0 ],
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 468.0, 122.0, 785.0, 446.0 ],
						"bglocked" : 0,
						"defrect" : [ 468.0, 122.0, 785.0, 446.0 ],
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
									"outlettype" : [ "bang", "" ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 75.0, 53.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "fromsymbol",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 295.0, 325.0, 68.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 267.0, 303.0, 41.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 314.0, 275.0, 29.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 1",
									"outlettype" : [ "int" ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 314.0, 253.0, 35.0, 19.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l l",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 289.0, 206.0, 27.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl len",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 314.0, 231.0, 35.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp #.*",
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 255.0, 175.0, 68.0, 19.0 ],
									"numoutlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (.*)#.*",
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 240.0, 105.0, 84.0, 19.0 ],
									"numoutlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "filter out comments (text starting with a #)",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 365.0, 140.0, 228.0, 19.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp #.*",
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 290.0, 140.0, 68.0, 19.0 ],
									"numoutlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 205.0, 50.0, 54.0, 19.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route bang CUE",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 267.0, 355.0, 88.0, 19.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"patching_rect" : [ 205.0, 6.0, 24.0, 24.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-14",
									"numinlets" : 1,
									"patching_rect" : [ 335.0, 380.0, 24.0, 24.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "from text",
									"fontname" : "Verdana",
									"id" : "obj-15",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 230.0, 5.0, 100.0, 19.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All lines from text starts of with \"set\", so we have to get rid of that",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-16",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 8.0, 78.0, 189.0, 31.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-7", 3 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p WAIT_or_pass_on",
					"outlettype" : [ "", "pause" ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 418.0, 373.0, 108.0, 18.0 ],
					"numoutlets" : 2,
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
									"fontname" : "Verdana",
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 97.0, 300.0, 85.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t stop",
									"outlettype" : [ "stop" ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 397.0, 129.0, 37.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t resume",
									"linecount" : 2,
									"outlettype" : [ "resume" ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 237.0, 45.0, 30.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "defer",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 214.0, 34.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 0",
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patching_rect" : [ 210.0, 192.0, 33.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i pause",
									"outlettype" : [ "bang", "int", "pause" ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 160.0, 61.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route WAIT",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 118.0, 98.0, 18.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"numinlets" : 0,
									"patching_rect" : [ 210.0, 65.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "bang" ],
									"id" : "obj-9",
									"numinlets" : 0,
									"patching_rect" : [ 397.0, 84.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"patching_rect" : [ 78.0, 300.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-11",
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 300.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If a WAIT message is received, uzi is paused for a while. Other messages are passed through to the right outlet.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-12",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 207.0, 34.0, 293.0, 30.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to uzi",
									"fontname" : "Verdana",
									"id" : "obj-13",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 227.0, 300.0, 36.0, 18.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If a new cue is triggered, we have to make sure that the previous one is cancelled.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"id" : "obj-14",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 421.0, 83.0, 232.0, 30.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 261.5, 282.0, 219.0, 282.0 ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 406.5, 187.0, 219.5, 187.0 ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 298.5, 147.0, 87.0, 147.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.filesaver TEXT",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"patching_rect" : [ 507.0, 223.0, 109.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /listen",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 53.0, 47.0, 113.0, 18.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"outlettype" : [ "open" ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 329.0, 106.0, 40.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p get_state",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 240.0, 106.0, 65.0, 18.0 ],
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
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 116.0, 51.0, 18.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p get_parameter_values",
									"outlettype" : [ "cr" ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 141.0, 145.0, 130.0, 18.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 327.0, 1001.0, 608.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 327.0, 1001.0, 608.0 ],
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
													"outlettype" : [ "bang", "", "bang" ],
													"fontname" : "Verdana",
													"id" : "obj-1",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 93.0, 102.0, 40.0, 18.0 ],
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "This stops jcom.receive from listening if we are not currently requesting the names of all modules.",
													"linecount" : 3,
													"fontname" : "Verdana",
													"id" : "obj-2",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 286.0, 196.0, 210.0, 42.0 ],
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "name jcom.remote.module.from",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-3",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 123.0, 217.0, 170.0, 16.0 ],
													"numoutlets" : 1,
													"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "name \"that deaf dumb and blind kid\"",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-4",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 93.0, 198.0, 193.0, 16.0 ],
													"numoutlets" : 1,
													"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t cr l tab",
													"outlettype" : [ "cr", "", "tab" ],
													"fontname" : "Verdana",
													"id" : "obj-5",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 51.0, 469.0, 51.0, 18.0 ],
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-6",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 51.0, 437.0, 113.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-7",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 113.0, 369.0, 51.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s%s",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-8",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 51.0, 409.0, 75.0, 18.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"outlettype" : [ "bang", "" ],
													"fontname" : "Verdana",
													"id" : "obj-9",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 93.0, 340.0, 28.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t cr s",
													"outlettype" : [ "cr", "" ],
													"fontname" : "Verdana",
													"id" : "obj-10",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 612.0, 159.0, 35.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s s",
													"outlettype" : [ "", "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-11",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 93.0, 50.0, 40.0, 18.0 ],
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-12",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 51.0, 376.0, 36.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /parameter_value",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-13",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 93.0, 312.0, 171.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend # Module",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-14",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 637.0, 184.0, 100.0, 18.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.receive \"that deaf dumb and blind kid\"",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-15",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 93.0, 243.0, 228.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /*",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-16",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 93.0, 283.0, 93.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.send jcom.remote.module.to",
													"linecount" : 2,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-17",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 108.0, 154.0, 125.0, 30.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s/parameter_values:/dump",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-18",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 108.0, 128.0, 193.0, 18.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"numinlets" : 0,
													"patching_rect" : [ 93.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-20",
													"numinlets" : 1,
													"patching_rect" : [ 51.0, 529.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "This part introduce a comment to mark the beginning of a new module",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-21",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 625.0, 126.0, 192.0, 30.0 ],
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [ 											{
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
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-14", 0 ],
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
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-6", 1 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 1 ],
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
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-16", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-15", 0 ],
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
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [ 113.0, 85.0, 77.5, 85.0 ]
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
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 76.5, 507.0, 60.0, 507.0 ]
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
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 621.5, 513.0, 60.0, 513.0 ]
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t open b clear",
									"outlettype" : [ "open", "bang", "clear" ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 72.0, 77.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "text",
									"outlettype" : [ "", "bang", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 198.0, 40.0, 18.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p get_names_of_modules",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patching_rect" : [ 141.0, 123.0, 137.0, 18.0 ],
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 11.0, 191.0, 831.0, 519.0 ],
										"bglocked" : 0,
										"defrect" : [ 11.0, 191.0, 831.0, 519.0 ],
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
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-1",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 215.0, 203.0, 170.0, 16.0 ],
													"numoutlets" : 1,
													"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "name \"that deaf dumb and blind kid\"",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-2",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 175.0, 183.0, 193.0, 16.0 ],
													"numoutlets" : 1,
													"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route symbol",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-3",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 175.0, 408.0, 74.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t dump b /*/module_name:/get b clear",
													"outlettype" : [ "dump", "bang", "/*/module_name:/get", "bang", "clear" ],
													"fontname" : "Verdana",
													"id" : "obj-4",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 50.0, 207.0, 18.0 ],
													"numoutlets" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "sort -1 -1",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-5",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 105.0, 259.0, 56.0, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf store %s %s",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-6",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patching_rect" : [ 175.0, 329.0, 107.0, 18.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"outlettype" : [ "", "", "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-7",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 175.0, 380.0, 53.0, 18.0 ],
													"numoutlets" : 4,
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
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-8",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 175.0, 298.0, 157.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /*",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-9",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 175.0, 273.0, 93.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.receive \"that deaf dumb and blind kid\"",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"id" : "obj-10",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 175.0, 238.0, 228.0, 18.0 ],
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.send jcom.remote.module.to",
													"linecount" : 2,
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"id" : "obj-11",
													"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 174.0, 96.0, 125.0, 30.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "bang" ],
													"id" : "obj-12",
													"numinlets" : 0,
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-13",
													"numinlets" : 1,
													"patching_rect" : [ 175.0, 430.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Request names of all modules",
													"linecount" : 2,
													"fontname" : "Verdana",
													"id" : "obj-14",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 293.0, 100.0, 88.0, 30.0 ],
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "coll is used to store names of all modules so that they can be alphabetized.",
													"linecount" : 3,
													"fontname" : "Verdana",
													"id" : "obj-15",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 282.0, 383.0, 145.0, 42.0 ],
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "This stops jcom.receive from listening if we are not currently requesting the names of all modules.",
													"linecount" : 3,
													"fontname" : "Verdana",
													"id" : "obj-16",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patching_rect" : [ 399.0, 183.0, 210.0, 42.0 ],
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
													"source" : [ "obj-4", 4 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 247.5, 72.0, 392.0, 72.0, 392.0, 361.0, 184.5, 361.0 ]
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-3", 0 ],
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
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-10", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"patching_rect" : [ 60.0, 28.0, 14.0, 14.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 127.5, 142.0, 69.5, 142.0 ]
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "text",
					"outlettype" : [ "", "bang", "int" ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"patching_rect" : [ 418.0, 296.0, 47.0, 28.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.filewatcher",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 151.0, 140.0, 92.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /load_script /get_state /view /cue /save_script /remote",
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"patching_rect" : [ 151.0, 71.0, 545.0, 18.0 ],
					"numoutlets" : 7
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"numinlets" : 0,
					"patching_rect" : [ 53.0, 26.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"comment" : ""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"color" : [ 0.6, 0.6, 1.0, 1.0 ],
					"midpoints" : [  ]
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
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 160.5, 236.0, 427.5, 236.0 ]
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
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-18", 5 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"midpoints" : [ 598.833313, 102.0, 698.0, 102.0, 698.0, 425.0, 427.5, 425.0 ]
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 338.5, 233.0, 427.5, 233.0 ]
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
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-8", 2 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-18", 2 ],
					"destination" : [ "obj-14", 0 ],
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
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-18", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
