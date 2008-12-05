{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 37.0, 44.0, 1003.0, 596.0 ],
		"bglocked" : 0,
		"defrect" : [ 37.0, 44.0, 1003.0, 596.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 263.0, 449.0, 62.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-18",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"patching_rect" : [ 256.0, 365.0, 116.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "open" ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t open",
									"patching_rect" : [ 50.0, 122.0, 37.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "open" ],
									"fontname" : "Arial",
									"id" : "obj-43",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /panel/open",
									"patching_rect" : [ 50.0, 100.0, 116.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-44",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 199.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"id" : "obj-20",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message direct @type msg_generic @repetitions/allow 1 @description \"direct communication with the groove~ module\"",
					"patching_rect" : [ 326.0, 195.0, 565.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-31",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"grid" : 500.0,
					"vzoom" : 0.5,
					"waveformcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 36.0, 486.0, 115.20929, 13.0 ],
					"presentation" : 1,
					"numoutlets" : 6,
					"vticks" : 0,
					"buffername" : "1049_sample",
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"clipdraw" : 1,
					"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
					"selectioncolor" : [ 0.258824, 0.0, 0.007843, 0.5 ],
					"setmode" : 1,
					"presentation_rect" : [ 3.0, 60.0, 294.20929, 42.0 ],
					"labelbgcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"tickmarkcolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
					"textcolor" : [  ],
					"ticks" : 8,
					"id" : "obj-46",
					"numinlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"patching_rect" : [ 505.0, 65.0, 134.0, 20.0 ],
					"ignoreclick" : 1,
					"presentation" : 1,
					"numoutlets" : 2,
					"rounded" : 0.0,
					"outlettype" : [ "", "" ],
					"border" : 0.0,
					"types" : [  ],
					"presentation_rect" : [ 3.0, 1.0, 296.0, 99.0 ],
					"id" : "obj-60",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"patching_rect" : [ 363.0, 67.0, 129.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "int" ],
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 -1 0 -1",
					"patching_rect" : [ 164.0, 483.0, 51.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-29",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b s",
					"patching_rect" : [ 202.0, 459.0, 32.5, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter loopsync/mode @type msg_symbol @description \" modes: normalized, loop_time, sample_time\"",
					"patching_rect" : [ 450.0, 333.0, 510.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 481.0, 430.0, 14.0, 14.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"numinlets" : 1,
					"comment" : "loopsync signal "
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter loopsync/active @type msg_toggle @value/default 0",
					"patching_rect" : [ 450.0, 308.0, 315.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "reverse_button[2]",
					"patching_rect" : [ 315.0, 172.0, 79.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"texton" : "Loop On",
					"rounded" : 8.0,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"border" : 1,
					"text" : "Loop Off",
					"presentation_rect" : [ 247.0, 42.0, 50.0, 16.0 ],
					"fontname" : "Verdana",
					"id" : "obj-68",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "reverse_button[1]",
					"patching_rect" : [ 362.0, 282.0, 79.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"texton" : "VariSpeed On",
					"rounded" : 8.0,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"border" : 1,
					"text" : "VariSpeed Off",
					"presentation_rect" : [ 138.0, 42.0, 72.0, 16.0 ],
					"fontname" : "Verdana",
					"id" : "obj-67",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 2",
					"patching_rect" : [ 412.0, 35.0, 142.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"patching_rect" : [ 412.0, 12.0, 142.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 328.0, 45.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 165.0, 10.0, 80.0, 4.0 ],
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"patching_rect" : [ 322.0, 21.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 165.0, 5.0, 80.0, 4.0 ],
					"id" : "obj-34",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "VariSpeed factor",
					"triangle" : 0,
					"patching_rect" : [ 377.0, 257.0, 51.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "bang" ],
					"presentation_rect" : [ 211.0, 42.0, 34.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-63",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "reverse_button",
					"patching_rect" : [ 334.0, 222.0, 76.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"texton" : "Reverse",
					"rounded" : 8.0,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"border" : 1,
					"text" : "Reverse",
					"presentation_rect" : [ 89.0, 42.0, 48.0, 16.0 ],
					"fontname" : "Verdana",
					"id" : "obj-70",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button[1]",
					"patching_rect" : [ 310.0, 148.0, 49.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"texton" : "Play",
					"rounded" : 8.0,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"border" : 1,
					"text" : "Play",
					"presentation_rect" : [ 3.0, 42.0, 42.0, 16.0 ],
					"fontname" : "Verdana",
					"id" : "obj-84",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[1]",
					"patching_rect" : [ 308.0, 99.0, 49.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"texton" : "DSP",
					"rounded" : 8.0,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "int" ],
					"border" : 1,
					"text" : "Open",
					"presentation_rect" : [ 46.0, 42.0, 42.0, 16.0 ],
					"fontname" : "Verdana",
					"id" : "obj-83",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0__xxx_done",
					"patching_rect" : [ 367.0, 122.0, 87.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"id" : "obj-1",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "speed/active",
					"text" : "jcom.parameter speed/active @type msg_toggle @description \"turn on/off vari-speed.\"",
					"patching_rect" : [ 449.0, 281.0, 418.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"id" : "obj-3",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "speed/ratio",
					"text" : "jcom.parameter speed/ratio @type msg_float @range/bounds 0. 2. @range/clipmode low @description \"playback speed\"",
					"patching_rect" : [ 435.0, 253.0, 493.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "reverse",
					"text" : "jcom.parameter reverse @type msg_toggle @description \"whether sample is played forward or backward\"",
					"linecount" : 2,
					"patching_rect" : [ 411.0, 217.0, 267.0, 27.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 399.0, 429.0, 14.0, 14.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"numinlets" : 1,
					"comment" : "audio output 2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 53.0, 452.0, 62.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 130.0, 451.0, 62.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-14",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 216.0, 482.0, 62.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-19",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /sample/start /sample/stop /info/playername /info/filename",
					"patching_rect" : [ 53.0, 429.0, 299.0, 17.0 ],
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "", "", "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-23",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "name_symbol",
					"text" : "drag soundfile into the waveform field",
					"linecount" : 2,
					"patching_rect" : [ 280.0, 470.0, 140.0, 34.0 ],
					"ignoreclick" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 3.0, 20.695526, 296.0, 19.0 ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play",
					"text" : "jcom.message play @type msg_toggle @repetitions/allow 0 @description \"Play sound file.\"",
					"patching_rect" : [ 367.0, 146.0, 374.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"id" : "obj-36",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter loop @type msg_toggle @description \"Loop soundfile.\"",
					"patching_rect" : [ 398.0, 172.0, 335.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"id" : "obj-37",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message sf_open @type msg_symbol @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"patching_rect" : [ 364.0, 93.0, 394.0, 27.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"id" : "obj-39",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p panel",
					"patching_rect" : [ 16.0, 529.0, 81.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-45",
					"numinlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 41.0, 44.0, 519.0, 181.0 ],
						"bglocked" : 0,
						"defrect" : [ 41.0, 44.0, 519.0, 181.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"title" : "loop editor",
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set vertical zoom",
									"patching_rect" : [ 433.0, 267.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 365.0, 137.0, 95.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-47",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "loop start [ms]",
									"patching_rect" : [ 343.0, 220.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 213.0, 137.0, 85.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "loop end [ms]",
									"patching_rect" : [ 236.0, 310.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 217.0, 155.0, 79.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-39",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display start",
									"patching_rect" : [ 148.0, 217.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 76.0, 136.0, 71.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-36",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display length",
									"patching_rect" : [ 168.0, 248.0, 150.0, 19.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"presentation_rect" : [ 68.0, 154.0, 79.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-28",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 0.",
									"patching_rect" : [ 782.0, 299.0, 32.5, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack f f",
									"patching_rect" : [ 781.0, 277.0, 61.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "float" ],
									"fontname" : "Verdana",
									"id" : "obj-33",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /sf_open",
									"patching_rect" : [ 61.0, 397.0, 99.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "dropfile",
									"patching_rect" : [ 61.0, 350.0, 134.0, 20.0 ],
									"ignoreclick" : 1,
									"presentation" : 1,
									"numoutlets" : 2,
									"rounded" : 0.0,
									"outlettype" : [ "", "" ],
									"border" : 0.0,
									"types" : [  ],
									"presentation_rect" : [ 4.0, 0.0, 515.0, 179.0 ],
									"id" : "obj-7",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"patching_rect" : [ 61.0, 375.0, 129.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "int" ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"patching_rect" : [ 91.0, 471.0, 51.0, 38.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"texton" : "Play (on)",
									"rounded" : 8.0,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "int" ],
									"mode" : 1,
									"text" : "Play (off)",
									"truncate" : 0,
									"presentation_rect" : [ 3.0, 138.0, 45.0, 36.0 ],
									"fontname" : "Verdana",
									"id" : "obj-76",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"patching_rect" : [ 106.0, 242.0, 246.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"patching_rect" : [ 190.0, 222.0, 143.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 798.0, 132.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-3",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 743.0, 47.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 477.0, 570.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-5",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 200",
									"patching_rect" : [ 476.0, 588.0, 44.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar bang_selectall",
									"patching_rect" : [ 254.0, 631.0, 98.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 37.0, 672.0, 62.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /play",
									"patching_rect" : [ 91.0, 515.0, 73.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /length /filename /playername",
									"patching_rect" : [ 269.0, 535.0, 187.0, 17.0 ],
									"numoutlets" : 4,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 91.0, 537.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-13",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t undo",
									"patching_rect" : [ 85.0, 73.0, 43.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "undo" ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"patching_rect" : [ 618.0, 35.0, 54.0, 16.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"rounded" : 5.0,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "int" ],
									"text" : "Select All",
									"presentation_rect" : [ 461.0, 25.0, 53.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"patching_rect" : [ 86.0, 53.0, 45.0, 16.0 ],
									"presentation" : 1,
									"numoutlets" : 3,
									"rounded" : 5.0,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "int" ],
									"text" : "Undo",
									"presentation_rect" : [ 3.0, 25.0, 45.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 321.0, 563.0, 62.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"patching_rect" : [ 617.0, 54.0, 24.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar sample_name2",
									"patching_rect" : [ 321.0, 583.0, 100.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-22",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "vzoom $1",
									"patching_rect" : [ 70.0, 28.0, 54.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-25",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar verticalzoom",
									"patching_rect" : [ 70.0, 6.0, 93.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-26",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/vzoom",
									"text" : "jcom.parameter sample/vzoom @type msg_float @range/clipmode non @description @repetitions/allow 0 @ramp/drive none \"set vertical zoom\"",
									"linecount" : 2,
									"patching_rect" : [ 737.0, 356.0, 304.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-29",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "verticalzoom",
									"triangle" : 0,
									"patching_rect" : [ 673.0, 357.0, 49.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"presentation_rect" : [ 458.0, 138.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-30",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"varname" : "sample_name2",
									"text" : "drag soundfile into the waveform field",
									"patching_rect" : [ 323.0, 64.0, 249.0, 19.0 ],
									"ignoreclick" : 1,
									"presentation" : 1,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"presentation_rect" : [ 4.0, 5.0, 511.0, 19.0 ],
									"fontname" : "Verdana",
									"id" : "obj-32",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar display_range",
									"patching_rect" : [ 779.0, 257.0, 97.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-35",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "size $1",
									"patching_rect" : [ 361.0, 611.0, 43.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-37",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "rslider",
									"varname" : "display_range",
									"patching_rect" : [ 361.0, 630.0, 98.0, 22.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"listmode" : 1,
									"presentation_rect" : [ 47.0, 25.0, 415.0, 18.0 ],
									"size" : 74313.0,
									"floatoutput" : 1,
									"id" : "obj-43",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "display_start",
									"triangle" : 0,
									"patching_rect" : [ 689.0, 330.0, 49.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"presentation_rect" : [ 149.0, 138.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-45",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/displaystart",
									"text" : "jcom.message sample/displaystart @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description @repetitions/allow 0 @ramp/drive none \"display start  time in ms\"",
									"linecount" : 2,
									"patching_rect" : [ 744.0, 326.0, 413.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-48",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/displaylength",
									"text" : "jcom.message sample/displaylength @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description @repetitions/allow 0 @ramp/drive none \"display length in ms\"",
									"linecount" : 2,
									"patching_rect" : [ 742.0, 220.0, 399.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-51",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "displaylength",
									"triangle" : 0,
									"patching_rect" : [ 688.0, 226.0, 49.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"presentation_rect" : [ 149.0, 157.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-53",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 -1 0 -1",
									"patching_rect" : [ 615.0, 81.0, 51.0, 15.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-55",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "excerpt_end",
									"triangle" : 0,
									"patching_rect" : [ 685.0, 166.0, 49.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"presentation_rect" : [ 295.0, 156.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-58",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "excerpt_start",
									"triangle" : 0,
									"patching_rect" : [ 685.0, 100.0, 49.0, 17.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"presentation_rect" : [ 295.0, 138.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-59",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"grid" : 500.0,
									"vzoom" : 0.04,
									"waveformcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"patching_rect" : [ 82.0, 100.0, 490.0, 93.0 ],
									"presentation" : 1,
									"numoutlets" : 6,
									"buffername" : "",
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"clipdraw" : 1,
									"bgcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
									"selectioncolor" : [ 0.258824, 0.0, 0.007843, 0.5 ],
									"setmode" : 3,
									"presentation_rect" : [ 24.0, 42.0, 490.0, 93.0 ],
									"labelbgcolor" : [ 0.662745, 0.647059, 0.811765, 1.0 ],
									"tickmarkcolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
									"textcolor" : [  ],
									"vlabels" : 1,
									"ticks" : 8,
									"id" : "obj-60",
									"numinlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "pictslider",
									"patching_rect" : [ 37.0, 120.0, 19.0, 76.0 ],
									"knobpict" : "wfknob.pct",
									"rightvalue" : 0,
									"presentation" : 1,
									"numoutlets" : 2,
									"movehorizontal" : 0,
									"bkgndpict" : "wfmodes.pct",
									"outlettype" : [ "int", "int" ],
									"imagemask" : 1,
									"inactiveimage" : 0,
									"topvalue" : 0,
									"presentation_rect" : [ 4.0, 43.0, 19.0, 92.0 ],
									"bottomvalue" : 3,
									"id" : "obj-61",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p wfkeys",
									"patching_rect" : [ 34.0, 204.0, 50.0, 17.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-62",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 55.0, 238.0, 375.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 55.0, 238.0, 375.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "int",
													"patching_rect" : [ 96.0, 202.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"patching_rect" : [ 131.0, 255.0, 53.0, 17.0 ],
													"numoutlets" : 4,
													"fontsize" : 9.0,
													"outlettype" : [ "", "", "", "" ],
													"fontname" : "Arial",
													"id" : "obj-2",
													"numinlets" : 1,
													"coll_data" : 													{
														"count" : 4,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "mode", "select" ]
															}
, 															{
																"key" : 1,
																"value" : [ "mode", "loop" ]
															}
, 															{
																"key" : 2,
																"value" : [ "mode", "move" ]
															}
, 															{
																"key" : 3,
																"value" : [ "mode", "draw" ]
															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"embed" : 1
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 75.0, 117.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"id" : "obj-3",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 74.0, 164.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-4",
													"numinlets" : 0,
													"comment" : "waveform~ mode messages"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "<< 1",
													"patching_rect" : [ 113.0, 88.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"patching_rect" : [ 96.0, 140.0, 40.0, 17.0 ],
													"numoutlets" : 3,
													"fontsize" : 9.0,
													"outlettype" : [ "", "int", "int" ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "select 0",
													"patching_rect" : [ 96.0, 164.0, 45.0, 17.0 ],
													"numoutlets" : 2,
													"fontsize" : 9.0,
													"outlettype" : [ "bang", "" ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "|",
													"patching_rect" : [ 96.0, 117.0, 27.0, 17.0 ],
													"numoutlets" : 1,
													"fontsize" : 9.0,
													"outlettype" : [ "int" ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 131.0, 284.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-9",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "modifiers 100",
													"patching_rect" : [ 45.0, 62.0, 78.0, 17.0 ],
													"numoutlets" : 5,
													"fontsize" : 9.0,
													"outlettype" : [ "int", "int", "int", "int", "int" ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 3 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-10", 4 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-8", 1 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-2", 0 ],
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
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"globalpatchername" : "",
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"fontname" : "Arial",
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/stop",
									"text" : "jcom.parameter sample/stop @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description \"stoptime time in ms\" @repetitions/allow 0 @ramp/drive scheduler",
									"linecount" : 2,
									"patching_rect" : [ 741.0, 157.0, 385.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-65",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /play /info",
									"patching_rect" : [ 91.0, 448.0, 108.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-68",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 91.0, 421.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-69",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 108.0, 265.0, 61.0, 17.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-70",
									"numinlets" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 41, 44, 560, 225, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/start",
									"text" : "jcom.parameter sample/start @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description \"start time in ms\" @repetitions/allow 0 @ramp/drive scheduler",
									"linecount" : 2,
									"patching_rect" : [ 740.0, 94.0, 385.0, 27.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"hidden" : 1,
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-72",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 365.0, 224.0, 128.0, 128.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"border" : 1,
									"presentation_rect" : [ 0.0, 0.0, 519.0, 181.0 ],
									"id" : "obj-8",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 70.5, 534.0, 100.0, 534.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 1 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [ 46.5, 251.0, 25.0, 251.0, 25.0, 106.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [ 79.5, 100.0, 91.5, 100.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-60", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-60", 2 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-60", 3 ],
									"hidden" : 1,
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
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-60", 4 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 2 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 3 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 1 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"patching_rect" : [ 126.0, 200.0, 191.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-47",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"patching_rect" : [ 378.0, 392.0, 57.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "signal", "signal", "" ],
					"fontname" : "Arial",
					"id" : "obj-48",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"patching_rect" : [ 256.0, 339.0, 49.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-49",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 134.0, 222.0, 125.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-50",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sampleplayer~ @description \"simple monophonic sampleplayer\"",
					"patching_rect" : [ 36.0, 259.0, 328.0, 17.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-51",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 36.0, 198.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-53",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"patching_rect" : [ 265.0, 222.0, 31.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-54",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 378.0, 429.0, 14.0, 14.0 ],
					"numoutlets" : 0,
					"id" : "obj-56",
					"numinlets" : 1,
					"comment" : "audio output 1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sampleplayer~ #0_",
					"patching_rect" : [ 375.0, 364.0, 123.0, 17.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "signal", "signal", "signal" ],
					"fontname" : "Arial",
					"id" : "obj-57",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 36.0, 289.0, 23.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-58",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal output---",
					"patching_rect" : [ 365.0, 442.0, 100.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-59",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"patching_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"has_panel" : 1,
					"outlettype" : [ "" ],
					"has_meters" : 1,
					"has_gain" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"has_mute" : 1,
					"prefix" : "audio",
					"id" : "obj-62",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 256.0, 386.0, 47.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 555.0, 8.0, 555.0, 8.0, 243.0, 45.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 244.0, 45.5, 244.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 143.5, 243.0, 45.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 135.5, 243.0, 45.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.0, 293.0, 25.5, 505.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 45.5, 276.0, 25.0, 276.0, 25.0, 429.0, 62.5, 429.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 2 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 265.5, 414.0, 18.0, 414.0, 18.0, 525.0, 25.5, 525.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 500.0, 154.0, 500.0, 154.0, 482.0, 45.5, 482.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 3 ],
					"destination" : [ "obj-45", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 2 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [ 225.5, 513.0, 45.5, 513.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-46", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-46", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 265.5, 360.0, 384.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 3 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
