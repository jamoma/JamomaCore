{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 17.0, 44.0, 978.0, 826.0 ],
		"bglocked" : 0,
		"defrect" : [ 17.0, 44.0, 978.0, 826.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Receive MIDI CHannel messages wrapped as OSC messages",
					"numoutlets" : 0,
					"patching_rect" : [ 525.0, 650.0, 357.0, 19.0 ],
					"id" : "obj-8",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 524.0, 648.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/panel/open",
					"linecount" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 280.0, 640.0, 50.0, 29.0 ],
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Write Program",
					"prototypename" : "jamoma settings",
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 460.0, 90.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"outlettype" : [ "", "", "int" ],
					"rounded" : 8.0,
					"texton" : "recording",
					"fontname" : "Verdana",
					"border" : 1,
					"text" : "Write Program",
					"align" : 0,
					"presentation_rect" : [ 165.0, 160.0, 98.0, 21.000002 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Write Bank",
					"prototypename" : "jamoma settings",
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 395.0, 90.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-6",
					"outlettype" : [ "", "", "int" ],
					"rounded" : 8.0,
					"texton" : "recording",
					"fontname" : "Verdana",
					"border" : 1,
					"text" : "Write Bank",
					"align" : 0,
					"presentation_rect" : [ 165.0, 135.0, 98.0, 21.000002 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Read Bank",
					"prototypename" : "jamoma settings",
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 330.0, 90.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-4",
					"outlettype" : [ "", "", "int" ],
					"rounded" : 8.0,
					"texton" : "recording",
					"fontname" : "Verdana",
					"border" : 1,
					"text" : "Read Bank",
					"align" : 0,
					"presentation_rect" : [ 165.0, 110.0, 98.0, 21.000002 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "View Interface",
					"prototypename" : "jamoma settings",
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 255.0, 90.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-2",
					"outlettype" : [ "", "", "int" ],
					"rounded" : 8.0,
					"texton" : "recording",
					"fontname" : "Verdana",
					"border" : 1,
					"text" : "View Interface",
					"align" : 0,
					"presentation_rect" : [ 165.0, 85.0, 98.0, 21.000002 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message vst/title @type msg_symbol @description \"Change the title displayed for the name of the plug-ins\" edit window.",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 530.0, 346.0, 31.0 ],
					"id" : "obj-1",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message vst/write/program @type msg_generic @description \"Write current settings to an  individual effect program file.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 485.0, 351.0, 31.0 ],
					"id" : "obj-3",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message vst/write/bank @type msg_generic @description \"Write current effect settings to a program bank file.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 420.0, 333.0, 31.0 ],
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message vst/read @type msg_generic @description \"Read a VS  file \rof effect programs, either in bank or individual program format.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 356.0, 387.0, 31.0 ],
					"id" : "obj-7",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0_menu_rect",
					"numoutlets" : 0,
					"patching_rect" : [ 525.0, 820.0, 92.0, 19.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_get_position",
					"numoutlets" : 1,
					"patching_rect" : [ 525.0, 725.0, 99.0, 19.0 ],
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numoutlets" : 1,
					"patching_rect" : [ 525.0, 800.0, 31.0, 19.0 ],
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl compare Programs",
					"numoutlets" : 2,
					"patching_rect" : [ 575.0, 775.0, 118.0, 19.0 ],
					"id" : "obj-14",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js patchdescribe.js",
					"numoutlets" : 5,
					"patching_rect" : [ 525.0, 750.0, 126.0, 19.0 ],
					"id" : "obj-15",
					"outlettype" : [ "", "", "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "none",
					"numoutlets" : 1,
					"patching_rect" : [ 472.0, 152.0, 33.0, 17.0 ],
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"patching_rect" : [ 419.0, 529.0, 65.0, 19.0 ],
					"id" : "obj-17",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.midi.channel_messages_receive",
					"numoutlets" : 0,
					"patching_rect" : [ 525.0, 670.0, 201.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Plug-In",
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 27.0, 59.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-19",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 165.0, 25.0, 59.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p regex-magic",
					"numoutlets" : 1,
					"patching_rect" : [ 526.0, 227.0, 81.0, 19.0 ],
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 74.0, 470.0, 344.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 470.0, 344.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"patching_rect" : [ 130.0, 40.0, 54.0, 19.0 ],
									"id" : "obj-1",
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "re /Library/Audio/Plug-Ins/VST/, substitute \" \"",
									"numoutlets" : 1,
									"patching_rect" : [ 185.0, 170.0, 244.0, 17.0 ],
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "re \"C:/Program Files/Steinberg/Vstplugins\", substitute \" \"",
									"numoutlets" : 1,
									"patching_rect" : [ 130.0, 140.0, 298.0, 17.0 ],
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel windows macintosh",
									"numoutlets" : 3,
									"patching_rect" : [ 130.0, 115.0, 124.0, 19.0 ],
									"id" : "obj-4",
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route os",
									"numoutlets" : 2,
									"patching_rect" : [ 130.0, 90.0, 50.0, 19.0 ],
									"id" : "obj-5",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "js jcom.js_systeminfo.js",
									"numoutlets" : 1,
									"patching_rect" : [ 130.0, 65.0, 131.0, 19.0 ],
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 69.0, 54.0, 19.0 ],
									"id" : "obj-7",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 230.0, 54.0, 19.0 ],
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 255.0, 68.0, 19.0 ],
									"id" : "obj-9",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp",
									"numoutlets" : 5,
									"patching_rect" : [ 50.0, 205.0, 66.0, 19.0 ],
									"id" : "obj-10",
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 25.0, 25.0, 25.0 ],
									"id" : "obj-11",
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 285.0, 25.0, 25.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
									"source" : [ "obj-4", 1 ],
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
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p fill_menu",
					"numoutlets" : 1,
					"patching_rect" : [ 526.0, 122.0, 65.0, 19.0 ],
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 74.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 74.0, 600.0, 426.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 40.0, 54.0, 19.0 ],
									"id" : "obj-1",
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "types BNDL aPcs, prefix /Library/Audio/Plug-Ins/VST, depth 5, populate",
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 175.0, 373.0, 17.0 ],
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "types aPcs, prefix \"C:/Program Files/Steinberg/Vstplugins\", depth 5, populate",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 140.0, 402.0, 17.0 ],
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel windows macintosh",
									"numoutlets" : 3,
									"patching_rect" : [ 50.0, 115.0, 124.0, 19.0 ],
									"id" : "obj-4",
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route os",
									"numoutlets" : 2,
									"patching_rect" : [ 50.0, 90.0, 50.0, 19.0 ],
									"id" : "obj-5",
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "js jcom.js_systeminfo.js",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 65.0, 131.0, 19.0 ],
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 200.0, 25.0, 25.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
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
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
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
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"numoutlets" : 1,
					"patching_rect" : [ 472.0, 35.0, 35.0, 17.0 ],
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "VstPlug",
					"prefix" : "Macintosh HD:/Library/Audio/Plug-Ins/VST/",
					"numoutlets" : 3,
					"patching_rect" : [ 526.0, 148.0, 150.0, 19.0 ],
					"presentation" : 1,
					"pattrmode" : 1,
					"id" : "obj-23",
					"outlettype" : [ "int", "", "" ],
					"types" : [ "BNDL", "aPcs" ],
					"fontname" : "Verdana",
					"depth" : 5,
					"presentation_rect" : [ 5.0, 25.0, 150.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "20 Bands Eq.vst", ",", "5 Band Eq.vst", ",", "Audio Ease/Altiverb 6.vst", ",", "Bassdrum.vst", ",", "Buff rice.vst", ",", "Compressor.vst", ",", "Convolution reverb mono.vst", ",", "Convolution reverb stereo.vst", ",", "DC Blocker.vst", ",", "endless series/endless flanger.vst", ",", "endless series/endless phaser.vst", ",", "endless series/endless shifter.vst", ",", "endless series/endless tone.vst", ",", "Flying monkey synth.vst", ",", "Funky repeater.vst", ",", "Gate.vst", ",", "Graphic Equalizer.vst", ",", "Hipno/Amogwai.vst", ",", "Hipno/Brita.vst", ",", "Hipno/Bus.Envelope.vst", ",", "Hipno/Bus.Receive.vst", ",", "Hipno/Bus.Send.vst", ",", "Hipno/Bus.Xover.vst", ",", "Hipno/ChannelStrip.vst", ",", "Hipno/Chazoohm.vst", ",", "Hipno/CrackVerb.vst", ",", "Hipno/Deluge.vst", ",", "Hipno/DrunkenSailor.vst", ",", "Hipno/GoMoDo.vst", ",", "Hipno/GrainBandit.vst", ",", "Hipno/GrainStream.vst", ",", "Hipno/Greequaincer.vst", ",", "Hipno/Invertonudge.vst", ",", "Hipno/LiquiDigital.vst", ",", "Hipno/LoopDeeLa.vst", ",", "Hipno/MasterNeedle.vst", ",", "Hipno/Modulator.Gen.vst", ",", "Hipno/Modulator.Human.vst", ",", "Hipno/Modulator.Remap.vst", ",", "Hipno/Modulator.VColorTrack.vst", ",", "Hipno/Modulator.VMotion.vst", ",", "Hipno/Modulator.VScene.vst", ",", "Hipno/Morphulescence.vst", ",", "Hipno/Multilution.vst", ",", "Hipno/RTAQ.vst", ",", "Hipno/Sbinulator.vst", ",", "Hipno/Sffizzlerr.vst", ",", "Hipno/SfylterBank.vst", ",", "Hipno/SfylterSynth.vst", ",", "Hipno/Shypht.vst", ",", "Hipno/Spuntorrt.vst", ",", "Hipno/Squeegee.vst", ",", "Hipno/SquiglyQ.vst", ",", "Hipno/Substrate.vst", ",", "Hipno/Technifly.vst", ",", "Hipno/Technishypht.vst", ",", "Hipno/VAirTime.vst", ",", "Hipno/VDelay.vst", ",", "Hipno/VSynth.vst", ",", "Hipno/VTheremin.vst", ",", "Hum remover.vst", ",", "JACK-insert.vst", ",", "Limiter.vst", ",", "Mackie Plug-ins/DSR.vst", ",", "Mackie Plug-ins/FinalMix.vst", ",", "Mackie Plug-ins/Mono Comp.vst", ",", "Mackie Plug-ins/Mono Sidechain Comp.vst", ",", "Mackie Plug-ins/Stereo Comp.vst", ",", "Mackie Plug-ins/Stereo Sidechain Comp.vst", ",", "Mackie Plug-ins/Three Band Comp.vst", ",", "MIDI Filter.vst", ",", "Multiband freeverb.vst", ",", "Multiband scraper.vst", ",", "noatikl_VSTi_mac.vst", ",", "Pianoteq21.vst", ",", "Pianoteq22.vst", ",", "Pianoteq23.vst", ",", "Pluggo/additive heaven.vst", ",", "Pluggo/analogue drums.vst", ",", "Pluggo/analogue percussion.vst", ",", "Pluggo/Audio Rate Pan.vst", ",", "Pluggo/Audio2Control.vst", ",", "Pluggo/Average Injector.vst", ",", "Pluggo/bassline.vst", ",", "Pluggo/beatN.vst", ",", "Pluggo/big ben bell.vst", ",", "Pluggo/Breakpoints.vst", ",", "Pluggo/Center Channel.vst", ",", "Pluggo/Chamberverb.vst", ",", "Pluggo/Chorus x2.vst", ",", "Pluggo/Comber.vst", ",", "Pluggo/Control2Audio.vst", ",", "Pluggo/Convolver.vst", ",", "Pluggo/Cyclotron.vst", ",", "Pluggo/D-Meter.vst", ",", "Pluggo/deep bass.vst", ",", "Pluggo/Degrader.vst", ",", "Pluggo/Dynamical.vst", ",", "Pluggo/easy sampler.vst", ",", "Pluggo/Env Follower.vst", ",", "Pluggo/Feedback Network.vst", ",", "Pluggo/filtered drums.vst", ",", "Pluggo/FilterTaps.vst", ",", "Pluggo/Flange-o-tron.vst", ",", "Pluggo/flying waves.vst", ",", "Pluggo/fm 4-op.vst", ",", "Pluggo/Fragulator.vst", ",", "Pluggo/Frequency Shift.vst", ",", "Pluggo/Generic Effect.vst", ",", "Pluggo/Granular-to-Go.vst", ",", "Pluggo/harmonic dreamz.vst", ",", "Pluggo/Harmonic Filter.vst", ",", "Pluggo/HF Ring Mod.vst", ",", "Pluggo/Jet.vst", ",", "Pluggo/Key Triggers.vst", ",", "Pluggo/KnaveStories.vst", ",", "Pluggo/Laverne.vst", ",", "Pluggo/LFO.vst", ",", "Pluggo/Light Organ.vst", ",", "Pluggo/Limi.vst", ",", "Pluggo/lofi drums.vst", ",", "Pluggo/LongStereoDelay.vst", ",", "Pluggo/M2M.vst", ",", "Pluggo/Mangle Filter.vst", ",", "Pluggo/Monstercrunch.vst", ",", "Pluggo/Mouse Mod.vst", ",", "Pluggo/Moving Filters.vst", ",", "Pluggo/moving waves.vst", ",", "Pluggo/Multi-Filter.vst", ",", "Pluggo/Multi-Filter[S].vst", ",", "Pluggo/Nebula.vst", ",", "Pluggo/Noyzckippr.vst", ",", "Pluggo/OneByEight.vst", ",", "Pluggo/Pendulum.vst", ",", "Pluggo/pgs-1.vst", ",", "Pluggo/Phase Scope.vst", ",", "Pluggo/Phase Shifter.vst", ",", "Pluggo/Phone Filter.vst", ",", "Pluggo/PluggoBus Rcv.vst", ",", "Pluggo/PluggoBus Send.vst", ",", "Pluggo/PluggoFuzz.vst", ",", "Pluggo/PluggoSync.vst", ",", "Pluggo/PlugLogic.vst", ",", "Pluggo/PlugLoop.vst", ",", "Pluggo/qsynth.vst", ",", "Pluggo/quick drums.vst", ",", "Pluggo/Raindrops.vst", ",", "Pluggo/Randomizer.vst", ",", "Pluggo/Resonation.vst", ",", "Pluggo/Resosweep.vst", ",", "Pluggo/Ring Modulator.vst", ",", "Pluggo/Rough Reverb.vst", ",", "Pluggo/Rye.vst", ",", "Pluggo/shape synth.vst", ",", "Pluggo/ShepardTones.vst", ",", "Pluggo/Shuffler.vst", ",", "Pluggo/Sine Bank.vst", ",", "Pluggo/Sizzle Delays.vst", ",", "Pluggo/Slice-n-Dice.vst", ",", "Pluggo/Space Echo.vst", ",", "Pluggo/Spectral Filter.vst", ",", "Pluggo/Speed Shifter.vst", ",", "Pluggo/SquirrelParade.vst", ",", "Pluggo/Step Sequencer.vst", ",", "Pluggo/Stereo Adjuster.vst", ",", "Pluggo/Stereo Faker.vst", ",", "Pluggo/Stutterer.vst", ",", "Pluggo/Swirl.vst", ",", "Pluggo/Swish.vst", ",", "Pluggo/TapNet.vst", ",", "Pluggo/Tapped Delay.vst", ",", "Pluggo/Tremellow.vst", ",", "Pluggo/Very Long Delay.vst", ",", "Pluggo/Vibrato Cauldron.vst", ",", "Pluggo/vocalese.vst", ",", "Pluggo/Vocoder 10-band.vst", ",", "Pluggo/Vocoder 16-band.vst", ",", "Pluggo/Warble.vst", ",", "Pluggo/Warpoon.vst", ",", "Pluggo/WasteBand.vst", ",", "Pluggo/Waveshaper.vst", ",", "Pluggo/wavy waves.vst", ",", "Pluggo/Wheat.vst", ",", "Pluggo/white grains.vst", ",", "Pluggo/Xformer.vst", ",", "Pluggo/xmod synth.vst", ",", "Rainy synth.vst", ",", "Simple reverb.vst", ",", "Spectral Shapers/+binaural.vst", ",", "Spectral Shapers/+chebyshev.vst", ",", "Spectral Shapers/+compand.vst", ",", "Spectral Shapers/+decimate.vst", ",", "Spectral Shapers/+matrix.vst", ",", "Spectral Shapers/+morphfilter.vst", ",", "Spectral Shapers/+phasescope.vst", ",", "Spectral Shapers/+spectralcompand.vst", ",", "Spectral Shapers/+spectralgate.vst", ",", "Swamp buffer.vst", ",", "Synful Orchestra VST.vst", ",", "UVIWorkstationVST.vst", ",", "Valve warmer.vst", ",", "Width Enhancer.vst" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_pgm_menu",
					"numoutlets" : 1,
					"patching_rect" : [ 526.0, 34.0, 94.0, 19.0 ],
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "vst/plug",
					"text" : "jcom.parameter vst/plug @type msg_generic @priority 1 @repetitions/allow 0 @description \"Load a VST effect.  An optional argument define what VST plug-in to open. The plug-in has to be in the Max search path.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"patching_rect" : [ 526.0, 179.0, 397.0, 43.0 ],
					"id" : "obj-26",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message vst/open @type msg_generic @description \"Open the plug-in's edit window. Two optional integer values specifying the left and top window \rcoordinates respectively.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 280.0, 405.0, 43.0 ],
					"id" : "obj-29",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "parameters",
					"text" : "p inspector",
					"numoutlets" : 1,
					"patching_rect" : [ 419.0, 504.0, 64.0, 19.0 ],
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 3,
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 102.0, 44.0, 1338.0, 761.0 ],
						"bgcolor" : [ 0.094118, 0.094118, 0.094118, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 102.0, 44.0, 1338.0, 761.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"numoutlets" : 1,
									"patching_rect" : [ 445.0, 335.0, 22.0, 19.0 ],
									"id" : "obj-1",
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim 2000",
									"numoutlets" : 1,
									"patching_rect" : [ 445.0, 361.0, 59.0, 19.0 ],
									"id" : "obj-2",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags zoom, window exec",
									"linecount" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 445.0, 385.0, 111.0, 29.0 ],
									"id" : "obj-3",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Plug-In Parameters 8++",
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 6.0, 148.0, 19.0 ],
									"id" : "obj-4",
									"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"fontname" : "Verdana",
									"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_gate",
									"numoutlets" : 0,
									"patching_rect" : [ 1025.0, 155.0, 60.0, 19.0 ],
									"id" : "obj-5",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_gate",
									"numoutlets" : 1,
									"patching_rect" : [ 560.0, 265.0, 59.0, 19.0 ],
									"id" : "obj-6",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_gate",
									"numoutlets" : 0,
									"patching_rect" : [ 560.0, 220.0, 60.0, 19.0 ],
									"id" : "obj-7",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"numoutlets" : 2,
									"patching_rect" : [ 685.0, 160.0, 50.0, 19.0 ],
									"id" : "obj-8",
									"hidden" : 1,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 675.0, 325.0, 28.0, 28.0 ],
									"id" : "obj-9",
									"hidden" : 1,
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1<8 then 2 else 1",
									"numoutlets" : 1,
									"patching_rect" : [ 560.0, 195.0, 117.0, 19.0 ],
									"id" : "obj-10",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"numoutlets" : 2,
									"patching_rect" : [ 560.0, 295.0, 132.0, 19.0 ],
									"id" : "obj-11",
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p set_values",
									"numoutlets" : 2,
									"patching_rect" : [ 970.0, 100.0, 72.0, 19.0 ],
									"id" : "obj-12",
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 473.0, 320.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 473.0, 320.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 310.0, 226.0, 30.0, 30.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1<8 then 2 else 1",
													"numoutlets" : 1,
													"patching_rect" : [ 310.0, 162.0, 117.0, 19.0 ],
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script send parameter/%s %f",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 185.0, 193.0, 19.0 ],
													"id" : "obj-3",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 s",
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 130.0, 63.0, 19.0 ],
													"id" : "obj-4",
													"outlettype" : [ "int", "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0_params 1",
													"numoutlets" : 4,
													"patching_rect" : [ 50.0, 105.0, 97.0, 19.0 ],
													"id" : "obj-5",
													"outlettype" : [ "", "", "", "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0.",
													"numoutlets" : 2,
													"patching_rect" : [ 50.0, 75.0, 193.0, 19.0 ],
													"id" : "obj-6",
													"outlettype" : [ "int", "float" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 20.0, 30.0, 30.0 ],
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 226.0, 30.0, 30.0 ],
													"id" : "obj-8",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 103.5, 154.0, 59.5, 154.0 ]
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
													"source" : [ "obj-7", 0 ],
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
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 58.0, 319.5, 58.0 ]
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
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 970.0, 20.0, 28.0, 28.0 ],
									"id" : "obj-13",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p delete_old",
									"numoutlets" : 3,
									"patching_rect" : [ 890.0, 100.0, 70.0, 19.0 ],
									"id" : "obj-14",
									"hidden" : 1,
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1<8 then 2 else 1",
													"numoutlets" : 1,
													"patching_rect" : [ 460.0, 195.0, 117.0, 19.0 ],
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 460.0, 235.0, 28.0, 28.0 ],
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl rot 1",
													"numoutlets" : 2,
													"patching_rect" : [ 80.0, 120.0, 44.0, 19.0 ],
													"id" : "obj-3",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script delete textslider/%s",
													"numoutlets" : 1,
													"patching_rect" : [ 270.0, 195.0, 177.0, 19.0 ],
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl ecils 1",
													"numoutlets" : 2,
													"patching_rect" : [ 80.0, 150.0, 398.0, 19.0 ],
													"id" : "obj-5",
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script delete parameter/%s",
													"numoutlets" : 1,
													"patching_rect" : [ 80.0, 195.0, 182.0, 19.0 ],
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll #0_params 1",
													"numoutlets" : 4,
													"patching_rect" : [ 80.0, 95.0, 97.0, 19.0 ],
													"id" : "obj-7",
													"outlettype" : [ "", "", "", "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 clear dump",
													"numoutlets" : 3,
													"patching_rect" : [ 45.0, 65.0, 82.0, 19.0 ],
													"id" : "obj-8",
													"outlettype" : [ "int", "clear", "dump" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 45.0, 15.0, 28.0, 28.0 ],
													"id" : "obj-9",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 80.0, 235.0, 28.0, 28.0 ],
													"id" : "obj-10",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 235.0, 28.0, 28.0 ],
													"id" : "obj-11",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
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
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route append clear",
									"numoutlets" : 3,
									"patching_rect" : [ 685.0, 60.0, 103.0, 19.0 ],
									"id" : "obj-15",
									"hidden" : 1,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 685.0, 20.0, 28.0, 28.0 ],
									"id" : "obj-16",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 1095.0, 21.0, 28.0, 28.0 ],
									"id" : "obj-17",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"numoutlets" : 1,
									"patching_rect" : [ 1095.0, 120.0, 40.0, 19.0 ],
									"id" : "obj-18",
									"hidden" : 1,
									"outlettype" : [ "front" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /panel/open",
									"numoutlets" : 2,
									"patching_rect" : [ 1095.0, 65.0, 146.0, 19.0 ],
									"id" : "obj-20",
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 24 24 24",
									"numoutlets" : 0,
									"patching_rect" : [ 560.0, 470.0, 94.0, 19.0 ],
									"id" : "obj-21",
									"hidden" : 1,
									"fontname" : "Verdana",
									"numinlets" : 4,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p create_new_parameter",
									"numoutlets" : 1,
									"patching_rect" : [ 685.0, 255.0, 137.0, 19.0 ],
									"id" : "obj-22",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 0.0, 88.0, 1535.0, 587.0 ],
										"bglocked" : 0,
										"defrect" : [ 0.0, 88.0, 1535.0, 587.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "param_number (int) param_number (int) name of param (symbol)",
													"linecount" : 3,
													"numoutlets" : 0,
													"patching_rect" : [ 220.0, 30.0, 141.0, 43.0 ],
													"id" : "obj-24",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Input: ",
													"numoutlets" : 0,
													"patching_rect" : [ 220.0, 15.0, 120.0, 19.0 ],
													"id" : "obj-23",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "presentation_rect $1 $2 $3 $4",
													"numoutlets" : 1,
													"patching_rect" : [ 785.0, 105.0, 162.0, 17.0 ],
													"id" : "obj-20",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "bpatcher",
													"numoutlets" : 0,
													"patching_rect" : [ 1020.0, 65.0, 128.0, 128.0 ],
													"id" : "obj-18",
													"name" : "jmod.",
													"args" : [ "myModule" ],
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script hidden newdefault textslider/%s %ld %ld bpatche 14 @presentation_rect %ld %ld 150b @args 0.3",
													"numoutlets" : 1,
													"patching_rect" : [ 545.0, 40.0, 580.0, 19.0 ],
													"id" : "obj-17",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 5,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script hidden newdefault parameter/%s",
													"numoutlets" : 1,
													"patching_rect" : [ 605.0, 80.0, 246.0, 19.0 ],
													"id" : "obj-16",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 170",
													"numoutlets" : 1,
													"patching_rect" : [ 660.0, 195.0, 39.0, 19.0 ],
													"id" : "obj-1",
													"outlettype" : [ "int" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script bringtofront textslider/%s",
													"linecount" : 3,
													"numoutlets" : 1,
													"patching_rect" : [ 165.0, 280.0, 82.0, 43.0 ],
													"id" : "obj-2",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p xy-position",
													"numoutlets" : 2,
													"patching_rect" : [ 212.0, 111.0, 74.0, 19.0 ],
													"id" : "obj-3",
													"outlettype" : [ "int", "int" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 10.0, 59.0, 395.0, 466.0 ],
														"bglocked" : 0,
														"defrect" : [ 10.0, 59.0, 395.0, 466.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 15",
																	"numoutlets" : 1,
																	"patching_rect" : [ 136.0, 201.0, 33.0, 18.0 ],
																	"id" : "obj-1",
																	"outlettype" : [ "int" ],
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 5 i",
																	"numoutlets" : 2,
																	"patching_rect" : [ 249.0, 220.0, 29.0, 18.0 ],
																	"id" : "obj-2",
																	"outlettype" : [ "int", "int" ],
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "i",
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 220.0, 27.0, 18.0 ],
																	"id" : "obj-3",
																	"outlettype" : [ "int" ],
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"numoutlets" : 2,
																	"patching_rect" : [ 50.0, 142.0, 28.0, 18.0 ],
																	"id" : "obj-4",
																	"outlettype" : [ "bang", "int" ],
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r #0_menu_rect",
																	"numoutlets" : 1,
																	"patching_rect" : [ 88.0, 133.0, 90.0, 18.0 ],
																	"id" : "obj-5",
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"numinlets" : 0,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 20",
																	"numoutlets" : 1,
																	"patching_rect" : [ 136.0, 176.0, 33.0, 18.0 ],
																	"id" : "obj-6",
																	"outlettype" : [ "int" ],
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "unpack 0 0",
																	"numoutlets" : 2,
																	"patching_rect" : [ 88.0, 155.0, 64.0, 18.0 ],
																	"id" : "obj-7",
																	"outlettype" : [ "int", "int" ],
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 80.0, 370.0, 15.0, 15.0 ],
																	"id" : "obj-8",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s #0_get_position",
																	"numoutlets" : 0,
																	"patching_rect" : [ 88.0, 111.0, 99.0, 18.0 ],
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"numinlets" : 1,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 1",
																	"numoutlets" : 2,
																	"patching_rect" : [ 88.0, 89.0, 32.0, 18.0 ],
																	"id" : "obj-10",
																	"outlettype" : [ "bang", "" ],
																	"fontname" : "Verdana",
																	"numinlets" : 2,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 370.0, 15.0, 15.0 ],
																	"id" : "obj-11",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 7 8 10 25",
																	"numoutlets" : 1,
																	"patching_rect" : [ 249.0, 188.0, 85.0, 18.0 ],
																	"id" : "obj-12",
																	"outlettype" : [ "int" ],
																	"fontname" : "Verdana",
																	"color" : [ 0.4, 0.4, 0.8, 1.0 ],
																	"numinlets" : 6,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 1 2 68 83",
																	"numoutlets" : 1,
																	"patching_rect" : [ 80.0, 220.0, 85.0, 18.0 ],
																	"id" : "obj-13",
																	"outlettype" : [ "int" ],
																	"fontname" : "Verdana",
																	"color" : [ 0.4, 0.4, 0.8, 1.0 ],
																	"numinlets" : 6,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "split 1 7",
																	"numoutlets" : 2,
																	"patching_rect" : [ 50.0, 64.0, 209.0, 18.0 ],
																	"id" : "obj-14",
																	"outlettype" : [ "int", "int" ],
																	"fontname" : "Verdana",
																	"numinlets" : 3,
																	"fontsize" : 9.873845
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																	"id" : "obj-15",
																	"outlettype" : [ "int" ],
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 1 ],
																	"destination" : [ "obj-13", 0 ],
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
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 59.5, 85.0, 97.5, 85.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-13", 3 ],
																	"hidden" : 0,
																	"midpoints" : [ 145.5, 198.0, 129.100006, 198.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-13", 4 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 1 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "deferlow",
													"numoutlets" : 1,
													"patching_rect" : [ 14.0, 103.0, 51.0, 19.0 ],
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_get_param_value",
													"numoutlets" : 0,
													"patching_rect" : [ 14.0, 167.0, 128.0, 19.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "get $1",
													"numoutlets" : 1,
													"patching_rect" : [ 14.0, 134.0, 41.0, 17.0 ],
													"id" : "obj-6",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "$3 $1",
													"numoutlets" : 1,
													"patching_rect" : [ 165.0, 61.0, 37.0, 17.0 ],
													"id" : "obj-7",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack s 0",
													"numoutlets" : 2,
													"patching_rect" : [ 165.0, 87.0, 63.0, 19.0 ],
													"id" : "obj-8",
													"outlettype" : [ "", "int" ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script hidden connect textslider/%s 0 parameter/%s 0",
													"linecount" : 3,
													"numoutlets" : 1,
													"patching_rect" : [ 395.0, 280.0, 132.0, 43.0 ],
													"id" : "obj-9",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script hidden connect parameter/%s 0 textslider/%s 0",
													"linecount" : 3,
													"numoutlets" : 1,
													"patching_rect" : [ 248.0, 280.0, 127.0, 43.0 ],
													"id" : "obj-10",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 2,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"patching_rect" : [ 165.0, 15.0, 30.0, 30.0 ],
													"id" : "obj-11",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 165.0, 400.0, 30.0, 30.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script hidden newdefault textslider/%s %ld %ld bpatche 14 @presentation_rect %ld %ld 150b @args 0.3 @text %s",
													"linecount" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 931.0, 280.0, 583.0, 31.0 ],
													"id" : "obj-13",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 6,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf script hidden new parameter/%s newex %ld %ld 341 196617 jcom.parameter parameter/%s @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler @priority 3 @description \"Nth parameter of the VST plugin.\"",
													"linecount" : 4,
													"numoutlets" : 1,
													"patching_rect" : [ 540.0, 280.0, 386.0, 55.0 ],
													"id" : "obj-14",
													"outlettype" : [ "" ],
													"fontname" : "Verdana",
													"numinlets" : 4,
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Have to keep track of the names of all parameters in order to properly delete jcom.paramter instances when the vst is freed.",
													"linecount" : 2,
													"numoutlets" : 0,
													"patching_rect" : [ 410.0, 430.0, 322.0, 30.0 ],
													"id" : "obj-15",
													"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontname" : "Verdana",
													"numinlets" : 1,
													"fontsize" : 9.873845
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-13", 5 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 229.0, 1504.5, 229.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-13", 4 ],
													"hidden" : 0,
													"midpoints" : [ 276.5, 138.0, 1391.699951, 138.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-13", 3 ],
													"hidden" : 0,
													"midpoints" : [ 221.5, 182.0, 1278.900024, 182.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 232.0, 940.5, 232.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [ 221.5, 185.0, 1053.300049, 185.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [ 276.5, 142.0, 1166.099976, 142.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 940.5, 387.0, 174.5, 387.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-14", 3 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 235.0, 916.5, 235.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 238.0, 549.5, 238.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 241.0, 517.5, 241.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 244.0, 404.5, 244.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 247.0, 365.5, 247.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 250.0, 257.5, 250.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 163.0, 174.5, 163.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [ 221.5, 188.0, 669.5, 188.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 1 ],
													"destination" : [ "obj-14", 2 ],
													"hidden" : 0,
													"midpoints" : [ 276.5, 145.0, 794.166687, 145.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
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
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-7", 0 ],
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 549.5, 387.0, 174.5, 387.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 174.5, 324.0, 174.5, 324.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 257.5, 387.0, 174.5, 387.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 404.5, 387.0, 174.5, 387.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"numoutlets" : 2,
									"patching_rect" : [ 560.0, 440.0, 65.0, 19.0 ],
									"id" : "obj-23",
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0 s",
									"numoutlets" : 1,
									"patching_rect" : [ 685.0, 195.0, 84.0, 19.0 ],
									"id" : "obj-24",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"numinlets" : 3,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll #0_params 1",
									"numoutlets" : 4,
									"patching_rect" : [ 705.0, 230.0, 97.0, 19.0 ],
									"id" : "obj-25",
									"hidden" : 1,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s",
									"numoutlets" : 2,
									"patching_rect" : [ 685.0, 100.0, 84.0, 19.0 ],
									"id" : "obj-26",
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter",
									"numoutlets" : 4,
									"patching_rect" : [ 685.0, 130.0, 68.0, 19.0 ],
									"id" : "obj-27",
									"hidden" : 1,
									"outlettype" : [ "int", "", "", "int" ],
									"fontname" : "Verdana",
									"numinlets" : 5,
									"fontsize" : 10.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1104.5, 363.0, 569.5, 363.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 1,
									"midpoints" : [ 925.0, 284.0, 682.5, 284.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 1,
									"midpoints" : [ 979.5, 284.0, 682.5, 284.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [ 694.5, 221.0, 714.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-27", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-24", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 736.5, 91.0, 899.5, 91.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Programs",
					"numoutlets" : 3,
					"patching_rect" : [ 526.0, 60.0, 150.0, 19.0 ],
					"presentation" : 1,
					"pattrmode" : 1,
					"id" : "obj-31",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 5.0, 45.0, 150.0, 19.0 ],
					"numinlets" : 1,
					"items" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Program",
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 44.0, 59.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-32",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 165.0, 45.0, 59.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numoutlets" : 1,
					"patching_rect" : [ 175.0, 215.0, 196.0, 17.0 ],
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numoutlets" : 3,
					"patching_rect" : [ 121.0, 643.0, 71.0, 19.0 ],
					"id" : "obj-36",
					"outlettype" : [ "signal", "signal", "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~ 2",
					"numoutlets" : 4,
					"patching_rect" : [ 150.0, 380.0, 183.0, 19.0 ],
					"id" : "obj-37",
					"outlettype" : [ "signal", "signal", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"patching_rect" : [ 200.0, 235.0, 137.0, 17.0 ],
					"id" : "obj-38",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type audio @description \"A Jamoma module wrapper for vst plug-ins.\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 30.0, 270.0, 358.0, 31.0 ],
					"id" : "obj-41",
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 220.0, 87.0, 19.0 ],
					"id" : "obj-42",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 220.0, 26.0, 26.0 ],
					"id" : "obj-43",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"patching_rect" : [ 345.0, 235.0, 32.0, 17.0 ],
					"id" : "obj-44",
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 150.0, 345.0, 26.0, 26.0 ],
					"id" : "obj-45",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 121.0, 672.0, 26.0, 26.0 ],
					"id" : "obj-46",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "vst/program",
					"text" : "jcom.parameter vst/program @priority 2 @ramp/drive none @repetitions/allow 1 @description \"VST program.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 526.0, 89.0, 291.0, 31.0 ],
					"id" : "obj-47",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 320.0, 345.0, 26.0, 26.0 ],
					"id" : "obj-48",
					"outlettype" : [ "" ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.vst~ #0_",
					"numoutlets" : 5,
					"patching_rect" : [ 93.0, 468.0, 124.0, 19.0 ],
					"id" : "obj-49",
					"outlettype" : [ "", "signal", "signal", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "----signal inputs----",
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 349.0, 108.0, 19.0 ],
					"id" : "obj-50",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 310.0, 26.0, 26.0 ],
					"id" : "obj-51",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 149.0, 672.0, 26.0, 26.0 ],
					"id" : "obj-52",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 705.0, 107.0, 19.0 ],
					"id" : "obj-53",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This is a hack to get correct position of objects inside a bpatcher.",
					"numoutlets" : 0,
					"patching_rect" : [ 525.0, 705.0, 357.0, 19.0 ],
					"id" : "obj-54",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "parameter/<parameter name>",
					"text" : "jcom.parameter \"parameter/<parameter name>\" @type msg_float @range/bounds 0. 1. @range/clipmode both @ramp/drive scheduler @priority 3 @description \"Address specific parameter of the VST plugin.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"patching_rect" : [ 525.0, 590.0, 376.0, 43.0 ],
					"id" : "obj-55",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This one for autodoc purposes:",
					"numoutlets" : 0,
					"patching_rect" : [ 525.0, 570.0, 165.0, 19.0 ],
					"id" : "obj-56",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"prefix" : "audio",
					"has_mix" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"presentation" : 1,
					"id" : "obj-57",
					"has_mute" : 1,
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"has_bypass" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"has_gain" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-37", 2 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 561.25, 765.0, 584.5, 765.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 584.5, 798.0, 534.5, 798.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 258.0, 39.5, 258.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 258.0, 39.5, 258.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 354.5, 258.0, 39.5, 258.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 2 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [ 155.0, 631.0, 182.5, 631.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-49", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 3 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.25, 497.0, 428.5, 497.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 4 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [ 207.5, 490.0, 451.0, 490.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 2 ],
					"destination" : [ "obj-30", 2 ],
					"hidden" : 0,
					"midpoints" : [ 268.833344, 402.0, 473.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 481.5, 171.0, 535.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 534.5, 774.0, 546.5, 774.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 481.5, 63.0, 522.0, 63.0, 522.0, 57.0, 535.5, 57.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 535.5, 54.0, 535.5, 57.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 535.5, 141.0, 535.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 481.5, 138.0, 522.0, 138.0, 522.0, 144.0, 535.5, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 535.5, 246.0, 513.0, 246.0, 513.0, 147.0, 535.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 601.0, 171.0, 535.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [ 601.0, 84.0, 535.5, 84.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 2 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 268.833344, 428.0, 102.5, 428.0 ]
				}

			}
 ]
	}

}
