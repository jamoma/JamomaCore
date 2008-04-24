{
	"patcher" : 	{
		"rect" : [ 365.0, 112.0, 969.0, 688.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 365.0, 112.0, 969.0, 688.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"id" : "obj-26",
					"patching_rect" : [ 156.0, 0.0, 255.0, 65.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"fontface" : 0,
					"fontname" : "Verdana",
					"color" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"boxalpha" : 1.0,
					"linecount" : 1,
					"fontsize" : 10.0,
					"text" : "\/Jamoma"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print BG",
					"id" : "obj-39",
					"fontsize" : 10.0,
					"patching_rect" : [ 369.0, 520.0, 53.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "controls",
					"id" : "obj-30",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"args" : [ "#0_" ],
					"patching_rect" : [ 370.0, 2.0, 123.0, 16.0 ],
					"numinlets" : 0,
					"name" : "jcom.gui.audio-component.maxpat",
					"numoutlets" : 0,
					"offset" : [ 0.0, -190.0 ],
					"frozen_box_attributes" : [ "args" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "pwindow",
					"id" : "obj-32",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"args" : [ "#0_" ],
					"patching_rect" : [ 450.0, 1.0, 60.0, 59.0 ],
					"numinlets" : 1,
					"name" : "jcom.gui.video-component.maxpat",
					"numoutlets" : 0,
					"frozen_box_attributes" : [ "args" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"id" : "obj-34",
					"pic" : "ModuleMenu.png",
					"patching_rect" : [ 4.927716, 4.951751, 10.0, 10.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b 1",
					"outlettype" : [ "bang" ],
					"id" : "obj-1",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 87.0, 399.0, 22.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"outlettype" : [ "int" ],
					"id" : "obj-3",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 661.0, 496.0, 21.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p debug_printing",
					"id" : "obj-4",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 661.0, 551.0, 84.0, 17.0 ],
					"numinlets" : 6,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 236.0, 402.0, 600.0, 426.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 236.0, 402.0, 600.0, 426.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "toggle",
									"outlettype" : [ "int" ],
									"id" : "obj-1",
									"patching_rect" : [ 23.0, 53.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"id" : "obj-2",
									"patching_rect" : [ 23.0, 33.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 346.0, 107.0, 29.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 213.0, 133.0, 29.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 153.0, 142.0, 29.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 90.0, 126.0, 29.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 23.0, 144.0, 29.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print #0_to_remote__GUI__",
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 180.0, 194.0, 140.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print #0_from_syntax_menu",
									"id" : "obj-9",
									"fontsize" : 9.0,
									"patching_rect" : [ 52.0, 258.0, 142.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print #0_from_remote__GUI__",
									"id" : "obj-10",
									"fontsize" : 9.0,
									"patching_rect" : [ 105.0, 213.0, 153.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print #0_#1_FROM_GUI_VIDEO_COMPONENT",
									"id" : "obj-11",
									"fontsize" : 9.0,
									"patching_rect" : [ 237.0, 166.0, 212.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print #0_#1_FROM_GUI_AUDIO_COMPONENT",
									"id" : "obj-12",
									"fontsize" : 9.0,
									"patching_rect" : [ 368.0, 139.0, 214.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"patching_rect" : [ 50.0, 106.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"patching_rect" : [ 115.0, 83.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"patching_rect" : [ 180.0, 111.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"patching_rect" : [ 237.0, 110.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"patching_rect" : [ 368.0, 83.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "turn on debug messages",
									"id" : "obj-18",
									"fontsize" : 9.0,
									"patching_rect" : [ 40.0, 53.0, 109.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module&presets&ui",
					"text" : "p module&presets&ui",
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 611.0, 315.0, 107.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 845.0, 815.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 845.0, 815.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-1",
									"patching_rect" : [ 472.0, 710.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "audio_meter_freeze_prepend",
									"text" : "prepend ui_freeze",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontsize" : 9.0,
									"patching_rect" : [ 229.0, 612.0, 91.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message preset\/post @type msg_none @description \"Post all presets to the Max window.\"",
									"linecount" : 2,
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 301.0, 398.0, 28.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message ui\/refresh @type msg_none @description \"Update displayed values for module to reflect current state.\"",
									"linecount" : 2,
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 653.0, 400.0, 28.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "ui\/freeze",
									"text" : "jcom.parameter ui\/freeze @type msg_toggle @range/bounds 0 1 @repetitions 0 @description \"Turn off the updating of user interface elements when parameters change.  This may be done to conserve CPU resources.\"",
									"linecount" : 3,
									"outlettype" : [ "", "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 568.0, 400.0, 38.0 ],
									"numinlets" : 0,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\/module",
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 125.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message module\/view_internals @type msg_none @description \"Attempts to open the internal algorithm for viewing.  This works for most modules.  Some modules may choose to cloak the algorithms - preventing this message from functioning.\"",
									"linecount" : 3,
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 144.0, 400.0, 38.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message preset\/default @type msg_none @description \"Open the default preset file and recall the first preset in that file.\"",
									"linecount" : 2,
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 260.0, 400.0, 28.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message preset\/write @type msg_symbol @description \"Write an xml-preset file to disk.  An optional argument defines the file to open.\"",
									"linecount" : 2,
									"id" : "obj-9",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 479.0, 400.0, 28.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message preset\/read @type msg_symbol @description \"Open an xml-preset file and recall the first preset in that file.  An optional argument defines the file to open.\"",
									"linecount" : 2,
									"id" : "obj-10",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 342.0, 396.0, 28.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message preset\/recall @type msg_float @description \"Recall a preset by number - you can also choose presets from the module menu.\"",
									"linecount" : 2,
									"id" : "obj-11",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 383.0, 400.0, 28.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message preset\/store @type msg_int @description \"Store a preset by number in memory.  All presets present in memory will be written to disk when you send a save_settings message to the module.\"",
									"linecount" : 3,
									"id" : "obj-12",
									"fontsize" : 9.0,
									"patching_rect" : [ 34.0, 424.0, 401.0, 38.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some of these messages (marked as yellow) are handled internally by jcom.hub, and the message will never be forwarded to jcom.message.",
									"linecount" : 2,
									"id" : "obj-13",
									"fontsize" : 9.0,
									"patching_rect" : [ 36.0, 38.0, 368.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In those cases the jcom.message instance only serves documentation purposes (HTML auto-generation and OSC namespace browsing).",
									"linecount" : 2,
									"id" : "obj-14",
									"fontsize" : 9.0,
									"patching_rect" : [ 35.0, 72.0, 370.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\/preset",
									"id" : "obj-15",
									"fontsize" : 9.0,
									"patching_rect" : [ 35.0, 240.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\/ui",
									"id" : "obj-16",
									"fontsize" : 9.0,
									"patching_rect" : [ 35.0, 543.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 238.5, 634.0, 481.0, 634.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p view_documentation",
					"linecount" : 2,
					"id" : "obj-6",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 611.0, 276.0, 99.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"rect" : [ 10.0, 59.0, 517.0, 594.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 517.0, 594.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message documentation\/generate @type msg_none @description \"Generate html documentation for the module.\"",
									"linecount" : 2,
									"id" : "obj-1",
									"fontsize" : 9.0,
									"patching_rect" : [ 35.0, 452.0, 282.0, 28.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"patching_rect" : [ 337.0, 27.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 337.0, 255.0, 80.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 176.0, 313.0, 36.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 176.0, 292.0, 20.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 151.0, 83.0, 20.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl reg",
									"outlettype" : [ "", "" ],
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 151.0, 104.0, 36.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 151.0, 125.0, 64.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontsize" : 9.0,
									"patching_rect" : [ 151.0, 146.0, 45.0, 17.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax htmlref $1",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontsize" : 9.0,
									"patching_rect" : [ 176.0, 334.0, 81.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message documentation\/html @type msg_none @description \"Open the online html reference for this module.\"",
									"linecount" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-11",
									"fontsize" : 9.0,
									"patching_rect" : [ 35.0, 255.0, 292.0, 28.0 ],
									"numinlets" : 0,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.message documentation\/help @type msg_none @description \"Open the help patch for the module.\"",
									"linecount" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-12",
									"fontsize" : 9.0,
									"patching_rect" : [ 35.0, 44.0, 242.0, 28.0 ],
									"numinlets" : 0,
									"numoutlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This one is handled internally by jcom.hub. It is only here for documentation purposes.",
									"linecount" : 2,
									"id" : "obj-13",
									"fontsize" : 9.0,
									"patching_rect" : [ 35.0, 423.0, 202.0, 28.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [ 346.5, 300.0, 202.5, 300.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [ 346.0, 86.0, 177.5, 86.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route MODULE_TITLE",
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 223.0, 437.0, 104.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jcom.init",
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 348.0, 118.0, 58.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.remote __GUI__",
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 155.0, 205.0, 109.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0__FROM_GUI_AUDIO_COMPONENT",
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 666.0, 359.0, 184.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector_message",
					"text" : "jcom.message open_inspector @description \"Open this module's inspector window to gain access to additional information or parameters.\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 522.0, 7.0, 341.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom_init",
					"outlettype" : [ "" ],
					"id" : "obj-12",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 348.0, 163.0, 53.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0__FROM_GUI_VIDEO_COMPONENT",
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 652.0, 339.0, 182.0, 17.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 326.0, 270.0, 45.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 383.0, 276.0, 50.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t menu_build",
					"linecount" : 2,
					"outlettype" : [ "menu_build" ],
					"id" : "obj-16",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 497.0, 276.0, 56.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend menu_presets_add",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 383.0, 299.0, 99.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t menu_presets_clear",
					"linecount" : 2,
					"outlettype" : [ "menu_presets_clear" ],
					"id" : "obj-18",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 440.0, 336.0, 96.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 87.0, 422.0, 32.0, 15.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 348.0, 140.0, 50.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b 1",
					"outlettype" : [ "bang" ],
					"id" : "obj-21",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 269.0, 310.0, 22.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"id" : "obj-22",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 269.0, 412.0, 60.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js jcom.gui.constructor.js",
					"outlettype" : [ "", "", "", "", "" ],
					"id" : "obj-23",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 269.0, 391.0, 128.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route x ATTRIBUTES BUILD PARAMETER NEW_PRESETS NEW_PRESETS_START MENU_REBUILD UI_FREEZE MODULE_NAME",
					"linecount" : 2,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
					"id" : "obj-24",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 155.0, 232.0, 527.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 10,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 223.0, 459.0, 59.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Connect a loadbang here to enable debug posts.",
					"linecount" : 2,
					"id" : "obj-28",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 684.0, 491.0, 128.0, 28.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictctrl",
					"varname" : "inspector_button",
					"outlettype" : [ "int" ],
					"id" : "obj-31",
					"trackhorizontal" : 1,
					"snap" : 1,
					"inactiveimage" : 1,
					"trackvertical" : 1,
					"patching_rect" : [ 495.0, 3.0, 11.0, 11.0 ],
					"numinlets" : 1,
					"multiplier" : 1,
					"tracking" : 1,
					"name" : "jcom.button.info.pct",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "\/jamoma",
					"id" : "obj-29",
					"textcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"frgb" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 0.0, 134.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "param_reference",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-2",
					"labelclick" : 1,
					"fontsize" : 9.0,
					"items" : [  ],
					"patching_rect" : [ 15.0, 1.0, 72.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "menu",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-27",
					"labelclick" : 1,
					"fontsize" : 9.0,
					"items" : [ "Defeat Signal Meters", ",", "Clear Signal Meters", ",", "-", ",", "Load Settings...", ",", "Save Settings...", ",", "Restore Default Settings", ",", "-", ",", "Open Online Reference", ",", "View Internal Components" ],
					"patching_rect" : [ 0.0, 1.0, 15.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "background-titlebar",
					"id" : "obj-37",
					"border" : 1,
					"patching_rect" : [ 0.0, 0.0, 509.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 7
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "background",
					"id" : "obj-36",
					"border" : 1,
					"patching_rect" : [ 0.0, 0.0, 509.0, 60.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"rounded" : 7
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-4", 5 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-4", 4 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 4 ],
					"destination" : [ "obj-4", 3 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 8 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 6 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 5 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 4 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 3 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 7 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 559.611084, 384.0, 278.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 449.5, 384.0, 278.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 392.5, 384.0, 278.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 506.5, 384.0, 278.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 620.5, 384.0, 278.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 220.944443, 380.0, 278.5, 380.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 675.5, 384.0, 278.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 661.5, 384.0, 278.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 220.944443, 433.0, 232.5, 433.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 4 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"midpoints" : [ 387.5, 482.0, 138.0, 482.0, 138.0, 196.0, 164.5, 196.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 3 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
