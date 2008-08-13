{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 100.0, 100.0, 1087.0, 778.0 ],
		"bglocked" : 0,
		"defrect" : [ 100.0, 100.0, 1087.0, 778.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.message audio/meters/clear @type msg_none @description \"clear the audio meters\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 2,
					"id" : "obj-1",
					"fontsize" : 9.0,
					"patching_rect" : [ 433.0, 664.0, 229.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.parameter source/orientation/elevation @type msg_float @range/bounds 0. 90. @description \"orientation of the sound source (elevation)\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 2,
					"id" : "obj-2",
					"fontsize" : 9.0,
					"patching_rect" : [ 673.0, 675.0, 333.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p midi2a",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-3",
					"fontsize" : 9.0,
					"patching_rect" : [ 459.0, 105.0, 48.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 50.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.miditoa",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 51.0, 71.0, 68.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-3",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-4",
									"patching_rect" : [ 51.0, 93.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.atomidi",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patching_rect" : [ 456.0, 84.0, 68.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "room/reflection/2/gain",
					"text" : "jcom.parameter.gain room/reflection/2/gain @repetitions/allow 0 @description \"gain of the early reflections 2nd order\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-5",
					"fontsize" : 9.0,
					"patching_rect" : [ 526.0, 83.0, 282.0, 27.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"args" : [ 0.0, 0.0, 1.0, "@size", 100, 12, "@text", "2nd-order", "refl." ],
					"numinlets" : 1,
					"id" : "obj-6",
					"patching_rect" : [ 153.0, 46.0, 100.0, 12.0 ],
					"numoutlets" : 1,
					"border" : 1,
					"name" : "jcom.textslider.maxpat",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar warning",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-7",
					"fontsize" : 9.0,
					"patching_rect" : [ 596.0, 611.0, 70.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "warning[1]",
					"text" : "jcom.parameter warning @type msg_int @range/bounds 0 1 @range/clipmode both @description \"turn on/off the printing of ViMiC's warning messages\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-8",
					"fontsize" : 9.0,
					"patching_rect" : [ 669.0, 605.0, 325.0, 27.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "warnings on/off",
					"numinlets" : 1,
					"id" : "obj-9",
					"patching_rect" : [ 152.0, 3.0, 13.0, 12.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "report on/off",
					"numinlets" : 1,
					"id" : "obj-10",
					"patching_rect" : [ 167.0, 3.0, 13.0, 12.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "warning",
					"numinlets" : 1,
					"id" : "obj-11",
					"patching_rect" : [ 154.0, 3.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar posD",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-12",
					"fontsize" : 9.0,
					"patching_rect" : [ 880.0, 210.0, 55.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar posE",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-13",
					"fontsize" : 9.0,
					"patching_rect" : [ 767.0, 210.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar posA",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-14",
					"fontsize" : 9.0,
					"patching_rect" : [ 654.0, 210.0, 56.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "update",
					"text" : "jcom.message update @type msg_none @description \"updates ViMiC manually (e.g. through an external clock), rather than automatically each time set with /updaterate\"",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-15",
					"fontsize" : 9.0,
					"patching_rect" : [ 584.0, 537.0, 782.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p midi2a",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-16",
					"fontsize" : 9.0,
					"patching_rect" : [ 470.0, 25.0, 48.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 50.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.miditoa",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 51.0, 71.0, 68.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-3",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-4",
									"patching_rect" : [ 51.0, 93.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.atomidi",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-17",
					"fontsize" : 9.0,
					"patching_rect" : [ 449.0, 6.0, 68.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p midi2a",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-18",
					"fontsize" : 9.0,
					"patching_rect" : [ 470.0, 63.0, 48.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 50.0, 50.0, 51.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.miditoa",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 51.0, 71.0, 68.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-3",
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-4",
									"patching_rect" : [ 51.0, 93.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-2", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.atomidi",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-19",
					"fontsize" : 9.0,
					"patching_rect" : [ 453.0, 45.0, 68.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"hidden" : 1,
					"numinlets" : 2,
					"id" : "obj-20",
					"fontsize" : 9.0,
					"patching_rect" : [ 157.0, 280.0, 30.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p algorithm_control~",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-21",
					"fontsize" : 9.0,
					"patching_rect" : [ 298.0, 280.0, 105.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 605.0, 157.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 605.0, 157.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/rendermode mute",
									"numinlets" : 2,
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ -8.0, 168.0, 90.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 79.0, 129.0, 41.0, 17.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/rendermode unmute",
									"numinlets" : 2,
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 84.0, 168.0, 104.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /audio/mute",
									"numinlets" : 1,
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 198.0, 54.0, 134.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"numinlets" : 2,
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 198.0, 81.0, 31.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enable $1 1",
									"numinlets" : 2,
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 198.0, 127.0, 62.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.pass open",
									"numinlets" : 1,
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 116.0, 54.0, 78.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-8",
									"patching_rect" : [ 84.0, 226.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-9",
									"patching_rect" : [ 198.0, 161.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-10",
									"patching_rect" : [ 116.0, 33.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : "Connect to 2nd last outlet of jcom.in~"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 322.5, 190.0, 93.0, 190.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1.5, 190.0, 93.0, 190.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "ViMiC render method",
					"numinlets" : 1,
					"id" : "obj-22",
					"patching_rect" : [ 43.0, 26.0, 60.0, 14.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar order 2",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-23",
					"fontsize" : 9.0,
					"patching_rect" : [ 610.0, 501.0, 68.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "room/reflection/order",
					"text" : "jcom.parameter room/reflection/order @type msg_int @range/bounds 0 2 @repetitions/allow 0 @priority 300 @range/clipmode both @description \"order of early reflections\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-24",
					"fontsize" : 9.0,
					"patching_rect" : [ 685.0, 494.0, 377.0, 27.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "order",
					"numinlets" : 1,
					"id" : "obj-25",
					"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"fontsize" : 9.0,
					"types" : [  ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"patching_rect" : [ 128.0, 24.0, 22.0, 17.0 ],
					"numoutlets" : 3,
					"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"arrow" : 0,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
					"arrowlink" : 1,
					"fontname" : "Arial",
					"items" : [ 0, ",", 1, ",", 2 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"hidden" : 1,
					"numinlets" : 3,
					"id" : "obj-26",
					"fontsize" : 9.0,
					"patching_rect" : [ 157.0, 333.0, 67.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"color" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 353.0, 44.0, 536.0, 688.0 ],
						"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 353.0, 44.0, 536.0, 688.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "temp",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 375.0, 595.0, 28.0, 17.0 ],
									"minimum" : -20.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 40.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Microphone Polarity",
									"numinlets" : 1,
									"id" : "obj-2",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 303.0, 628.0, 97.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "rendermode/normalization/active[1]",
									"text" : "jcom.parameter microphones/polarity @type msg_toggle @repetitions/allow 0 @description \"when unchecked, the polarity of all microphones is restricted - so all gain values are between 0 and 1, rather that between -1 and 1\"",
									"linecount" : 3,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 726.0, 964.0, 359.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar polarity_toggle",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 726.0, 944.0, 103.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "polarity_toggle",
									"numinlets" : 1,
									"id" : "obj-5",
									"patching_rect" : [ 289.0, 626.0, 42.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 1 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar dir_editor",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 464.0, 909.0, 107.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "report_all[1]",
									"text" : "jcom.message open_directivity_editor @type msg_none @description \"opens the directiviy editor\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 464.0, 928.0, 249.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "patcher ViMiC",
									"numinlets" : 2,
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 116.0, 836.0, 73.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://www.cirmmt.mcgill.ca",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-9",
									"fontsize" : 9.0,
									"patching_rect" : [ 22.0, 709.0, 236.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"embed" : 1,
									"id" : "obj-10",
									"patching_rect" : [ 464.0, 611.0, 67.0, 44.0 ],
									"numoutlets" : 0,
									"data" : [ 2295, "png", "IBkSG0fBZn....PCIgDQRA...PD....KHX.....2z5Qg....DLmPIQEBHf.B7g.YHB..H3ZRDEDUnEX6Z0GRS81F9x0V9wTIcoVMz.iLapTSWgoIkZ+LzTp.0JsLJSScJYJ9GE8GRA8gHV4rTKwLAEojvY3mIYkI8GkMmxL0L+.CMa9EVN+1m2+H1d+cZS2TmKdeoK3.a64995b+bctO2myy8yPHgDBA.Z8iDRHgUEdiKt3HLXvXUg6BJn.BM7WPAz0XCoSGrYyFFXfAX3gGFRkJc0Lt9iA0JH96u+H5niF6e+6GFYjQJ9895qOHTnPHPf.7oO8okc.3pqtBu81a7rm8rUDO..AETPvN6rSw2IDBFYjQv6d26PiM1nlQxBUCgEKVjm+7mSjid6sWRIkTBI+7ymTc0USFYjQHDBgL8zSS3ym+xtFRhIlHgPHjfBJnUbMjRJoDhpvbyMG41291ZTMDUlgXt4liZqsV3jSNgN5nCjXhIhxKubL6rypvFiLxHbxSdRb8qecviGOMS80QXKaYKXrwFCFarwfGOd3l27lH93iGUVYknpppZQ8UkEUyKu7fSN4Dpu95wt10tPokVJEw..PlLY3AO3AfGOdn0VaU6MazBXngFBCN3fn6t6FEWbwH5niF..AGbvp0WkDDe80WDP.Afu+8ui.CLPL5nitnDzc2ciacqasLCccCZokV...a1rUqsJIHm6bmC..olZp3ae6aZ4P6OCrzRKA.vXiMlZsUIAwCO7...O8oOUKGV5Nnmd5o3yN3fCH0TSE..kWd4p0WJEUMyLy.KVrvO+4OQ2c2s1MJ0gnyN6DDBAlXhIfACFfPHH2byE4kWdp0WJYHznQCznQCSO8zqVwpNAhDIBlat4ngFZ.gGd3vQGcDgGd3ZjuTDjImbRL4jSBSM0TXfAFrpDr5Bb5SeZzRKs.mc1YzYmcpnnpl.JBx3iONZqs1.c5zg6t6tVOP0U3G+3GH3fCFSO8znnhJBadyaVi8UohpxKldgKbAsWD9G.RjHAQEUTvRKsDEWbwTV1whAkDjLyLSHUpT3u+9inhJJMhj8rm8rzhVcDJnfBPVYkE3wiGxJqrzHeTRPFd3gQDQDAle94g.ABPRIkzB5rwFaLxImbPDQDwxOpWkQBIj.d+6eON0oNEhO93Uq8p7U2EJTHBKrvvLyLCRIkTPyM2Lt3EuHbyM2v1291gWd4Et5UuJZu81Q3gGNle9405SDsElbxIwwN1wvPCMDRIkTvANvAVT6Wvk+WXgEBIRjfzRKM3omdhzRKMkrQlLY3d26dH4jSdYGvRjHAO9wOF8zSOKaNjiZqsVL5nipzqMzUWcgPBIDDRHgfCdvChW8pWozZyjiEseHhEKFd6s2vAGb.93iOvN6rCFXfAPpToPjHQn5pqFCMzPqnIQkUVIprxJWQbHG28t2cAGq5pqFUWc0pkCMpiYRjHARjHQyir+GF+smp+Fn6me9gMrgMn0Ide6aeZcNA.16d2KzWe8WUJjau81uvsPbkd72sg3+SfJEDVrXowDXgEVrjNgZp8FZngvXiMdIws1.pTP7xKufe94mZc1TSMEW4JWYIcBu10tFzWe8UqcAETPX26d2KItqs1ZQas0lZOhLxHWPNTof3hKtfXiMV0F.gEVXvSO8bIEzADP.3nG8np0tXiMV3ryNuj31PCMDLYxTwAa1rgc1YGLyLyn76LXvXgIQUEUqpppHyN6rD6rytEsHjDIRHSM0TDlLYpQEUYylMYt4li71291EkWWc0Ux7yOOofBJXEUTM6rylPHDhat41Jqn5N1wNvZVyZTz9dUg+4e9GvgCGr10tV3fCNrvJ9uwKMZzfat41hd0mOe9PO8zaImg76fPHKYeTRPrwFafUVYE.90sDlXhIpzQ974q3yZZfK2N8zSODSLwnRarxJqPfAFH.90FNst0sNMhasETRP3xkK..dwKdAL2byQngFpRNYqs1hCcnCgZpoF.n4BBWtbwjSNIpqt5vINwIv5W+5UxlHhHBXfAFfZpoFvfACMN6SaAkDDWbwE..jbxIiu90uRISPNhJpn.MZzvktzkfToR0XAwEWbAe4KeA23F2.FYjQ3rm8rTFmACFHxHiDhEKVwB0jGO5JnxLjYlYFHRjHjc1YCGczQJOIQ9Do95qGe3Ce.M0TSvd6sGFZngK5IhEKVvFarAhEKFUTQEn0VaEm+7mmRE+ibji.qs1ZjQFY.whECBgnHiUWAUJHs0VaXhIl.O7gODSLwDTdD7wO9wAKVrP5omN.9UKBXxjI11111hdh3xkKzSO8fXwhA.PFYjAr0Vagu95qBa3ymOFbvAQgEVH5s2dw2+92WwEVWpfhfroMsIrwMtQEA8.CL.JpnhP.ADfhNWymOezSO8.gBEB.n3+cg5RskOwjae94mOFczQQbwEG.90Sf7vCOPN4jCjISF..Zt4lAGNbTa1m1DTDjctycBZznoPP..DHP.nSmNhLxHg6t6Nb1YmQlYlIlYlY.v+cBptTamc1YPHDzTSMAfesUAO5QOBd5omfCGNHlXhAyN6rTZFbiM1HnSmNbxImzNyVM.TDD4Sp+sfHRjH7l27FDd3gijRJIHSlLjSN4nX71aucHSlL0lZykKWze+8SYCzu+8uOHDBt7kuLBMzPgPgBozJQ4hst71FJBhKt3Ble94QyM2LEiRO8zgUVYEN7gOLJrvBoz1volZJzZqsBGczwE7UhMyLyfs1ZqR71QGcfxJqLDZngBlLYBABDPYb4WX9iIHb4xECLv.n+96mhQkVZonqt5RwVS76nwFaDlXhIXqacqp7j3jSNA5zoqx+mWxKN2PCMf5pqNJi84O+YL93iqSeRiBAwBKr.Vas0TtcQNlc1YQlYlId8qeshZ.+antBqxuBqJte4KeIZpolPFYjgRiIO6iCGN5r8ZVQSlmXhIfO93C5qu9Tog4latpbBA.TTQEAIRjfN6rSUNdYkUFZpolvG+3GU43ImbxnhJpPkiclybFXgEVrrVWxctycvSdxSVZMH+usP7usPbQw+Af0b5pN6ycc8.....jTQNQjqBAlf" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "dirPow",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-11",
									"fontsize" : 9.0,
									"patching_rect" : [ 399.0, 480.0, 27.0, 17.0 ],
									"minimum" : 0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 8,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"numinlets" : 2,
									"id" : "obj-12",
									"fontsize" : 9.0,
									"patching_rect" : [ 1812.0, 684.0, 80.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 500 3500",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 50.0, 73.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 500 3500",
													"numinlets" : 1,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 90.0, 88.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 70.0, 40.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 113.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 128.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/ceiling/mid_high_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"mid-high crossover frequencies for the ceiling filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-13",
									"fontsize" : 9.0,
									"patching_rect" : [ 1720.0, 707.0, 643.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/ceiling/low_mid_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"low-mid crossover frequencies for the ceiling wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-14",
									"fontsize" : 9.0,
									"patching_rect" : [ 1721.0, 651.0, 646.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ceil_hf",
									"numinlets" : 1,
									"id" : "obj-15",
									"fontsize" : 9.0,
									"patching_rect" : [ 1720.0, 740.0, 65.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ceil_lf",
									"numinlets" : 1,
									"id" : "obj-16",
									"fontsize" : 9.0,
									"patching_rect" : [ 1720.0, 684.0, 63.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"numinlets" : 2,
									"id" : "obj-17",
									"fontsize" : 9.0,
									"patching_rect" : [ 1816.0, 547.0, 80.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 500 3500",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 50.0, 73.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 500 3500",
													"numinlets" : 1,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 90.0, 88.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 70.0, 40.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 113.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 128.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/floor/mid_high_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"mid-high crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-18",
									"fontsize" : 9.0,
									"patching_rect" : [ 1724.0, 570.0, 637.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/floor/low_mid_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"low-mid crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-19",
									"fontsize" : 9.0,
									"patching_rect" : [ 1725.0, 514.0, 638.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar floor_hf",
									"numinlets" : 1,
									"id" : "obj-20",
									"fontsize" : 9.0,
									"patching_rect" : [ 1724.0, 603.0, 71.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar floor_lf",
									"numinlets" : 1,
									"id" : "obj-21",
									"fontsize" : 9.0,
									"patching_rect" : [ 1725.0, 547.0, 69.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"numinlets" : 2,
									"id" : "obj-22",
									"fontsize" : 9.0,
									"patching_rect" : [ 1815.0, 408.0, 80.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 500 3500",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 50.0, 73.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 500 3500",
													"numinlets" : 1,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 90.0, 88.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 70.0, 40.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 113.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 128.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/right/mid_high_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"mid-high crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-23",
									"fontsize" : 9.0,
									"patching_rect" : [ 1725.0, 437.0, 638.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/right/low_mid_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"low-mid crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-24",
									"fontsize" : 9.0,
									"patching_rect" : [ 1725.0, 375.0, 563.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar right_hf",
									"numinlets" : 1,
									"id" : "obj-25",
									"fontsize" : 9.0,
									"patching_rect" : [ 1725.0, 470.0, 71.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar right_lf",
									"numinlets" : 1,
									"id" : "obj-26",
									"fontsize" : 9.0,
									"patching_rect" : [ 1725.0, 408.0, 69.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"numinlets" : 2,
									"id" : "obj-27",
									"fontsize" : 9.0,
									"patching_rect" : [ 1814.0, 265.0, 80.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 500 3500",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 50.0, 73.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 500 3500",
													"numinlets" : 1,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 90.0, 88.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 70.0, 40.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 113.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 128.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/left/mid_high_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"mid-high crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-28",
									"fontsize" : 9.0,
									"patching_rect" : [ 1724.0, 294.0, 616.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/left/low_mid_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"low-mid crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-29",
									"fontsize" : 9.0,
									"patching_rect" : [ 1723.0, 232.0, 569.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar left_hf",
									"numinlets" : 1,
									"id" : "obj-30",
									"fontsize" : 9.0,
									"patching_rect" : [ 1724.0, 327.0, 65.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar left_lf",
									"numinlets" : 1,
									"id" : "obj-31",
									"fontsize" : 9.0,
									"patching_rect" : [ 1724.0, 265.0, 63.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"numinlets" : 2,
									"id" : "obj-32",
									"fontsize" : 9.0,
									"patching_rect" : [ 1813.0, 132.0, 80.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 500 3500",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 50.0, 73.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 500 3500",
													"numinlets" : 1,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 90.0, 88.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 70.0, 40.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 113.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 128.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/rear/mid_high_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"mid-high crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-33",
									"fontsize" : 9.0,
									"patching_rect" : [ 1723.0, 161.0, 600.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/rear/low_mid_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"low-mid crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-34",
									"fontsize" : 9.0,
									"patching_rect" : [ 1722.0, 99.0, 603.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar rear_hf",
									"numinlets" : 1,
									"id" : "obj-35",
									"fontsize" : 9.0,
									"patching_rect" : [ 1723.0, 194.0, 69.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar rear_lf",
									"numinlets" : 1,
									"id" : "obj-36",
									"fontsize" : 9.0,
									"patching_rect" : [ 1723.0, 132.0, 67.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p",
									"numinlets" : 2,
									"id" : "obj-37",
									"fontsize" : 9.0,
									"patching_rect" : [ 1817.0, 6.0, 80.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 500 3500",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 50.0, 73.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 500 3500",
													"numinlets" : 1,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 90.0, 88.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl sort",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 70.0, 40.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 113.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 128.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/front/mid_high_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \" mid-high crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-38",
									"fontsize" : 9.0,
									"patching_rect" : [ 1727.0, 35.0, 614.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/front/low_mid_frequency @type msg_int @repetitions/allow 1 @range/bounds 10 9999 @range/clipmode both @description \"low-mid  crossover frequencies for the front wall filter\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-39",
									"fontsize" : 9.0,
									"patching_rect" : [ 1726.0, -27.0, 613.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar front_hf",
									"numinlets" : 1,
									"id" : "obj-40",
									"fontsize" : 9.0,
									"patching_rect" : [ 1727.0, 68.0, 72.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar front_lf",
									"numinlets" : 1,
									"id" : "obj-41",
									"fontsize" : 9.0,
									"patching_rect" : [ 1727.0, 6.0, 70.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "ceil_hf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-42",
									"fontsize" : 9.0,
									"patching_rect" : [ 188.0, 615.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "floor_hf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-43",
									"fontsize" : 9.0,
									"patching_rect" : [ 188.0, 598.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "rear_hf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-44",
									"fontsize" : 9.0,
									"patching_rect" : [ 188.0, 581.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "front_hf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-45",
									"fontsize" : 9.0,
									"patching_rect" : [ 188.0, 564.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "right_hf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-46",
									"fontsize" : 9.0,
									"patching_rect" : [ 188.0, 548.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "ceil_lf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-47",
									"fontsize" : 9.0,
									"patching_rect" : [ 143.0, 615.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "floor_lf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-48",
									"fontsize" : 9.0,
									"patching_rect" : [ 143.0, 598.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "rear_lf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-49",
									"fontsize" : 9.0,
									"patching_rect" : [ 143.0, 581.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "front_lf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-50",
									"fontsize" : 9.0,
									"patching_rect" : [ 143.0, 564.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "right_lf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-51",
									"fontsize" : 9.0,
									"patching_rect" : [ 143.0, 548.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "left_hf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-52",
									"fontsize" : 9.0,
									"patching_rect" : [ 188.0, 531.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "left_lf",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-53",
									"fontsize" : 9.0,
									"patching_rect" : [ 143.0, 531.0, 32.0, 17.0 ],
									"minimum" : 10,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 9999,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-54",
									"fontsize" : 9.0,
									"patching_rect" : [ 431.0, 492.0, 239.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-55",
									"fontsize" : 9.0,
									"patching_rect" : [ 367.0, 508.0, 229.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "source/orientation/active",
									"text" : "jcom.parameter source/orientation/active @type msg_toggle @repetitions/allow 0 @description \"when ticked, source directivity is calculated\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-56",
									"fontsize" : 9.0,
									"patching_rect" : [ 727.0, 904.0, 352.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar directivity_toggle",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-57",
									"fontsize" : 9.0,
									"patching_rect" : [ 727.0, 884.0, 116.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "directivity_toggle",
									"jsarguments" : [ "off", "on", 204, 204, 204, 0, 0, 0, 121, 255, 15 ],
									"numinlets" : 1,
									"id" : "obj-58",
									"patching_rect" : [ 495.0, 541.0, 20.0, 14.0 ],
									"numoutlets" : 2,
									"filename" : "jcom.jsui_texttoggle.js",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "Renderthreshold_toggle",
									"numinlets" : 1,
									"id" : "obj-59",
									"patching_rect" : [ 289.0, 640.0, 42.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "rendermode/threshold/active",
									"text" : "jcom.parameter rendermode/threshold/active @type msg_toggle @repetitions/allow 0 @description \"when ticked, renderthreshold is active\"",
									"linecount" : 3,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-60",
									"fontsize" : 9.0,
									"patching_rect" : [ 688.0, 672.0, 274.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Renderthreshold_toggle",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-61",
									"fontsize" : 9.0,
									"patching_rect" : [ 688.0, 652.0, 140.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "rendermode/threshold",
									"text" : "jcom.parameter rendermode/threshold @type msg_float @repetitions/allow 0 @range/bounds 0. 1000. @range/clipmode both @description \"renders ony reflecitions above this amplitude value (full scale range)\"",
									"linecount" : 4,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-62",
									"fontsize" : 9.0,
									"patching_rect" : [ 686.0, 590.0, 277.0, 48.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "rendermode/normalization/active",
									"text" : "jcom.parameter rendermode/normalization/active @type msg_toggle @repetitions/allow 0 @description \"when ticked, all calculated reflections are getting normalized to unity intensity\"",
									"linecount" : 3,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-63",
									"fontsize" : 9.0,
									"patching_rect" : [ 686.0, 521.0, 297.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Renderthreshold",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-64",
									"fontsize" : 9.0,
									"patching_rect" : [ 686.0, 571.0, 107.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar unity_toggle",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-65",
									"fontsize" : 9.0,
									"patching_rect" : [ 686.0, 501.0, 90.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Unity intensity",
									"numinlets" : 1,
									"id" : "obj-66",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 303.0, 615.0, 74.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"varname" : "unity_toggle",
									"numinlets" : 1,
									"id" : "obj-67",
									"patching_rect" : [ 289.0, 613.0, 42.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Renderthreshold [ä FSR]:",
									"numinlets" : 1,
									"id" : "obj-68",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 304.0, 642.0, 125.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "Renderthreshold",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-69",
									"fontsize" : 9.0,
									"patching_rect" : [ 426.0, 641.0, 40.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 1000.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "source/orientation/mode",
									"text" : "jcom.parameter source/orientation/mode @type msg_symbol @repetitions/allow 1 @description \"source orientation mode (center, static, or follow)\"",
									"linecount" : 2,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-70",
									"fontsize" : 9.0,
									"patching_rect" : [ 669.0, 400.0, 349.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar orientation_menu 2",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-71",
									"fontsize" : 9.0,
									"patching_rect" : [ 669.0, 379.0, 121.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "orientation_menu",
									"numinlets" : 1,
									"id" : "obj-72",
									"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"fontsize" : 9.0,
									"types" : [  ],
									"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
									"patching_rect" : [ 494.0, 557.0, 37.0, 17.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"arrow" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
									"arrowlink" : 1,
									"fontname" : "Arial",
									"items" : [ "static", ",", "center", ",", "follow" ],
									"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
									"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-73",
									"patching_rect" : [ 583.0, 1018.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-74",
									"fontsize" : 9.0,
									"patching_rect" : [ 583.0, 978.0, 47.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p \"source directivity\"",
									"numinlets" : 1,
									"id" : "obj-75",
									"fontsize" : 9.0,
									"patching_rect" : [ 583.0, 998.0, 110.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 70.0, 171.0, 291.0, 251.0 ],
										"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
										"bglocked" : 0,
										"defrect" : [ 70.0, 171.0, 291.0, 251.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 0,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.message source/directivity/load_file @type msg_none @description \"sound source directivity preset\"",
													"linecount" : 2,
													"numinlets" : 1,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 417.0, -14.0, 298.0, 27.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "read",
													"numinlets" : 2,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 550.0, 48.0, 30.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel bang 0",
													"numinlets" : 1,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 563.0, 19.0, 55.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend read",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 624.0, 74.0, 68.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bang",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-5",
													"fontsize" : 9.0,
													"patching_rect" : [ 53.0, 266.0, 30.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p slowbang",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 607.0, 174.0, 59.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 40.0, 104.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 40.0, 104.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "deferlow",
																	"numinlets" : 1,
																	"id" : "obj-1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 50.0, 50.0, 50.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "delay 1000",
																	"numinlets" : 2,
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 50.0, 71.0, 61.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "deferlow",
																	"numinlets" : 1,
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 50.0, 92.0, 50.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-4",
																	"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-5",
																	"patching_rect" : [ 50.0, 114.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l",
													"numinlets" : 1,
													"id" : "obj-7",
													"fontsize" : 9.0,
													"patching_rect" : [ 607.0, 52.0, 27.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p slowbang",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 808.0, 221.0, 59.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 40.0, 104.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 40.0, 104.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "deferlow",
																	"numinlets" : 1,
																	"id" : "obj-1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 50.0, 50.0, 50.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "delay 5",
																	"numinlets" : 2,
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 50.0, 71.0, 43.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "deferlow",
																	"numinlets" : 1,
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 50.0, 92.0, 50.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-4",
																	"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-5",
																	"patching_rect" : [ 50.0, 114.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 551.0, 174.0, 54.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p presets",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 886.0, 32.0, 52.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 515.0, 216.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 515.0, 216.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b b",
																	"numinlets" : 1,
																	"id" : "obj-1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 195.0, 100.0, 30.0, 17.0 ],
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "bang" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b b",
																	"numinlets" : 1,
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 147.0, 100.0, 30.0, 17.0 ],
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "bang" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b b",
																	"numinlets" : 1,
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 99.0, 100.0, 30.0, 17.0 ],
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "bang" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b b",
																	"numinlets" : 1,
																	"id" : "obj-4",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 51.0, 100.0, 30.0, 17.0 ],
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "bang" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-5",
																	"patching_rect" : [ 10.0, 224.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"id" : "obj-6",
																	"patching_rect" : [ 10.0, 159.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p data",
																	"hidden" : 1,
																	"numinlets" : 1,
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 215.0, 159.0, 37.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 50.0, 119.0, 1016.0, 608.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 50.0, 119.0, 1016.0, 608.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 0,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxanimatetime" : 200,
																		"imprint" : 0,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "name none",
																					"numinlets" : 2,
																					"id" : "obj-1",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 12.0, 148.0, 56.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "clear",
																					"numinlets" : 2,
																					"id" : "obj-2",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 488.0, 61.0, 33.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b b b",
																					"numinlets" : 1,
																					"id" : "obj-3",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 12.0, 36.0, 40.0, 17.0 ],
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "bang" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-4",
																					"patching_rect" : [ 106.0, 266.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0 1, 359 1",
																					"numinlets" : 2,
																					"id" : "obj-5",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 106.0, 92.0, 59.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-6",
																					"patching_rect" : [ 39.0, -7.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 2 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 42.5, 57.0, 497.5, 57.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 497.5, 153.0, 115.0, 153.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 1 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial"
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p data",
																	"hidden" : 1,
																	"numinlets" : 1,
																	"id" : "obj-8",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 167.0, 159.0, 37.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 50.0, 119.0, 600.0, 426.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 50.0, 119.0, 600.0, 426.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 0,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxanimatetime" : 200,
																		"imprint" : 0,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "name Clarinet",
																					"numinlets" : 2,
																					"id" : "obj-1",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 12.0, 177.0, 81.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "clear",
																					"numinlets" : 2,
																					"id" : "obj-2",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 487.0, 88.0, 33.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b b b",
																					"numinlets" : 1,
																					"id" : "obj-3",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 12.0, 65.0, 40.0, 17.0 ],
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "bang" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-4",
																					"patching_rect" : [ 106.0, 295.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0 1., 10 0.9661, 20 0.8511, 30 0.6237, 40 0.4842, 50 0.3758, 60 0.257, 70 0.2512, 80 0.2818, 90 0.3162, 100 0.3631, 110 0.3758, 120 0.4315, 130 0.4842, 140 0.5248, 150 0.5012, 160 0.5309, 170 0.537, 180 0.5623, 190 0.537, 200 0.5309, 210 0.5012, 220 0.5248, 230 0.4842, 240 0.4315, 250 0.3758, 260 0.3631, 270 0.3162, 280 0.2818, 290 0.2512, 300 0.257, 310 0.3758, 320 0.4842, 330 0.6237, 340 0.8511, 350 0.9661, 360 1.",
																					"linecount" : 6,
																					"numinlets" : 2,
																					"id" : "obj-5",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 106.0, 102.0, 360.0, 67.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-6",
																					"patching_rect" : [ 39.0, 22.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 2 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 42.5, 86.0, 496.5, 86.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 496.5, 182.0, 115.0, 182.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 1 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial"
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p data",
																	"hidden" : 1,
																	"numinlets" : 1,
																	"id" : "obj-9",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 119.0, 159.0, 37.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 50.0, 119.0, 600.0, 426.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 50.0, 119.0, 600.0, 426.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 0,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxanimatetime" : 200,
																		"imprint" : 0,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "name Trumpet",
																					"numinlets" : 2,
																					"id" : "obj-1",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 12.0, 176.0, 74.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "clear",
																					"numinlets" : 2,
																					"id" : "obj-2",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 488.0, 89.0, 33.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b b b",
																					"numinlets" : 1,
																					"id" : "obj-3",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 12.0, 64.0, 40.0, 17.0 ],
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "bang" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-4",
																					"patching_rect" : [ 106.0, 294.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0 1., 10 0.9661, 20 0.955, 30 0.881, 40 0.8318, 50 0.7943, 60 0.7586, 70 0.6839, 80 0.6166, 90 0.6026, 100 0.5754, 110 0.5559, 120 0.5248, 130 0.507, 140 0.4624, 150 0.4519, 160 0.4217, 170 0.4169, 180 0.3846, 190 0.4169, 200 0.4217, 210 0.4519, 220 0.4624, 230 0.507, 240 0.5248, 250 0.5559, 260 0.5754, 270 0.6026, 280 0.6166, 290 0.6839, 300 0.7586, 310 0.7943, 320 0.8318, 330 0.881, 340 0.955, 350 0.9661, 360 1.",
																					"linecount" : 6,
																					"numinlets" : 2,
																					"id" : "obj-5",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 106.0, 100.0, 355.0, 67.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-6",
																					"patching_rect" : [ 39.0, 21.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 2 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 42.5, 85.0, 497.5, 85.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 497.5, 181.0, 115.0, 181.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 1 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial"
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p thru",
																	"hidden" : 1,
																	"numinlets" : 1,
																	"id" : "obj-10",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 71.0, 202.0, 37.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 50.0, 119.0, 600.0, 426.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 50.0, 119.0, 600.0, 426.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 0,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxanimatetime" : 200,
																		"imprint" : 0,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-1",
																					"patching_rect" : [ 164.0, 180.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-2",
																					"patching_rect" : [ 166.0, 71.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial"
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p data",
																	"hidden" : 1,
																	"numinlets" : 1,
																	"id" : "obj-11",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 71.0, 159.0, 37.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 476.0, 204.0, 600.0, 426.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 476.0, 204.0, 600.0, 426.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 0,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxanimatetime" : 200,
																		"imprint" : 0,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "name Trombone",
																					"numinlets" : 2,
																					"id" : "obj-1",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 12.0, 131.0, 80.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "clear",
																					"numinlets" : 2,
																					"id" : "obj-2",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 488.0, 60.0, 33.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b b b",
																					"numinlets" : 1,
																					"id" : "obj-3",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 12.0, 35.0, 40.0, 17.0 ],
																					"numoutlets" : 3,
																					"outlettype" : [ "bang", "bang", "bang" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-4",
																					"patching_rect" : [ 106.0, 265.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0 1, 10 0.9661, 20 0.955, 30 0.8222, 40 0.7674, 50 0.6998, 60 0.5623, 70 0.4842, 80 0.389, 90 0.3162, 100 0.302, 110 0.2818, 120 0.2692, 130 0.26, 140 0.2399, 150 0.2317, 160 0.2138, 170 0.1905, 180 0.1778, 190 0.1905, 200 0.2138, 210 0.2317, 220 0.2399, 230 0.26, 240 0.2692, 250 0.2818, 260 0.302, 270 0.3162, 280 0.389, 290 0.4842, 300 0.5623, 310 0.6998, 320 0.7674, 330 0.8222, 340 0.955, 350 0.9661, 360 1",
																					"linecount" : 6,
																					"numinlets" : 2,
																					"id" : "obj-5",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 106.0, 69.0, 358.0, 67.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-6",
																					"patching_rect" : [ 39.0, -8.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 2 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 42.5, 56.0, 497.5, 56.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 497.5, 152.0, 115.0, 152.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 1 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial"
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "select trombone trumpet clarinet none",
																	"hidden" : 1,
																	"numinlets" : 1,
																	"id" : "obj-12",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 51.0, 76.0, 203.0, 17.0 ],
																	"numoutlets" : 5,
																	"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-13",
																	"patching_rect" : [ 51.0, 30.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-14",
																	"patching_rect" : [ 71.0, 224.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 3 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 2 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 1 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 1,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 1,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 1,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pvar sourceDirPreset 2",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 724.0, -23.0, 117.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "source/directivity/azimuth/preset",
													"text" : "jcom.message source/directivity/preset @type msg_symbol @repetitions/allow 1 @description \"sound source directivity preset\"",
													"linecount" : 2,
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 724.0, -3.0, 335.0, 27.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p clear",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-13",
													"fontsize" : 9.0,
													"patching_rect" : [ -57.0, 44.0, 41.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 706.0, 332.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 706.0, 332.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-1",
																	"patching_rect" : [ 139.0, 29.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-2",
																	"patching_rect" : [ 151.0, 183.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0 1., 360 1.",
																	"numinlets" : 2,
																	"id" : "obj-3",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 133.0, 112.0, 65.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "clear",
																	"numinlets" : 2,
																	"id" : "obj-4",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 242.0, 107.0, 33.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b b",
																	"numinlets" : 1,
																	"id" : "obj-5",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 137.0, 51.0, 30.0, 17.0 ],
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "bang" ],
																	"fontname" : "Arial"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess const 10000",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-14",
													"fontsize" : 9.0,
													"patching_rect" : [ 138.0, 266.0, 108.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "0.5",
													"numinlets" : 1,
													"id" : "obj-15",
													"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 1.0, 121.0, 21.0, 17.0 ],
													"numoutlets" : 0,
													"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-16",
													"fontsize" : 9.0,
													"patching_rect" : [ -115.0, 67.0, 48.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "confirm with \"create\"",
													"numinlets" : 1,
													"id" : "obj-17",
													"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 83.0, 205.0, 109.0, 17.0 ],
													"numoutlets" : 0,
													"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "flip_y",
													"numinlets" : 2,
													"id" : "obj-18",
													"fontsize" : 9.0,
													"patching_rect" : [ 117.0, 20.0, 35.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "0",
													"numinlets" : 1,
													"id" : "obj-19",
													"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 8.0, 179.0, 16.0, 17.0 ],
													"numoutlets" : 0,
													"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "1",
													"numinlets" : 1,
													"id" : "obj-20",
													"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 8.0, 66.0, 16.0, 17.0 ],
													"numoutlets" : 0,
													"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "270 ¼",
													"linecount" : 2,
													"numinlets" : 1,
													"id" : "obj-21",
													"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 189.0, 190.0, 33.0, 27.0 ],
													"numoutlets" : 0,
													"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "normalize",
													"numinlets" : 2,
													"id" : "obj-22",
													"fontsize" : 9.0,
													"patching_rect" : [ 63.0, 20.0, 53.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "smooth",
													"numinlets" : 2,
													"id" : "obj-23",
													"fontsize" : 9.0,
													"patching_rect" : [ 20.0, 20.0, 42.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "gridstep_x 45",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-24",
													"fontsize" : 9.0,
													"patching_rect" : [ -113.0, 89.0, 74.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "180 ¼",
													"linecount" : 2,
													"numinlets" : 1,
													"id" : "obj-25",
													"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 129.0, 190.0, 31.0, 27.0 ],
													"numoutlets" : 0,
													"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "90 ¼",
													"linecount" : 2,
													"numinlets" : 1,
													"id" : "obj-26",
													"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 74.0, 190.0, 26.0, 27.0 ],
													"numoutlets" : 0,
													"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "360 ¼",
													"numinlets" : 1,
													"id" : "obj-27",
													"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 250.0, 190.0, 37.0, 17.0 ],
													"numoutlets" : 0,
													"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "0 ¼",
													"linecount" : 2,
													"numinlets" : 1,
													"id" : "obj-28",
													"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 20.0, 190.0, 23.0, 27.0 ],
													"numoutlets" : 0,
													"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-29",
													"fontsize" : 9.0,
													"patching_rect" : [ 108.0, 239.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "write",
													"numinlets" : 2,
													"id" : "obj-30",
													"fontsize" : 9.0,
													"patching_rect" : [ 20.0, 37.0, 35.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "thispatcher",
													"numinlets" : 1,
													"id" : "obj-31",
													"fontsize" : 9.0,
													"patching_rect" : [ 332.0, 187.0, 61.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial",
													"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nogrow, savewindow 1, window exec",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-32",
													"fontsize" : 9.0,
													"patching_rect" : [ 242.0, 167.0, 273.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags grow, window exec",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-33",
													"fontsize" : 9.0,
													"patching_rect" : [ 207.0, 205.0, 262.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p stuff",
													"hidden" : 1,
													"numinlets" : 3,
													"id" : "obj-34",
													"fontsize" : 9.0,
													"patching_rect" : [ 93.0, 265.0, 40.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 881.0, 162.0, 600.0, 426.0 ],
														"bglocked" : 0,
														"defrect" : [ 881.0, 162.0, 600.0, 426.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "360 4964.861328",
																	"numinlets" : 2,
																	"id" : "obj-1",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 215.0, 223.0, 210.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend set",
																	"numinlets" : 1,
																	"id" : "obj-2",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 215.0, 201.0, 62.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-3",
																	"patching_rect" : [ 235.0, 38.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p mean",
																	"numinlets" : 2,
																	"id" : "obj-4",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 204.0, 143.0, 41.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 85.0, 314.0, 284.0, 418.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 85.0, 314.0, 284.0, 418.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 0,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxanimatetime" : 200,
																		"imprint" : 0,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b b",
																					"numinlets" : 1,
																					"id" : "obj-1",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 31.0, 151.0, 30.0, 17.0 ],
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "bang" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-2",
																					"patching_rect" : [ 114.0, 59.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pak 360 1.",
																					"numinlets" : 2,
																					"id" : "obj-3",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 44.0, 311.0, 58.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "/ 360.",
																					"numinlets" : 2,
																					"id" : "obj-4",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 92.0, 284.0, 40.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "set 0.",
																					"numinlets" : 2,
																					"id" : "obj-5",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 31.0, 203.0, 36.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "accum 0.",
																					"numinlets" : 3,
																					"id" : "obj-6",
																					"fontsize" : 9.0,
																					"patching_rect" : [ 50.0, 246.0, 50.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"fontname" : "Arial"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-7",
																					"patching_rect" : [ 70.0, 58.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-8",
																					"patching_rect" : [ 44.0, 336.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-3", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 59.5, 268.0, 101.5, 268.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 40.5, 232.0, 59.5, 232.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 1 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 123.0, 112.0, 40.5, 112.0 ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontsize" : 12.0,
																		"fontname" : "Arial"
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 10000.",
																	"numinlets" : 2,
																	"id" : "obj-5",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 131.0, 94.0, 53.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b f",
																	"numinlets" : 1,
																	"id" : "obj-6",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 71.0, 50.0, 17.0 ],
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "float" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"numinlets" : 2,
																	"id" : "obj-7",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 119.0, 27.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0.",
																	"numinlets" : 2,
																	"id" : "obj-8",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 91.0, 140.0, 50.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl slice 1",
																	"numinlets" : 2,
																	"id" : "obj-9",
																	"fontsize" : 9.0,
																	"patching_rect" : [ 50.0, 50.0, 51.0, 17.0 ],
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"fontname" : "Arial"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-10",
																	"patching_rect" : [ 179.0, 33.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-11",
																	"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-12",
																	"patching_rect" : [ 91.0, 192.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-7", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 188.0, 57.0, 108.5, 57.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontsize" : 12.0,
														"fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"varname" : "sourceDirPreset",
													"numinlets" : 1,
													"id" : "obj-35",
													"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
													"fontsize" : 9.0,
													"types" : [  ],
													"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
													"patching_rect" : [ 166.0, 37.0, 100.0, 17.0 ],
													"numoutlets" : 3,
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
													"outlettype" : [ "int", "", "" ],
													"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
													"arrowlink" : 1,
													"fontname" : "Arial",
													"items" : [ "Preset", ",", "none", ",", "trombone", ",", "trumpet", ",", "clarinet" ],
													"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
													"framecolor" : [ 0.5, 0.5, 0.5, 1.0 ],
													"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend /source/directivity/create",
													"numinlets" : 1,
													"id" : "obj-36",
													"fontsize" : 9.0,
													"patching_rect" : [ 267.0, 264.0, 169.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "create",
													"numinlets" : 2,
													"id" : "obj-37",
													"fontsize" : 9.0,
													"patching_rect" : [ 57.0, 37.0, 39.0, 15.0 ],
													"numoutlets" : 1,
													"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear",
													"numinlets" : 2,
													"id" : "obj-38",
													"fontsize" : 9.0,
													"patching_rect" : [ 131.0, 37.0, 33.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "read",
													"numinlets" : 2,
													"id" : "obj-39",
													"fontsize" : 9.0,
													"patching_rect" : [ 98.0, 37.0, 30.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "jsui",
													"varname" : "ej.lui-311017",
													"jsarguments" : [  ],
													"numinlets" : 1,
													"id" : "obj-40",
													"patching_rect" : [ 21.0, 57.0, 245.0, 131.0 ],
													"numoutlets" : 5,
													"filename" : "ej.function.js",
													"outlettype" : [ "", "", "", "", "" ],
													"embedstate" : [ [ "CreateNFunctions", 2, "ViMiC", 50, 0.0, 1.0, 0.0, 360.0, "nan", "nan", 0.7943, "nan" ], [ "legend", 1 ], [ "grid", 3 ], [ "snap2grid", 0 ], [ "hiddenpoint", 0 ], [ "clickadd", 1 ], [ "clickmove", 1 ], [ "clicksustain", 1 ], [ "autosustain", 0 ], [ "timedisplay", 0 ], [ "autocursor", 1 ], [ "bordersync", 1 ], [ "ghost", 20 ], [ "notifyrecalled", 0 ], [ "mousereport", 1 ], [ "numcurvepoints", 12 ], [ "movemode", 0 ], [ "mode", 1 ], [ "SetColor", 0, "brgb", 204, 204, 204 ], [ "SetColor", 0, "frgb", 82, 82, 82 ], [ "SetColor", 0, "rgb2", 84, 84, 84 ], [ "SetColor", 0, "rgb3", 255, 0, 0 ], [ "SetColor", 0, "rgb4", 51, 51, 51 ], [ "SetColor", 0, "rgb5", 128, 128, 128 ], [ "SetColor", 0, "rgb6", 107, 107, 107 ], [ "SetColor", 1, "brgb", 204, 204, 204 ], [ "SetColor", 1, "frgb", 82, 82, 82 ], [ "SetColor", 1, "rgb2", 107, 107, 107 ], [ "SetColor", 1, "rgb3", 255, 0, 0 ], [ "SetColor", 1, "rgb4", 51, 51, 51 ], [ "SetColor", 1, "rgb5", 128, 128, 128 ], [ "SetColor", 1, "rgb6", 107, 107, 107 ], [ "fsaa", 1 ], [ "redrawon" ] ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "/source/directivity/create #0-directivity",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-41",
													"fontsize" : 9.0,
													"patching_rect" : [ 1.0, 320.0, 205.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numinlets" : 1,
													"id" : "obj-42",
													"fontsize" : 9.0,
													"patching_rect" : [ 267.0, 284.0, 62.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess #0-directivity",
													"numinlets" : 1,
													"id" : "obj-43",
													"fontsize" : 9.0,
													"patching_rect" : [ 267.0, 245.0, 121.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "table #0-directivity",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-44",
													"fontsize" : 9.0,
													"patching_rect" : [ 93.0, 288.0, 102.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"fontname" : "Arial",
													"showeditor" : 0,
													"editor_rect" : [ 385.0, 67.0, 758.0, 708.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"showeditor" : 0,
														"name" : "#0-directivity",
														"signed" : 0,
														"size" : 361,
														"range" : 10001,
														"notename" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"hidden" : 1,
													"numinlets" : 0,
													"id" : "obj-45",
													"patching_rect" : [ -86.0, 254.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-46",
													"patching_rect" : [ 1.0, 342.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "bgcolor 80 80 80",
													"hidden" : 1,
													"numinlets" : 4,
													"id" : "obj-47",
													"fontsize" : 9.0,
													"patching_rect" : [ 399.0, 186.0, 88.0, 17.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "del 100",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-48",
													"fontsize" : 9.0,
													"patching_rect" : [ 1.0, 278.0, 44.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-49",
													"patching_rect" : [ -91.0, 209.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 360",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-50",
													"fontsize" : 9.0,
													"patching_rect" : [ -16.0, 257.0, 44.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Arial"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 1,
													"midpoints" : [ 733.5, 29.0, 721.0, 29.0, 721.0, -28.0, 733.5, -28.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 2 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-34", 2 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-34", 1 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 2 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 1,
													"midpoints" : [ 30.5, 196.0, 102.5, 196.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [ 107.5, 54.0, 30.5, 54.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [ 29.5, 54.0, 30.5, 54.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 1,
													"midpoints" : [ 276.5, 307.0, 10.5, 307.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 1 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 1,
													"midpoints" : [ 817.5, 240.0, -6.5, 240.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 1,
													"midpoints" : [ 66.5, 54.0, -82.0, 54.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "allreport",
									"jsarguments" : [ "Get State", 225, 225, 225, 68, 68, 68 ],
									"numinlets" : 1,
									"id" : "obj-76",
									"patching_rect" : [ 409.0, 617.0, 52.0, 19.0 ],
									"numoutlets" : 1,
									"filename" : "jsui_textbutton.js",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "dir_editor",
									"jsarguments" : [ "directivity", 225, 225, 225, 68, 68, 68 ],
									"numinlets" : 1,
									"id" : "obj-77",
									"patching_rect" : [ 436.0, 557.0, 57.0, 17.0 ],
									"numoutlets" : 1,
									"filename" : "jsui_textbutton.js",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open",
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-78",
									"fontsize" : 9.0,
									"patching_rect" : [ 583.0, 960.0, 30.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar orientationA",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-79",
									"fontsize" : 9.0,
									"patching_rect" : [ 663.0, 455.0, 90.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Source orientation",
									"numinlets" : 1,
									"id" : "obj-80",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 436.0, 465.0, 97.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "orientationA",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-81",
									"fontsize" : 9.0,
									"patching_rect" : [ 459.0, 541.0, 32.0, 17.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p convert",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-82",
									"fontsize" : 9.0,
									"patching_rect" : [ 663.0, 473.0, 53.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 540.0, 187.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 540.0, 187.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "% 1.",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 70.0, 31.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr ($i1 + 180) / 360.",
													"numinlets" : 1,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 50.0, 120.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-3",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 92.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p convert",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-83",
									"fontsize" : 9.0,
									"patching_rect" : [ 664.0, 436.0, 53.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-1",
													"patching_rect" : [ 179.0, 108.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr $f1 * 360. - 180",
													"numinlets" : 1,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 50.0, 119.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numinlets" : 1,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 50.0, 71.0, 62.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-5",
													"patching_rect" : [ 50.0, 93.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"jsarguments" : [  ],
									"numinlets" : 1,
									"id" : "obj-84",
									"patching_rect" : [ 457.0, 482.0, 58.0, 58.0 ],
									"numoutlets" : 1,
									"filename" : "jsui_360dial.js",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "source/orientation/yaw",
									"text" : "jcom.parameter source/orientation/yaw @type msg_int @range/bounds -180 180 @range/clipmode both @description \"orientation of the sound source (yaw-angle)\"",
									"linecount" : 4,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-85",
									"fontsize" : 9.0,
									"patching_rect" : [ 754.0, 436.0, 200.0, 48.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 1000",
									"numinlets" : 2,
									"id" : "obj-86",
									"fontsize" : 9.0,
									"patching_rect" : [ 361.0, 878.0, 61.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numinlets" : 1,
									"id" : "obj-87",
									"fontsize" : 9.0,
									"patching_rect" : [ 356.0, 858.0, 50.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"numinlets" : 1,
									"id" : "obj-88",
									"fontsize" : 9.0,
									"patching_rect" : [ 355.0, 837.0, 50.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p all_ele",
									"numinlets" : 1,
									"id" : "obj-89",
									"fontsize" : 9.0,
									"patching_rect" : [ 38.0, 977.0, 48.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 118.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "separator",
													"numinlets" : 2,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 47.0, 220.0, 54.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 47.0, 94.0, 16.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"numinlets" : 1,
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 47.0, 73.0, 50.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 143.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"numinlets" : 1,
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 142.0, 94.0, 246.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "bang", "float" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 103.0, 138.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 24",
													"numinlets" : 2,
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 158.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"numinlets" : 2,
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 285.0, 285.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append /position/z",
													"numinlets" : 1,
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 220.0, 95.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend microphones/",
													"numinlets" : 1,
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 195.0, 110.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"numinlets" : 1,
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 262.0, 51.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-13",
													"patching_rect" : [ 103.0, 333.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"id" : "obj-90",
									"fontsize" : 9.0,
									"patching_rect" : [ 243.0, 918.0, 62.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mic-preset",
									"text" : "p mic-presets",
									"numinlets" : 1,
									"id" : "obj-91",
									"fontsize" : 9.0,
									"patching_rect" : [ 243.0, 896.0, 73.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 676.0, 279.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 676.0, 279.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.33",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 314.0, 103.0, 31.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.3",
													"numinlets" : 2,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 371.0, 102.0, 23.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.7",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 200.0, 102.0, 23.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.5",
													"numinlets" : 2,
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 257.0, 102.0, 23.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.",
													"numinlets" : 2,
													"id" : "obj-5",
													"fontsize" : 9.0,
													"patching_rect" : [ 428.0, 102.0, 17.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1.",
													"numinlets" : 2,
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 143.0, 102.0, 23.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route omni subcardioid cardioid supercardioid hypercardioid figure-eight",
													"numinlets" : 1,
													"id" : "obj-7",
													"fontsize" : 9.0,
													"patching_rect" : [ 143.0, 65.0, 352.0, 17.0 ],
													"numoutlets" : 7,
													"outlettype" : [ "", "", "", "", "", "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-8",
													"patching_rect" : [ 143.0, 270.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-9",
													"patching_rect" : [ 143.0, 40.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "the definition of super- and hyper-cardioid vary from company to company",
													"linecount" : 2,
													"numinlets" : 1,
													"id" : "obj-10",
													"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
													"fontsize" : 9.0,
													"patching_rect" : [ 292.0, 215.0, 227.0, 27.0 ],
													"numoutlets" : 0,
													"fontname" : "Arial"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 5 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 4 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 3 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p colors",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-92",
									"fontsize" : 9.0,
									"patching_rect" : [ 570.0, 441.0, 46.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 749.0, 58.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 749.0, 58.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-1",
													"patching_rect" : [ 123.0, 260.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-2",
													"patching_rect" : [ 211.0, 54.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rgb2 66 0 2",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 375.0, 121.0, 64.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "rgb2 164 153 128",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 27.0, 117.0, 94.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "frgb 181 181 181",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-5",
													"fontsize" : 9.0,
													"patching_rect" : [ 253.0, 117.0, 92.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "brgb 100 100 100",
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 137.0, 120.0, 93.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 387.0, 261.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-93",
									"fontsize" : 9.0,
									"patching_rect" : [ 571.0, 401.0, 48.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-94",
									"fontsize" : 9.0,
									"patching_rect" : [ 571.0, 420.0, 50.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p all_Dir",
									"numinlets" : 2,
									"id" : "obj-95",
									"fontsize" : 9.0,
									"patching_rect" : [ 246.0, 846.0, 49.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "separator",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 47.0, 238.0, 54.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numinlets" : 2,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 104.0, 102.0, 16.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-3",
													"patching_rect" : [ 269.0, 49.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"numinlets" : 2,
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 104.0, 133.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"numinlets" : 1,
													"id" : "obj-5",
													"fontsize" : 9.0,
													"patching_rect" : [ 160.0, 114.0, 62.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-6",
													"patching_rect" : [ 143.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"numinlets" : 1,
													"id" : "obj-7",
													"fontsize" : 9.0,
													"patching_rect" : [ 142.0, 94.0, 29.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "bang", "float" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 24",
													"numinlets" : 2,
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 158.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.",
													"numinlets" : 2,
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 306.0, 194.0, 42.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"numinlets" : 2,
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 285.0, 38.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append /directivity/ratio",
													"numinlets" : 1,
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 212.0, 126.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend microphones/",
													"numinlets" : 1,
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 190.0, 110.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"numinlets" : 1,
													"id" : "obj-13",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 262.0, 51.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-14",
													"patching_rect" : [ 103.0, 333.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [ 315.5, 281.0, 131.5, 281.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p all_Dir_menu",
									"numinlets" : 2,
									"id" : "obj-96",
									"fontsize" : 9.0,
									"patching_rect" : [ 242.0, 948.0, 78.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "separator",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 44.0, 237.0, 54.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numinlets" : 2,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 93.0, 96.0, 16.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 132.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 472.0, 44.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 143.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b s",
													"numinlets" : 1,
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 142.0, 94.0, 286.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 24",
													"numinlets" : 2,
													"id" : "obj-7",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 158.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"numinlets" : 2,
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 285.0, 325.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append /directivity/preset",
													"numinlets" : 1,
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 212.0, 133.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend microphones/",
													"numinlets" : 1,
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 190.0, 110.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"numinlets" : 1,
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 262.0, 51.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-12",
													"patching_rect" : [ 103.0, 333.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-11", 0 ],
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
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar All_dir_menu 2",
									"numinlets" : 1,
									"id" : "obj-97",
									"fontsize" : 9.0,
									"patching_rect" : [ 243.0, 871.0, 104.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p all_gain_mic",
									"numinlets" : 2,
									"id" : "obj-98",
									"fontsize" : 9.0,
									"patching_rect" : [ 374.0, 916.0, 75.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "separator",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 10.0, 221.0, 54.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-2",
													"patching_rect" : [ 248.0, 45.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 54.0, 128.0, 16.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 0 0",
													"numinlets" : 2,
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 136.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.atomidi",
													"numinlets" : 1,
													"id" : "obj-5",
													"fontsize" : 9.0,
													"patching_rect" : [ 143.0, 72.0, 68.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-6",
													"patching_rect" : [ 143.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"numinlets" : 1,
													"id" : "obj-7",
													"fontsize" : 9.0,
													"patching_rect" : [ 142.0, 94.0, 233.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "bang", "float" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 24",
													"numinlets" : 2,
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 158.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"numinlets" : 2,
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 285.0, 272.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append /gain/midi",
													"numinlets" : 1,
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 217.0, 92.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend microphones/",
													"numinlets" : 1,
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 195.0, 110.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"numinlets" : 1,
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 262.0, 51.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-13",
													"patching_rect" : [ 103.0, 333.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-9", 1 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-99",
									"patching_rect" : [ 117.0, 979.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar All_Z",
									"numinlets" : 1,
									"id" : "obj-100",
									"fontsize" : 9.0,
									"patching_rect" : [ 38.0, 958.0, 58.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar All_Y",
									"numinlets" : 1,
									"id" : "obj-101",
									"fontsize" : 9.0,
									"patching_rect" : [ 13.0, 931.0, 59.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar All_X",
									"numinlets" : 1,
									"id" : "obj-102",
									"fontsize" : 9.0,
									"patching_rect" : [ 14.0, 911.0, 59.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar All_A",
									"numinlets" : 1,
									"id" : "obj-103",
									"fontsize" : 9.0,
									"patching_rect" : [ 158.0, 915.0, 60.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p all_azi",
									"numinlets" : 1,
									"id" : "obj-104",
									"fontsize" : 9.0,
									"patching_rect" : [ 158.0, 936.0, 48.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "separator",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 39.0, 213.0, 54.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numinlets" : 2,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 38.0, 87.0, 16.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"numinlets" : 1,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 40.0, 66.0, 50.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"numinlets" : 2,
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 105.0, 118.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 142.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"numinlets" : 1,
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 142.0, 94.0, 178.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "bang", "float" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 103.0, 139.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 24",
													"numinlets" : 2,
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 158.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"numinlets" : 2,
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 285.0, 217.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append /orientation/yaw",
													"numinlets" : 1,
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 217.0, 123.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend microphones/",
													"numinlets" : 1,
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 195.0, 110.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"numinlets" : 1,
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 262.0, 51.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-13",
													"patching_rect" : [ 103.0, 333.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar All_E",
									"numinlets" : 1,
									"id" : "obj-105",
									"fontsize" : 9.0,
									"patching_rect" : [ 98.0, 915.0, 58.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p all_ele",
									"numinlets" : 1,
									"id" : "obj-106",
									"fontsize" : 9.0,
									"patching_rect" : [ 98.0, 936.0, 48.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"numinlets" : 2,
													"id" : "obj-1",
													"fontsize" : 9.0,
													"patching_rect" : [ 104.0, 118.0, 47.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "separator",
													"numinlets" : 2,
													"id" : "obj-2",
													"fontsize" : 9.0,
													"patching_rect" : [ 46.0, 220.0, 54.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"numinlets" : 2,
													"id" : "obj-3",
													"fontsize" : 9.0,
													"patching_rect" : [ 45.0, 94.0, 16.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"numinlets" : 1,
													"id" : "obj-4",
													"fontsize" : 9.0,
													"patching_rect" : [ 45.0, 73.0, 50.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 143.0, 50.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b f",
													"numinlets" : 1,
													"id" : "obj-6",
													"fontsize" : 9.0,
													"patching_rect" : [ 142.0, 94.0, 246.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "bang", "float" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 104.0, 140.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 24",
													"numinlets" : 2,
													"id" : "obj-8",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 158.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"numinlets" : 2,
													"id" : "obj-9",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 285.0, 285.0, 17.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "append /orientation/pitch",
													"numinlets" : 1,
													"id" : "obj-10",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 217.0, 126.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend microphones/",
													"numinlets" : 1,
													"id" : "obj-11",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 195.0, 110.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "tosymbol",
													"numinlets" : 1,
													"id" : "obj-12",
													"fontsize" : 9.0,
													"patching_rect" : [ 103.0, 262.0, 51.0, 17.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-13",
													"patching_rect" : [ 103.0, 333.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "All_dir_menu",
									"numinlets" : 1,
									"id" : "obj-107",
									"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"fontsize" : 9.0,
									"types" : [  ],
									"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
									"patching_rect" : [ 335.0, 444.0, 71.0, 17.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"arrow" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
									"arrowlink" : 1,
									"fontname" : "Arial",
									"items" : [ "---", ",", "omni", ",", "subcardioid", ",", "cardioid", ",", "supercardioid", ",", "hypercardioid", ",", "figure-eight" ],
									"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
									"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "||",
									"numinlets" : 1,
									"id" : "obj-108",
									"frgb" : [ 0.776471, 0.0, 0.254902, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 405.0, 444.0, 18.0, 20.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.776471, 0.0, 0.254902, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "All_gain_mic",
									"lockeddragscroll" : 1,
									"args" : [ 0.0, 0.0, 1.0, "@size", 40, 14 ],
									"numinlets" : 1,
									"id" : "obj-109",
									"patching_rect" : [ 418.0, 446.0, 36.0, 13.0 ],
									"numoutlets" : 1,
									"name" : "jcom.numberslider.maxpat",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "All_Z",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-110",
									"fontsize" : 9.0,
									"patching_rect" : [ 170.0, 444.0, 35.0, 17.0 ],
									"minimum" : -20.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"maximum" : 20.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "All_Y",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-111",
									"fontsize" : 9.0,
									"patching_rect" : [ 134.0, 444.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "All_dir",
									"lockeddragscroll" : 1,
									"args" : [ 0.0, 0.0, 1.0, "@size", 40, 14, "@frgb", 181, 181, 181 ],
									"numinlets" : 1,
									"id" : "obj-112",
									"patching_rect" : [ 298.0, 446.0, 36.0, 13.0 ],
									"numoutlets" : 1,
									"name" : "jcom.numberslider.maxpat",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "||",
									"numinlets" : 1,
									"id" : "obj-113",
									"frgb" : [ 0.776471, 0.0, 0.254902, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 282.0, 444.0, 18.0, 20.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.776471, 0.0, 0.254902, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "All_E",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-114",
									"fontsize" : 9.0,
									"patching_rect" : [ 251.0, 444.0, 32.0, 17.0 ],
									"minimum" : -90.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"maximum" : 90.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "All_A",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-115",
									"fontsize" : 9.0,
									"patching_rect" : [ 218.0, 444.0, 33.0, 17.0 ],
									"minimum" : -180.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "||",
									"numinlets" : 1,
									"id" : "obj-116",
									"frgb" : [ 0.776471, 0.0, 0.254902, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 205.0, 444.0, 18.0, 20.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.776471, 0.0, 0.254902, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "All_X",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-117",
									"fontsize" : 9.0,
									"patching_rect" : [ 98.0, 444.0, 35.0, 17.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "quick pick",
									"numinlets" : 1,
									"id" : "obj-118",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 36.0, 446.0, 52.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[24]",
									"lockeddragscroll" : 1,
									"args" : [ 24 ],
									"numinlets" : 2,
									"id" : "obj-119",
									"patching_rect" : [ 3.0, 427.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[23]",
									"lockeddragscroll" : 1,
									"args" : [ 23 ],
									"numinlets" : 2,
									"id" : "obj-120",
									"patching_rect" : [ 3.0, 410.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[22]",
									"lockeddragscroll" : 1,
									"args" : [ 22 ],
									"numinlets" : 2,
									"id" : "obj-121",
									"patching_rect" : [ 3.0, 393.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[21]",
									"lockeddragscroll" : 1,
									"args" : [ 21 ],
									"numinlets" : 2,
									"id" : "obj-122",
									"patching_rect" : [ 3.0, 376.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[20]",
									"lockeddragscroll" : 1,
									"args" : [ 20 ],
									"numinlets" : 2,
									"id" : "obj-123",
									"patching_rect" : [ 3.0, 359.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[19]",
									"lockeddragscroll" : 1,
									"args" : [ 19 ],
									"numinlets" : 2,
									"id" : "obj-124",
									"patching_rect" : [ 3.0, 342.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[18]",
									"lockeddragscroll" : 1,
									"args" : [ 18 ],
									"numinlets" : 2,
									"id" : "obj-125",
									"patching_rect" : [ 3.0, 325.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[17]",
									"lockeddragscroll" : 1,
									"args" : [ 17 ],
									"numinlets" : 2,
									"id" : "obj-126",
									"patching_rect" : [ 3.0, 308.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "direct sound:",
									"numinlets" : 1,
									"id" : "obj-127",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 331.0, 481.0, 64.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "direct sound:",
									"numinlets" : 1,
									"id" : "obj-128",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 115.0, 481.0, 64.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Temperature [¼C]:",
									"numinlets" : 1,
									"id" : "obj-129",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 289.0, 596.0, 91.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/temperature @type msg_float @repetitions/allow 1 @range/bounds -20. 30. @range/clipmode low @description \"Temperature in Celsius to calculate the speed of sound\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-130",
									"fontsize" : 9.0,
									"patching_rect" : [ 1092.0, 877.0, 294.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar temp",
									"numinlets" : 1,
									"id" : "obj-131",
									"fontsize" : 9.0,
									"patching_rect" : [ 1034.0, 888.0, 56.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Renderinterval:",
									"numinlets" : 1,
									"id" : "obj-132",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 289.0, 583.0, 82.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "Renderintervall",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-133",
									"fontsize" : 9.0,
									"patching_rect" : [ 373.0, 580.0, 25.0, 17.0 ],
									"minimum" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Renderintervall",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-134",
									"fontsize" : 9.0,
									"patching_rect" : [ 983.0, 843.0, 104.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter rendermode/interval @type msg_int @range/bounds 1 200 @range/clipmode both @description \"tells ViMiC over how many signalblocks a change in position is interpolated - shorter time leads to faster transition and stronger doppler effect\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-135",
									"fontsize" : 9.0,
									"patching_rect" : [ 1093.0, 828.0, 379.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ratio",
									"numinlets" : 1,
									"id" : "obj-136",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 296.0, 22.0, 37.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Gain",
									"numinlets" : 1,
									"id" : "obj-137",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 435.0, 9.0, 56.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "ceiling_menu",
									"numinlets" : 1,
									"id" : "obj-138",
									"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"fontsize" : 9.0,
									"types" : [  ],
									"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
									"patching_rect" : [ 229.0, 615.0, 53.0, 17.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"arrow" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
									"arrowlink" : 1,
									"fontname" : "Arial",
									"items" : [ "---", ",", "zero", ",", "full", ",", "audience", ",", "carpet", ",", "brick", ",", "sand", ",", "metal", ",", "trees", ",", "grass" ],
									"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
									"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "floor_menu",
									"numinlets" : 1,
									"id" : "obj-139",
									"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"fontsize" : 9.0,
									"types" : [  ],
									"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
									"patching_rect" : [ 229.0, 598.0, 53.0, 17.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"arrow" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
									"arrowlink" : 1,
									"fontname" : "Arial",
									"items" : [ "---", ",", "zero", ",", "full", ",", "audience", ",", "carpet", ",", "brick", ",", "sand", ",", "metal", ",", "trees", ",", "grass" ],
									"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
									"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "right_menu",
									"numinlets" : 1,
									"id" : "obj-140",
									"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"fontsize" : 9.0,
									"types" : [  ],
									"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
									"patching_rect" : [ 229.0, 547.0, 53.0, 17.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"arrow" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
									"arrowlink" : 1,
									"fontname" : "Arial",
									"items" : [ "---", ",", "zero", ",", "full", ",", "audience", ",", "carpet", ",", "brick", ",", "sand", ",", "metal", ",", "trees", ",", "grass" ],
									"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
									"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "left_menu",
									"numinlets" : 1,
									"id" : "obj-141",
									"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"fontsize" : 9.0,
									"types" : [  ],
									"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
									"patching_rect" : [ 229.0, 530.0, 53.0, 17.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"arrow" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
									"arrowlink" : 1,
									"fontname" : "Arial",
									"items" : [ "---", ",", "zero", ",", "full", ",", "audience", ",", "carpet", ",", "brick", ",", "sand", ",", "metal", ",", "trees", ",", "grass" ],
									"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
									"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "rear_menu",
									"numinlets" : 1,
									"id" : "obj-142",
									"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"fontsize" : 9.0,
									"types" : [  ],
									"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
									"patching_rect" : [ 229.0, 581.0, 53.0, 17.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"arrow" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
									"arrowlink" : 1,
									"fontname" : "Arial",
									"items" : [ "---", ",", "zero", ",", "full", ",", "audience", ",", "carpet", ",", "brick", ",", "sand", ",", "metal", ",", "trees", ",", "grass" ],
									"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
									"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ceiling_menu 2",
									"numinlets" : 1,
									"id" : "obj-143",
									"fontsize" : 9.0,
									"patching_rect" : [ 1387.0, 601.0, 101.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "wall_properties",
									"numinlets" : 1,
									"id" : "obj-144",
									"fontsize" : 9.0,
									"patching_rect" : [ 1538.0, 654.0, 82.0, 17.0 ],
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/absorption/ceiling/preset",
									"text" : "jcom.message room/absorption/ceiling/preset @type msg_symbol @repetitions/allow 1 @description \"absorption presets for the floor\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-145",
									"fontsize" : 9.0,
									"patching_rect" : [ 1387.0, 623.0, 312.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar floor_menu 2",
									"numinlets" : 1,
									"id" : "obj-146",
									"fontsize" : 9.0,
									"patching_rect" : [ 1378.0, 492.0, 94.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "wall_properties",
									"numinlets" : 1,
									"id" : "obj-147",
									"fontsize" : 9.0,
									"patching_rect" : [ 1529.0, 545.0, 82.0, 17.0 ],
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/absorption/floor/preset",
									"text" : "jcom.message room/absorption/floor/preset @type msg_symbol @repetitions/allow 1 @description \"absorption presets for the floor\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-148",
									"fontsize" : 9.0,
									"patching_rect" : [ 1378.0, 514.0, 305.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar right_menu 2",
									"numinlets" : 1,
									"id" : "obj-149",
									"fontsize" : 9.0,
									"patching_rect" : [ 1358.0, 327.0, 94.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "wall_properties",
									"numinlets" : 1,
									"id" : "obj-150",
									"fontsize" : 9.0,
									"patching_rect" : [ 1509.0, 380.0, 82.0, 17.0 ],
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/absorption/right/preset",
									"text" : "jcom.message room/absorption/right/preset @type msg_symbol @repetitions/allow 1 @description \"absorption presets for the right wall\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-151",
									"fontsize" : 9.0,
									"patching_rect" : [ 1358.0, 349.0, 315.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar left_menu 2",
									"numinlets" : 1,
									"id" : "obj-152",
									"fontsize" : 9.0,
									"patching_rect" : [ 1365.0, 183.0, 88.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "wall_properties",
									"numinlets" : 1,
									"id" : "obj-153",
									"fontsize" : 9.0,
									"patching_rect" : [ 1514.0, 236.0, 82.0, 17.0 ],
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/absorption/left/preset",
									"text" : "jcom.message room/absorption/left/preset @type msg_symbol @repetitions/allow 1 @description \"absorption presets for the left wall\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-154",
									"fontsize" : 9.0,
									"patching_rect" : [ 1365.0, 205.0, 309.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar rear_menu 2",
									"numinlets" : 1,
									"id" : "obj-155",
									"fontsize" : 9.0,
									"patching_rect" : [ 1356.0, 69.0, 92.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "wall_properties",
									"numinlets" : 1,
									"id" : "obj-156",
									"fontsize" : 9.0,
									"patching_rect" : [ 1507.0, 123.0, 82.0, 17.0 ],
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/absorption/rear/preset",
									"text" : "jcom.message room/absorption/rear/preset @type msg_symbol @repetitions/allow 1 @description \"absorption presets for the rear wall\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-157",
									"fontsize" : 9.0,
									"patching_rect" : [ 1356.0, 91.0, 313.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar front_menu 2",
									"numinlets" : 1,
									"id" : "obj-158",
									"fontsize" : 9.0,
									"patching_rect" : [ 1357.0, -39.0, 95.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "wall_properties",
									"numinlets" : 1,
									"id" : "obj-159",
									"fontsize" : 9.0,
									"patching_rect" : [ 1510.0, 14.0, 82.0, 17.0 ],
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/absorption",
									"text" : "jcom.message room/absorption/front/preset @type msg_symbol @repetitions/allow 1 @description \"absorption presets for the front wall\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-160",
									"fontsize" : 9.0,
									"patching_rect" : [ 1357.0, -17.0, 316.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "front_menu",
									"numinlets" : 1,
									"id" : "obj-161",
									"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"fontsize" : 9.0,
									"types" : [  ],
									"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
									"patching_rect" : [ 229.0, 564.0, 53.0, 17.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"arrow" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
									"arrowlink" : 1,
									"fontname" : "Arial",
									"items" : [ "---", ",", "zero", ",", "full", ",", "audience", ",", "carpet", ",", "brick", ",", "sand", ",", "metal", ",", "trees", ",", "grass" ],
									"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
									"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "cross-frequency",
									"numinlets" : 1,
									"id" : "obj-162",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 140.0, 501.0, 88.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "early_lowcut",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-163",
									"fontsize" : 9.0,
									"patching_rect" : [ 73.0, 635.0, 41.0, 17.0 ],
									"minimum" : 500,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 19000,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "airfilter [Hz]:",
									"numinlets" : 1,
									"id" : "obj-164",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 3.0, 637.0, 69.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "roomsizeZ",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-165",
									"fontsize" : 9.0,
									"patching_rect" : [ 250.0, 635.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 40.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "roomsizeY",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-166",
									"fontsize" : 9.0,
									"patching_rect" : [ 222.0, 635.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 40.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "roomsizeX",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-167",
									"fontsize" : 9.0,
									"patching_rect" : [ 194.0, 635.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 40.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "roomize x/y/z:",
									"numinlets" : 1,
									"id" : "obj-168",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 116.0, 637.0, 77.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/ceiling/high @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the high frequencies of the ceiling\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-169",
									"fontsize" : 9.0,
									"patching_rect" : [ 1052.0, 755.0, 418.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/ceiling/mid @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the mid frequencies of the ceiling\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-170",
									"fontsize" : 9.0,
									"patching_rect" : [ 1052.0, 710.0, 416.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/ceiling/low @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the low frequencies of the ceiling\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-171",
									"fontsize" : 9.0,
									"patching_rect" : [ 1052.0, 664.0, 416.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ceil_hg",
									"numinlets" : 1,
									"id" : "obj-172",
									"fontsize" : 9.0,
									"patching_rect" : [ 982.0, 762.0, 66.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ceil_mg",
									"numinlets" : 1,
									"id" : "obj-173",
									"fontsize" : 9.0,
									"patching_rect" : [ 979.0, 717.0, 69.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar ceil_lg",
									"numinlets" : 1,
									"id" : "obj-174",
									"fontsize" : 9.0,
									"patching_rect" : [ 973.0, 678.0, 64.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/floor/high @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the high frequencies of the floor wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-175",
									"fontsize" : 9.0,
									"patching_rect" : [ 1050.0, 621.0, 292.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/floor/mid @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the mid frequencies of the floor wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-176",
									"fontsize" : 9.0,
									"patching_rect" : [ 1050.0, 576.0, 290.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/floor/low @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the low frequencies of the floor wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-177",
									"fontsize" : 9.0,
									"patching_rect" : [ 1050.0, 530.0, 290.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar floor_hg",
									"numinlets" : 1,
									"id" : "obj-178",
									"fontsize" : 9.0,
									"patching_rect" : [ 975.0, 632.0, 72.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar floor_mg",
									"numinlets" : 1,
									"id" : "obj-179",
									"fontsize" : 9.0,
									"patching_rect" : [ 971.0, 596.0, 75.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar floor_lg",
									"numinlets" : 1,
									"id" : "obj-180",
									"fontsize" : 9.0,
									"patching_rect" : [ 971.0, 544.0, 70.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/right/high @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the high frequencies of the right wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-181",
									"fontsize" : 9.0,
									"patching_rect" : [ 1049.0, 487.0, 292.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/right/mid @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the mid frequencies of the right wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-182",
									"fontsize" : 9.0,
									"patching_rect" : [ 1049.0, 442.0, 290.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/absorption/right/low",
									"text" : "jcom.parameter room/absorption/right/low @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the low frequencies of the right wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-183",
									"fontsize" : 9.0,
									"patching_rect" : [ 1049.0, 396.0, 290.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar right_hg",
									"numinlets" : 1,
									"id" : "obj-184",
									"fontsize" : 9.0,
									"patching_rect" : [ 970.0, 501.0, 72.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar right_mg",
									"numinlets" : 1,
									"id" : "obj-185",
									"fontsize" : 9.0,
									"patching_rect" : [ 970.0, 462.0, 75.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar right_lg",
									"numinlets" : 1,
									"id" : "obj-186",
									"fontsize" : 9.0,
									"patching_rect" : [ 970.0, 410.0, 70.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/left/high @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the high frequencies of the left wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-187",
									"fontsize" : 9.0,
									"patching_rect" : [ 1047.0, 350.0, 287.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/left/mid @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the mid frequencies of the left wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-188",
									"fontsize" : 9.0,
									"patching_rect" : [ 1047.0, 305.0, 284.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/left/low @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the low frequencies of the left wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-189",
									"fontsize" : 9.0,
									"patching_rect" : [ 1047.0, 259.0, 284.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar left_hg",
									"numinlets" : 1,
									"id" : "obj-190",
									"fontsize" : 9.0,
									"patching_rect" : [ 968.0, 364.0, 66.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar left_mg",
									"numinlets" : 1,
									"id" : "obj-191",
									"fontsize" : 9.0,
									"patching_rect" : [ 968.0, 325.0, 69.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar left_lg",
									"numinlets" : 1,
									"id" : "obj-192",
									"fontsize" : 9.0,
									"patching_rect" : [ 968.0, 273.0, 64.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mid/high",
									"numinlets" : 1,
									"id" : "obj-193",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, 517.0, 45.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "low/mid",
									"numinlets" : 1,
									"id" : "obj-194",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 138.0, 517.0, 45.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "high",
									"numinlets" : 1,
									"id" : "obj-195",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 101.0, 517.0, 26.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mids",
									"numinlets" : 1,
									"id" : "obj-196",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 70.0, 517.0, 28.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "low",
									"numinlets" : 1,
									"id" : "obj-197",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 40.0, 517.0, 24.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/rear/high @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the high frequencies of the rear wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-198",
									"fontsize" : 9.0,
									"patching_rect" : [ 1047.0, 214.0, 290.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/rear/mid @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the mid frequencies of the rear wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-199",
									"fontsize" : 9.0,
									"patching_rect" : [ 1047.0, 168.0, 288.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/rear/low @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the low frequencies of the rear wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-200",
									"fontsize" : 9.0,
									"patching_rect" : [ 1047.0, 122.0, 288.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar back_hg",
									"numinlets" : 1,
									"id" : "obj-201",
									"fontsize" : 9.0,
									"patching_rect" : [ 968.0, 228.0, 70.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar back_mg",
									"numinlets" : 1,
									"id" : "obj-202",
									"fontsize" : 9.0,
									"patching_rect" : [ 968.0, 188.0, 73.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar back_lg",
									"numinlets" : 1,
									"id" : "obj-203",
									"fontsize" : 9.0,
									"patching_rect" : [ 968.0, 136.0, 68.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter room/absorption/front/high @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the high frequencies of the front wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-204",
									"fontsize" : 9.0,
									"patching_rect" : [ 1047.0, 76.0, 293.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/absorption/front/mid",
									"text" : "jcom.parameter room/absorption/front/mid @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the mid frequencies of the front wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-205",
									"fontsize" : 9.0,
									"patching_rect" : [ 1047.0, 29.0, 291.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/absorption/front/low",
									"text" : "jcom.parameter room/absorption/front/low @type msg_float @repetitions/allow 1 @range/bounds 0.1 99.9 @range/clipmode both @description \"absorption for the low frequencies of the front wall\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-206",
									"fontsize" : 9.0,
									"patching_rect" : [ 1047.0, -17.0, 294.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar front_hg",
									"numinlets" : 1,
									"id" : "obj-207",
									"fontsize" : 9.0,
									"patching_rect" : [ 968.0, 90.0, 73.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar front_mg",
									"numinlets" : 1,
									"id" : "obj-208",
									"fontsize" : 9.0,
									"patching_rect" : [ 968.0, 44.0, 76.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar front_lg",
									"numinlets" : 1,
									"id" : "obj-209",
									"fontsize" : 9.0,
									"patching_rect" : [ 968.0, -3.0, 71.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ceil_hg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-210",
									"fontsize" : 9.0,
									"patching_rect" : [ 103.0, 615.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "floor_hg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-211",
									"fontsize" : 9.0,
									"patching_rect" : [ 103.0, 598.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "right_hg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-212",
									"fontsize" : 9.0,
									"patching_rect" : [ 103.0, 548.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "left_hg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-213",
									"fontsize" : 9.0,
									"patching_rect" : [ 103.0, 531.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "back_hg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-214",
									"fontsize" : 9.0,
									"patching_rect" : [ 103.0, 581.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "front_hg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-215",
									"fontsize" : 9.0,
									"patching_rect" : [ 103.0, 564.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ceil_mg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-216",
									"fontsize" : 9.0,
									"patching_rect" : [ 73.0, 615.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "floor_mg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-217",
									"fontsize" : 9.0,
									"patching_rect" : [ 73.0, 598.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "right_mg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-218",
									"fontsize" : 9.0,
									"patching_rect" : [ 73.0, 548.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "left_mg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-219",
									"fontsize" : 9.0,
									"patching_rect" : [ 73.0, 531.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "back_mg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-220",
									"fontsize" : 9.0,
									"patching_rect" : [ 73.0, 581.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "front_mg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-221",
									"fontsize" : 9.0,
									"patching_rect" : [ 73.0, 564.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "ceil_lg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-222",
									"fontsize" : 9.0,
									"patching_rect" : [ 42.0, 615.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "floor_lg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-223",
									"fontsize" : 9.0,
									"patching_rect" : [ 42.0, 598.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "right_lg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-224",
									"fontsize" : 9.0,
									"patching_rect" : [ 42.0, 548.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "left_lg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-225",
									"fontsize" : 9.0,
									"patching_rect" : [ 42.0, 531.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "back_lg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-226",
									"fontsize" : 9.0,
									"patching_rect" : [ 42.0, 581.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ceiling:",
									"numinlets" : 1,
									"id" : "obj-227",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 2.0, 618.0, 40.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Floor:",
									"numinlets" : 1,
									"id" : "obj-228",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 8.0, 601.0, 34.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Right:",
									"numinlets" : 1,
									"id" : "obj-229",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 8.0, 551.0, 34.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Left:",
									"numinlets" : 1,
									"id" : "obj-230",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 12.0, 534.0, 29.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Rear:",
									"numinlets" : 1,
									"id" : "obj-231",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 10.0, 584.0, 31.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Front:",
									"numinlets" : 1,
									"id" : "obj-232",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 7.0, 566.0, 34.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Microphones:",
									"numinlets" : 1,
									"id" : "obj-233",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 2.0, 7.0, 86.0, 20.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "wall absorption [%]",
									"numinlets" : 1,
									"id" : "obj-234",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 34.0, 501.0, 104.0, 18.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "front_lg",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-235",
									"fontsize" : 9.0,
									"patching_rect" : [ 42.0, 564.0, 28.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 100.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-236",
									"patching_rect" : [ 1.0, 498.0, 285.0, 160.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar xfade_threshold",
									"numinlets" : 1,
									"id" : "obj-237",
									"fontsize" : 9.0,
									"patching_rect" : [ 456.0, 779.0, 107.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "xfade_threshold",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-238",
									"fontsize" : 9.0,
									"patching_rect" : [ 388.0, 538.0, 32.0, 17.0 ],
									"minimum" : 0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fading threshold:",
									"numinlets" : 1,
									"id" : "obj-239",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 287.0, 540.0, 83.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar xfade_length",
									"numinlets" : 1,
									"id" : "obj-240",
									"fontsize" : 9.0,
									"patching_rect" : [ 469.0, 744.0, 92.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "xfade_length",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-241",
									"fontsize" : 9.0,
									"patching_rect" : [ 388.0, 522.0, 32.0, 17.0 ],
									"minimum" : 0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fading time:",
									"numinlets" : 1,
									"id" : "obj-242",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 310.0, 524.0, 61.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "X-FADE settings:",
									"numinlets" : 1,
									"id" : "obj-243",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 12.0,
									"patching_rect" : [ 291.0, 502.0, 111.0, 20.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "fading function:",
									"numinlets" : 1,
									"id" : "obj-244",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 294.0, 556.0, 77.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "fadefunction",
									"numinlets" : 1,
									"id" : "obj-245",
									"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"fontsize" : 9.0,
									"types" : [  ],
									"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
									"patching_rect" : [ 371.0, 555.0, 60.0, 17.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
									"arrow" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
									"arrowlink" : 1,
									"fontname" : "Arial",
									"items" : [ "cosine", ",", "cosine_squared", ",", "linear", ",", "tanh", ",", "sqrt" ],
									"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
									"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
									"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
									"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-246",
									"patching_rect" : [ 287.0, 498.0, 146.0, 77.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar fadefunction 2",
									"numinlets" : 1,
									"id" : "obj-247",
									"fontsize" : 9.0,
									"patching_rect" : [ 463.0, 818.0, 98.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter rendermode/xfade/fadefunction @type msg_symbol @description \"fading function of the crossfade for the x-fade mode\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-248",
									"fontsize" : 9.0,
									"patching_rect" : [ 565.0, 814.0, 403.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter rendermode/xfade/threshold @type msg_int @range/bounds 0 4096 @repetitions/allow 0 @range/clipmode low @description \"distance in samples before a crossfade in the x-fade mode is activated\"",
									"linecount" : 3,
									"numinlets" : 1,
									"id" : "obj-249",
									"fontsize" : 9.0,
									"patching_rect" : [ 566.0, 769.0, 329.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter rendermode/xfade/fadelength @type msg_int @repetitions/allow 0 @range/bounds 0 9999 @range/clipmode both @description \"length of the crossfade for the x-fade mode in samples\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-250",
									"fontsize" : 9.0,
									"patching_rect" : [ 565.0, 736.0, 432.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.multi.out~",
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-251",
									"fontsize" : 9.0,
									"patching_rect" : [ 399.0, -20.0, 417.0, 17.0 ],
									"numoutlets" : 32,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[16]",
									"lockeddragscroll" : 1,
									"args" : [ 16 ],
									"numinlets" : 2,
									"id" : "obj-252",
									"patching_rect" : [ 3.0, 291.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[15]",
									"lockeddragscroll" : 1,
									"args" : [ 15 ],
									"numinlets" : 2,
									"id" : "obj-253",
									"patching_rect" : [ 3.0, 274.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[14]",
									"lockeddragscroll" : 1,
									"args" : [ 14 ],
									"numinlets" : 2,
									"id" : "obj-254",
									"patching_rect" : [ 3.0, 257.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[13]",
									"lockeddragscroll" : 1,
									"args" : [ 13 ],
									"numinlets" : 2,
									"id" : "obj-255",
									"patching_rect" : [ 3.0, 240.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[12]",
									"lockeddragscroll" : 1,
									"args" : [ 12 ],
									"numinlets" : 2,
									"id" : "obj-256",
									"patching_rect" : [ 3.0, 223.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[11]",
									"lockeddragscroll" : 1,
									"args" : [ 11 ],
									"numinlets" : 2,
									"id" : "obj-257",
									"patching_rect" : [ 3.0, 206.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[10]",
									"lockeddragscroll" : 1,
									"args" : [ 10 ],
									"numinlets" : 2,
									"id" : "obj-258",
									"patching_rect" : [ 3.0, 189.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[9]",
									"lockeddragscroll" : 1,
									"args" : [ 9 ],
									"numinlets" : 2,
									"id" : "obj-259",
									"patching_rect" : [ 3.0, 172.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax refresh",
									"linecount" : 2,
									"numinlets" : 2,
									"id" : "obj-260",
									"fontsize" : 9.0,
									"patching_rect" : [ 8.0, 877.0, 64.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-261",
									"patching_rect" : [ 831.0, -24.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"id" : "obj-262",
									"patching_rect" : [ 402.0, -38.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[8]",
									"lockeddragscroll" : 1,
									"args" : [ 8 ],
									"numinlets" : 2,
									"id" : "obj-263",
									"patching_rect" : [ 3.0, 155.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[7]",
									"lockeddragscroll" : 1,
									"args" : [ 7 ],
									"numinlets" : 2,
									"id" : "obj-264",
									"patching_rect" : [ 3.0, 138.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[6]",
									"lockeddragscroll" : 1,
									"args" : [ 6 ],
									"numinlets" : 2,
									"id" : "obj-265",
									"patching_rect" : [ 3.0, 121.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[5]",
									"lockeddragscroll" : 1,
									"args" : [ 5 ],
									"numinlets" : 2,
									"id" : "obj-266",
									"patching_rect" : [ 3.0, 104.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[4]",
									"lockeddragscroll" : 1,
									"args" : [ 4 ],
									"numinlets" : 2,
									"id" : "obj-267",
									"patching_rect" : [ 3.0, 87.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[3]",
									"lockeddragscroll" : 1,
									"args" : [ 3 ],
									"numinlets" : 2,
									"id" : "obj-268",
									"patching_rect" : [ 3.0, 70.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt[2]",
									"lockeddragscroll" : 1,
									"args" : [ 2 ],
									"numinlets" : 2,
									"id" : "obj-269",
									"patching_rect" : [ 3.0, 53.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "disPow",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-270",
									"fontsize" : 9.0,
									"patching_rect" : [ 184.0, 480.0, 27.0, 17.0 ],
									"minimum" : 0.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 40.0,
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Update rate [Hz]:",
									"numinlets" : 1,
									"id" : "obj-271",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 420.0, 581.0, 84.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "Updaterate",
									"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-272",
									"fontsize" : 9.0,
									"patching_rect" : [ 504.0, 579.0, 28.0, 17.0 ],
									"minimum" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"maximum" : 50,
									"outlettype" : [ "int", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Updaterate",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-273",
									"fontsize" : 9.0,
									"patching_rect" : [ 1004.0, 803.0, 83.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.parameter updaterate @type msg_int @range/bounds 1 50 @range/clipmode low @description \"vimic internal updaterate in [Hz]- tells how often new parameter are getting updated\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-274",
									"fontsize" : 9.0,
									"patching_rect" : [ 1093.0, 796.0, 407.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numinlets" : 1,
									"id" : "obj-275",
									"fontsize" : 9.0,
									"patching_rect" : [ 116.0, 868.0, 50.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/reflection/airfilter",
									"text" : "jcom.parameter room/reflection/airfilter @type msg_int @range/bounds 500 19000 @range/clipmode both @repetitions/allow 0 @description \"damping frequency of the early reflections due to air absorption\"",
									"linecount" : 3,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-276",
									"fontsize" : 9.0,
									"patching_rect" : [ 670.0, 322.0, 308.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar early_lowcut",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-277",
									"fontsize" : 9.0,
									"patching_rect" : [ 670.0, 300.0, 94.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "preset",
									"numinlets" : 1,
									"id" : "obj-278",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 355.0, 23.0, 37.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.list2parameter 3",
									"numinlets" : 11,
									"id" : "obj-279",
									"fontsize" : 9.0,
									"patching_rect" : [ 434.0, 855.0, 144.0, 17.0 ],
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar roomsizeZ",
									"numinlets" : 1,
									"id" : "obj-280",
									"fontsize" : 9.0,
									"patching_rect" : [ 600.0, 880.0, 80.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar roomsizeY",
									"numinlets" : 1,
									"id" : "obj-281",
									"fontsize" : 9.0,
									"patching_rect" : [ 517.0, 880.0, 81.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar roomsizeX",
									"numinlets" : 1,
									"id" : "obj-282",
									"fontsize" : 9.0,
									"patching_rect" : [ 434.0, 880.0, 81.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/size/xyz",
									"text" : "jcom.parameter room/size/xyz @type msg_list @ramp/drive scheduler @range/bounds 0. 40. @repetitions/allow 0 @range/clipmode both @description \"Size of the virtual room in XYZ\"",
									"linecount" : 2,
									"numinlets" : 1,
									"id" : "obj-283",
									"fontsize" : 9.0,
									"patching_rect" : [ 583.0, 845.0, 386.0, 27.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "power law for attenuation due to distance:",
									"numinlets" : 1,
									"id" : "obj-284",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 6.0, 466.0, 201.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "power law for attenuation due to directivity:",
									"numinlets" : 1,
									"id" : "obj-285",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 219.0, 467.0, 211.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar dirPow",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-286",
									"fontsize" : 9.0,
									"patching_rect" : [ 669.0, 228.0, 66.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar disPow",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-287",
									"fontsize" : 9.0,
									"patching_rect" : [ 688.0, 163.0, 66.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "microphones/direct/power",
									"text" : "jcom.parameter microphones/directivity/power @type msg_int @repetitions/allow 0 @range/bounds 0 8 @range/clipmode both @description \"power law for attenuation due to microphone directivity\"",
									"linecount" : 3,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-288",
									"fontsize" : 9.0,
									"patching_rect" : [ 670.0, 247.0, 307.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "room/distance/power",
									"text" : "jcom.parameter room/distance/power @type msg_float @range/bounds 0. 8. @range/clipmode both @repetitions/allow 0 @description \"power law for attenuation due to distance\"",
									"linecount" : 3,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-289",
									"fontsize" : 9.0,
									"patching_rect" : [ 688.0, 182.0, 267.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Yaw/Pitch",
									"numinlets" : 1,
									"id" : "obj-290",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 216.0, 22.0, 65.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Z",
									"numinlets" : 1,
									"id" : "obj-291",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 171.0, 22.0, 16.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Y",
									"numinlets" : 1,
									"id" : "obj-292",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 137.0, 22.0, 16.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "X",
									"numinlets" : 1,
									"id" : "obj-293",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 99.0, 21.0, 16.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Directivity",
									"numinlets" : 1,
									"id" : "obj-294",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 316.0, 9.0, 56.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Orientation",
									"numinlets" : 1,
									"id" : "obj-295",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 215.0, 9.0, 87.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Microphone position",
									"numinlets" : 1,
									"id" : "obj-296",
									"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 96.0, 9.0, 99.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "jcom.sur.vimic_mic.mxt",
									"lockeddragscroll" : 1,
									"args" : [ 1 ],
									"numinlets" : 2,
									"id" : "obj-297",
									"patching_rect" : [ 3.0, 36.0, 523.0, 17.0 ],
									"numoutlets" : 0,
									"name" : "jcom.sur.vimic_mic.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar allreport",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-298",
									"fontsize" : 9.0,
									"patching_rect" : [ 759.0, 112.0, 74.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "report_all",
									"text" : "jcom.message report_all @type msg_none @description \"report inner state of the vimic module\"",
									"linecount" : 3,
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-299",
									"fontsize" : 9.0,
									"patching_rect" : [ 760.0, 132.0, 182.0, 38.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "bb6",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-300",
									"fontsize" : 9.0,
									"patching_rect" : [ 406.0, 803.0, 29.0, 17.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "bb5",
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"id" : "obj-301",
									"fontsize" : 9.0,
									"patching_rect" : [ 406.0, 785.0, 29.0, 17.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"triscale" : 0.9,
									"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triangle" : 0,
									"fontname" : "Arial",
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"numinlets" : 0,
									"id" : "obj-302",
									"patching_rect" : [ 6.0, 781.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-303",
									"fontsize" : 9.0,
									"patching_rect" : [ 116.0, 891.0, 59.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 80 80 80",
									"hidden" : 1,
									"numinlets" : 4,
									"id" : "obj-304",
									"fontsize" : 9.0,
									"patching_rect" : [ 158.0, 986.0, 88.0, 17.0 ],
									"numoutlets" : 0,
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-305",
									"patching_rect" : [ 1.0, 4.0, 533.0, 459.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-306",
									"patching_rect" : [ 216.0, 464.0, 217.0, 32.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-307",
									"patching_rect" : [ 1.0, 464.0, 213.0, 32.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-308",
									"patching_rect" : [ 287.0, 576.0, 247.0, 82.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-309",
									"patching_rect" : [ 434.0, 464.0, 100.0, 140.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"id" : "obj-310",
									"patching_rect" : [ 456.0, 603.0, 69.0, 43.0 ],
									"numoutlets" : 4,
									"handoff" : "",
									"outlettype" : [ "bang", "bang", "", "int" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 4 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 3 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 3 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 4 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 3 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 4 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-153", 4 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-153", 3 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 4 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 1 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 3 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 4 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 3 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-145", 1 ],
									"destination" : [ "obj-144", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-148", 1 ],
									"destination" : [ "obj-147", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-154", 1 ],
									"destination" : [ "obj-153", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-160", 1 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-151", 1 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-157", 1 ],
									"destination" : [ "obj-156", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 1 ],
									"destination" : [ "obj-145", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-145", 0 ],
									"destination" : [ "obj-143", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-146", 1 ],
									"destination" : [ "obj-148", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-148", 0 ],
									"destination" : [ "obj-146", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-152", 1 ],
									"destination" : [ "obj-154", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-154", 0 ],
									"destination" : [ "obj-152", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 1 ],
									"destination" : [ "obj-151", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-151", 0 ],
									"destination" : [ "obj-149", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-158", 1 ],
									"destination" : [ "obj-160", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-160", 0 ],
									"destination" : [ "obj-158", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-155", 1 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-157", 0 ],
									"destination" : [ "obj-155", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-134", 0 ],
									"destination" : [ "obj-135", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-273", 0 ],
									"destination" : [ "obj-274", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 2 ],
									"destination" : [ "obj-169", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-172", 0 ],
									"destination" : [ "obj-169", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 1 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-173", 0 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 0 ],
									"destination" : [ "obj-171", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-174", 0 ],
									"destination" : [ "obj-171", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 2 ],
									"destination" : [ "obj-175", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-178", 0 ],
									"destination" : [ "obj-175", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-176", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-179", 0 ],
									"destination" : [ "obj-176", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-180", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 2 ],
									"destination" : [ "obj-181", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-184", 0 ],
									"destination" : [ "obj-181", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 1 ],
									"destination" : [ "obj-182", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-185", 0 ],
									"destination" : [ "obj-182", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 0 ],
									"destination" : [ "obj-183", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-186", 0 ],
									"destination" : [ "obj-183", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-153", 2 ],
									"destination" : [ "obj-187", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-190", 0 ],
									"destination" : [ "obj-187", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-153", 1 ],
									"destination" : [ "obj-188", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-191", 0 ],
									"destination" : [ "obj-188", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-153", 0 ],
									"destination" : [ "obj-189", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-192", 0 ],
									"destination" : [ "obj-189", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 2 ],
									"destination" : [ "obj-198", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-201", 0 ],
									"destination" : [ "obj-198", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 1 ],
									"destination" : [ "obj-199", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-202", 0 ],
									"destination" : [ "obj-199", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-203", 0 ],
									"destination" : [ "obj-200", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-200", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 2 ],
									"destination" : [ "obj-204", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-207", 0 ],
									"destination" : [ "obj-204", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 1 ],
									"destination" : [ "obj-205", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-208", 0 ],
									"destination" : [ "obj-205", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 0 ],
									"destination" : [ "obj-206", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-209", 0 ],
									"destination" : [ "obj-206", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-131", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-274", 0 ],
									"destination" : [ "obj-273", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-135", 0 ],
									"destination" : [ "obj-134", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-169", 0 ],
									"destination" : [ "obj-172", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-170", 0 ],
									"destination" : [ "obj-173", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-175", 0 ],
									"destination" : [ "obj-178", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-171", 0 ],
									"destination" : [ "obj-174", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-176", 0 ],
									"destination" : [ "obj-179", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-177", 0 ],
									"destination" : [ "obj-180", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-181", 0 ],
									"destination" : [ "obj-184", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-182", 0 ],
									"destination" : [ "obj-185", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-183", 0 ],
									"destination" : [ "obj-186", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-190", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-188", 0 ],
									"destination" : [ "obj-191", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-189", 0 ],
									"destination" : [ "obj-192", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-198", 0 ],
									"destination" : [ "obj-201", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-199", 0 ],
									"destination" : [ "obj-202", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-200", 0 ],
									"destination" : [ "obj-203", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-204", 0 ],
									"destination" : [ "obj-207", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-205", 0 ],
									"destination" : [ "obj-208", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-209", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-298", 0 ],
									"destination" : [ "obj-299", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 1 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 1,
									"midpoints" : [ 736.5, 937.0, 723.0, 937.0, 723.0, 880.0, 736.5, 880.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [ 735.5, 1008.0, 722.0, 1008.0, 722.0, 940.0, 735.5, 940.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 1,
									"midpoints" : [ 697.5, 715.0, 684.0, 715.0, 684.0, 648.0, 697.5, 648.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-287", 0 ],
									"destination" : [ "obj-289", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-289", 0 ],
									"destination" : [ "obj-287", 0 ],
									"hidden" : 1,
									"midpoints" : [ 697.5, 225.0, 685.0, 225.0, 685.0, 160.0, 697.5, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [ 695.5, 646.0, 683.0, 646.0, 683.0, 568.0, 695.5, 568.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 1,
									"midpoints" : [ 695.5, 565.0, 682.0, 565.0, 682.0, 497.0, 695.5, 497.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-277", 0 ],
									"destination" : [ "obj-276", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-276", 0 ],
									"destination" : [ "obj-277", 0 ],
									"hidden" : 1,
									"midpoints" : [ 679.5, 365.0, 666.0, 365.0, 666.0, 296.0, 679.5, 296.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-286", 0 ],
									"destination" : [ "obj-288", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 1 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 1,
									"midpoints" : [ 678.5, 432.0, 666.0, 432.0, 666.0, 376.0, 678.5, 376.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-288", 0 ],
									"destination" : [ "obj-286", 0 ],
									"hidden" : 1,
									"midpoints" : [ 679.5, 291.0, 666.0, 291.0, 666.0, 225.0, 678.5, 225.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-279", 2 ],
									"destination" : [ "obj-280", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-279", 10 ],
									"destination" : [ "obj-283", 0 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-92", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-237", 0 ],
									"destination" : [ "obj-249", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-247", 1 ],
									"destination" : [ "obj-248", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-240", 0 ],
									"destination" : [ "obj-250", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-283", 0 ],
									"destination" : [ "obj-279", 10 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-279", 1 ],
									"destination" : [ "obj-281", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-119", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-120", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-121", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-122", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-123", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-124", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-125", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-126", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-252", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-253", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-254", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-255", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-256", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-257", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-258", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-259", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-263", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-264", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-265", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-266", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-267", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-268", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-269", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-261", 0 ],
									"destination" : [ "obj-297", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-250", 0 ],
									"destination" : [ "obj-240", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-248", 0 ],
									"destination" : [ "obj-247", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-280", 0 ],
									"destination" : [ "obj-279", 2 ],
									"hidden" : 1,
									"midpoints" : [ 609.5, 905.0, 420.0, 905.0, 420.0, 838.0, 468.5, 838.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-249", 0 ],
									"destination" : [ "obj-237", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-281", 0 ],
									"destination" : [ "obj-279", 1 ],
									"hidden" : 0,
									"midpoints" : [ 526.5, 906.0, 425.0, 906.0, 425.0, 843.0, 456.0, 843.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-98", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-279", 0 ],
									"destination" : [ "obj-282", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-282", 0 ],
									"destination" : [ "obj-279", 0 ],
									"hidden" : 0,
									"midpoints" : [ 443.5, 902.0, 431.0, 902.0, 431.0, 848.0, 443.5, 848.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 1 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-262", 0 ],
									"destination" : [ "obj-251", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-96", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-95", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 1 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 0,
									"midpoints" : [ 337.5, 892.0, 252.5, 892.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 1 ],
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [ 337.5, 943.0, 251.5, 943.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-104", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [ 383.5, 975.0, 126.0, 975.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [ 251.5, 975.0, 126.0, 975.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-275", 0 ],
									"destination" : [ "obj-303", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-303", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-303", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-275", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-105", 0 ],
									"destination" : [ "obj-106", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-310", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 23 ],
									"destination" : [ "obj-119", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 22 ],
									"destination" : [ "obj-120", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 21 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 20 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 19 ],
									"destination" : [ "obj-123", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 18 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 17 ],
									"destination" : [ "obj-125", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 16 ],
									"destination" : [ "obj-126", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 15 ],
									"destination" : [ "obj-252", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 14 ],
									"destination" : [ "obj-253", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 13 ],
									"destination" : [ "obj-254", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 12 ],
									"destination" : [ "obj-255", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 11 ],
									"destination" : [ "obj-256", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 10 ],
									"destination" : [ "obj-257", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 9 ],
									"destination" : [ "obj-258", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 8 ],
									"destination" : [ "obj-259", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 7 ],
									"destination" : [ "obj-263", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 6 ],
									"destination" : [ "obj-264", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 5 ],
									"destination" : [ "obj-265", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 4 ],
									"destination" : [ "obj-266", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 3 ],
									"destination" : [ "obj-267", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 2 ],
									"destination" : [ "obj-268", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 1 ],
									"destination" : [ "obj-269", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-251", 0 ],
									"destination" : [ "obj-297", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-27",
					"fontsize" : 9.0,
					"patching_rect" : [ 544.0, 314.0, 62.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 1",
					"hidden" : 1,
					"numinlets" : 2,
					"id" : "obj-28",
					"fontsize" : 9.0,
					"patching_rect" : [ 615.0, 366.0, 27.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"hidden" : 1,
					"numinlets" : 2,
					"id" : "obj-29",
					"fontsize" : 9.0,
					"patching_rect" : [ 614.0, 295.0, 27.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-30",
					"fontsize" : 9.0,
					"patching_rect" : [ 614.0, 347.0, 51.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar render_mode 2",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-31",
					"fontsize" : 9.0,
					"patching_rect" : [ 614.0, 454.0, 102.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "rendermode",
					"text" : "jcom.parameter rendermode @type msg_symbol @repetitions/allow 0 @description \"Rendertype of ViMiC\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-32",
					"fontsize" : 9.0,
					"patching_rect" : [ 722.0, 448.0, 242.0, 27.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "render_mode",
					"numinlets" : 1,
					"id" : "obj-33",
					"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"fontsize" : 9.0,
					"types" : [  ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"patching_rect" : [ 42.0, 24.0, 63.0, 17.0 ],
					"numoutlets" : 3,
					"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"arrow" : 0,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
					"arrowlink" : 1,
					"fontname" : "Arial",
					"items" : [ "ViMiC_lite", ",", "X-fade_lite", ",", "ViMiC_XL", ",", "X-fade_XL", ",", "Panning", ",", "Static" ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p colors",
					"hidden" : 1,
					"numinlets" : 0,
					"id" : "obj-34",
					"fontsize" : 9.0,
					"patching_rect" : [ 351.0, 79.0, 46.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 497.0, 319.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 497.0, 319.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 100",
									"numinlets" : 2,
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 84.0, 62.0, 55.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-2",
									"patching_rect" : [ 69.0, 190.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 84.0, 42.0, 50.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-4",
									"patching_rect" : [ 329.0, 192.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-5",
									"patching_rect" : [ 62.0, 44.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rgb2 66 0 2",
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 95.0, 113.0, 64.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "frgb 181 181 181",
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 245.0, 111.0, 92.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brgb 47 46 36",
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 164.0, 113.0, 75.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numinlets" : 1,
									"id" : "obj-9",
									"fontsize" : 9.0,
									"patching_rect" : [ 84.0, 83.0, 50.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"numinlets" : 1,
									"id" : "obj-10",
									"fontsize" : 9.0,
									"patching_rect" : [ 85.0, 20.0, 50.0, 17.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-9", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
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
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-35",
					"fontsize" : 9.0,
					"patching_rect" : [ 351.0, 119.0, 61.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-36",
					"fontsize" : 9.0,
					"patching_rect" : [ 351.0, 100.0, 16.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "front" ],
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 188.0, 431.0, 147.0, 184.0 ],
						"bglocked" : 0,
						"defrect" : [ 188.0, 431.0, 147.0, 184.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-1",
									"patching_rect" : [ 43.0, 34.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numinlets" : 1,
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 42.0, 53.0, 50.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 41.0, 79.0, 50.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "front" ],
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-4",
									"patching_rect" : [ 41.0, 103.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-5",
									"patching_rect" : [ 41.0, 15.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"args" : [ 0.0, 0.0, 1.0, "@size", 100, 12, "@text", "1st-order", "refl." ],
					"numinlets" : 1,
					"id" : "obj-37",
					"patching_rect" : [ 153.0, 33.0, 100.0, 12.0 ],
					"numoutlets" : 1,
					"border" : 1,
					"name" : "jcom.textslider.maxpat",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"args" : [ 0.0, 0.0, 1.0, "@size", 100, 12, "@text", "direct", "sound", "@frgb" ],
					"numinlets" : 1,
					"id" : "obj-38",
					"patching_rect" : [ 153.0, 20.0, 100.0, 13.0 ],
					"numoutlets" : 1,
					"border" : 1,
					"name" : "jcom.textslider.maxpat",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "mics",
					"numinlets" : 1,
					"id" : "obj-39",
					"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"fontsize" : 9.0,
					"types" : [  ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"patching_rect" : [ 106.0, 24.0, 22.0, 17.0 ],
					"numoutlets" : 3,
					"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"arrow" : 0,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"arrowcolor" : [ 0.22, 0.22, 0.22, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ],
					"arrowlink" : 1,
					"fontname" : "Arial",
					"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8, ",", 9, ",", 10, ",", 11, ",", 12, ",", 13, ",", 14, ",", 15, ",", 16, ",", 17, ",", 18, ",", 19, ",", 20, ",", 21, ",", 22, ",", 23, ",", 24 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"arrowbgcolor" : [ 0.86, 0.86, 0.86, 1.0 ],
					"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "microphones/amount",
					"text" : "jcom.parameter microphones/amount @type msg_int @range/bounds 1 24 @repetitions/allow 0 @range/clipmode low @priority 301 @description \"Number of rendered virtual microphones\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-40",
					"fontsize" : 9.0,
					"patching_rect" : [ 614.0, 315.0, 400.0, 27.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar mics 2",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-41",
					"fontsize" : 9.0,
					"patching_rect" : [ 614.0, 275.0, 64.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "setup:",
					"numinlets" : 1,
					"id" : "obj-42",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 5.0, 26.0, 34.0, 17.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /open_inspector /audio/meters",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-43",
					"fontsize" : 9.0,
					"patching_rect" : [ 157.0, 254.0, 221.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-44",
					"fontsize" : 9.0,
					"patching_rect" : [ 157.0, 302.0, 44.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-45",
					"patching_rect" : [ 133.0, 626.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.in~",
					"hidden" : 1,
					"numinlets" : 32,
					"id" : "obj-46",
					"fontsize" : 9.0,
					"patching_rect" : [ 133.0, 532.0, 430.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar report",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-47",
					"fontsize" : 9.0,
					"patching_rect" : [ 606.0, 388.0, 63.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "report",
					"numinlets" : 1,
					"id" : "obj-48",
					"patching_rect" : [ 167.0, 3.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "report[1]",
					"text" : "jcom.parameter report @type msg_int @range/bounds 0 1 @range/clipmode both @description \"report changes inside the vimic module\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-49",
					"fontsize" : 9.0,
					"patching_rect" : [ 606.0, 408.0, 315.0, 27.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "room/reflection/1/gain",
					"text" : "jcom.parameter.gain room/reflection/1/gain @repetitions/allow 0 @description \"gain of the early reflections 1st order\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-50",
					"fontsize" : 9.0,
					"patching_rect" : [ 524.0, 47.0, 281.0, 27.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "room/reflection/0/gain",
					"text" : "jcom.parameter.gain room/reflection/0/gain @repetitions/allow 0 @description \"gain of the direct sound component\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-51",
					"fontsize" : 9.0,
					"patching_rect" : [ 521.0, 7.0, 280.0, 27.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "source/position/absolute",
					"text" : "jcom.parameter.spatdif source/position/absolute @ramp/drive scheduler @description \"Sourceposition in the virtual room - spatDIF compliant\"",
					"linecount" : 2,
					"hidden" : 1,
					"numinlets" : 3,
					"id" : "obj-52",
					"fontsize" : 9.0,
					"patching_rect" : [ 654.0, 177.0, 353.0, 27.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "posD",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-53",
					"fontsize" : 9.0,
					"patching_rect" : [ 127.0, 42.0, 26.0, 17.0 ],
					"minimum" : 0.0,
					"numoutlets" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"maximum" : 25.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontname" : "Arial",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "posE",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-54",
					"fontsize" : 9.0,
					"patching_rect" : [ 101.0, 42.0, 27.0, 17.0 ],
					"numoutlets" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"maximum" : 90.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontname" : "Arial",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "posA",
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-55",
					"fontsize" : 9.0,
					"patching_rect" : [ 69.0, 42.0, 33.0, 17.0 ],
					"minimum" : -180.0,
					"numoutlets" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"maximum" : 180.0,
					"outlettype" : [ "float", "bang" ],
					"triangle" : 0,
					"fontname" : "Arial",
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-56",
					"fontsize" : 9.0,
					"patching_rect" : [ 393.0, 302.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"id" : "obj-57",
					"fontsize" : 9.0,
					"patching_rect" : [ 105.0, 81.0, 191.0, 15.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 25",
					"hidden" : 1,
					"numinlets" : 25,
					"id" : "obj-58",
					"fontsize" : 9.0,
					"patching_rect" : [ 133.0, 448.0, 339.0, 17.0 ],
					"numoutlets" : 26,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 1",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-59",
					"fontsize" : 9.0,
					"patching_rect" : [ 133.0, 232.0, 58.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "signal", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"id" : "obj-60",
					"fontsize" : 9.0,
					"patching_rect" : [ 113.0, 103.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sur.vimic~ @description \"This is Virtual Microphone Control (ViMiC) for Max/MSP\"",
					"numinlets" : 1,
					"id" : "obj-61",
					"fontsize" : 9.0,
					"patching_rect" : [ 15.0, 142.0, 398.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"id" : "obj-62",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 29.0, 104.0, 79.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-63",
					"patching_rect" : [ 15.0, 104.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"id" : "obj-64",
					"fontsize" : 9.0,
					"patching_rect" : [ 244.0, 103.0, 31.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numinlets" : 0,
					"id" : "obj-65",
					"patching_rect" : [ 133.0, 213.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Position A/E/D",
					"numinlets" : 1,
					"id" : "obj-66",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ -1.0, 44.0, 75.0, 17.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.vimic1~.maxpat",
					"hidden" : 1,
					"numinlets" : 2,
					"id" : "obj-67",
					"fontsize" : 9.0,
					"patching_rect" : [ 133.0, 359.0, 329.5, 17.0 ],
					"numoutlets" : 24,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-68",
					"patching_rect" : [ 15.0, 180.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multicable output",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-69",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 92.0, 655.0, 101.0, 17.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "order of early reflections",
					"numinlets" : 1,
					"id" : "obj-70",
					"patching_rect" : [ 130.0, 24.0, 19.0, 16.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "number of microphones",
					"numinlets" : 1,
					"id" : "obj-71",
					"patching_rect" : [ 106.0, 25.0, 19.0, 16.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "hint",
					"hint" : "ViMiC render type",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-72",
					"patching_rect" : [ 501.0, 258.0, 44.0, 18.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"id" : "obj-74",
					"has_mute" : 1,
					"patching_rect" : [ -1.0, -1.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"has_gain" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 124.0, 24.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 122.5, 124.0, 24.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 253.5, 125.0, 24.5, 125.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [ 166.5, 354.0, 6.0, 354.0, 6.0, 124.0, 24.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 23 ],
					"destination" : [ "obj-58", 24 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 1,
					"midpoints" : [ 402.5, 338.0, 453.0, 338.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 1,
					"midpoints" : [ 307.5, 338.0, 453.0, 338.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 1,
					"midpoints" : [ 214.5, 354.0, 453.0, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 22 ],
					"destination" : [ "obj-58", 23 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 21 ],
					"destination" : [ "obj-58", 22 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 20 ],
					"destination" : [ "obj-58", 21 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 19 ],
					"destination" : [ "obj-58", 20 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 18 ],
					"destination" : [ "obj-58", 19 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 17 ],
					"destination" : [ "obj-58", 18 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 16 ],
					"destination" : [ "obj-58", 17 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 15 ],
					"destination" : [ "obj-58", 16 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 14 ],
					"destination" : [ "obj-58", 15 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 13 ],
					"destination" : [ "obj-58", 14 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 12 ],
					"destination" : [ "obj-58", 13 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 11 ],
					"destination" : [ "obj-58", 12 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 10 ],
					"destination" : [ "obj-58", 11 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 9 ],
					"destination" : [ "obj-58", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 8 ],
					"destination" : [ "obj-58", 9 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 7 ],
					"destination" : [ "obj-58", 8 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 6 ],
					"destination" : [ "obj-58", 7 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 5 ],
					"destination" : [ "obj-58", 6 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 4 ],
					"destination" : [ "obj-58", 5 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 3 ],
					"destination" : [ "obj-58", 4 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 2 ],
					"destination" : [ "obj-58", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-58", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-52", 2 ],
					"hidden" : 1,
					"midpoints" : [ 889.5, 246.0, 642.0, 246.0, 642.0, 162.0, 997.5, 162.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-52", 1 ],
					"hidden" : 1,
					"midpoints" : [ 776.5, 242.0, 648.0, 242.0, 648.0, 167.0, 830.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [ 663.5, 231.0, 651.0, 231.0, 651.0, 172.0, 663.5, 172.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [ 731.5, 480.0, 608.0, 480.0, 608.0, 445.0, 623.5, 445.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 694.5, 527.0, 606.0, 527.0, 606.0, 495.0, 619.5, 495.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [ 615.5, 441.0, 601.0, 441.0, 601.0, 383.0, 615.5, 383.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 24 ],
					"destination" : [ "obj-46", 23 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 23 ],
					"destination" : [ "obj-46", 22 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 22 ],
					"destination" : [ "obj-46", 21 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 21 ],
					"destination" : [ "obj-46", 20 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 20 ],
					"destination" : [ "obj-46", 19 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 19 ],
					"destination" : [ "obj-46", 18 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 18 ],
					"destination" : [ "obj-46", 17 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 17 ],
					"destination" : [ "obj-46", 16 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 16 ],
					"destination" : [ "obj-46", 15 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 15 ],
					"destination" : [ "obj-46", 14 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 14 ],
					"destination" : [ "obj-46", 13 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 2 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [ 368.5, 277.0, 307.5, 277.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 13 ],
					"destination" : [ "obj-46", 12 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 12 ],
					"destination" : [ "obj-46", 11 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 11 ],
					"destination" : [ "obj-46", 10 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 10 ],
					"destination" : [ "obj-46", 9 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 9 ],
					"destination" : [ "obj-46", 8 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 8 ],
					"destination" : [ "obj-46", 7 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 1,
					"midpoints" : [ 267.5, 302.0, 214.5, 302.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 7 ],
					"destination" : [ "obj-46", 6 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 6 ],
					"destination" : [ "obj-46", 5 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 5 ],
					"destination" : [ "obj-46", 4 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [ 142.5, 554.0, 121.0, 554.0, 121.0, 328.0, 190.5, 328.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 4 ],
					"destination" : [ "obj-46", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 3 ],
					"destination" : [ "obj-46", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 2 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
