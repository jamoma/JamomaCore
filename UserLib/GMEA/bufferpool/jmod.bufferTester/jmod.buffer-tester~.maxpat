{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 31.0, 44.0, 1336.0, 759.0 ],
		"bglocked" : 0,
		"defrect" : [ 31.0, 44.0, 1336.0, 759.0 ],
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
					"maxclass" : "bpatcher",
					"id" : "obj-86",
					"border" : 1,
					"name" : "jcom.buffer_selector.maxpat",
					"presentation_rect" : [ 28.0, 31.0, 220.0, 33.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 19.0, 29.0, 220.0, 33.0 ],
					"presentation" : 1,
					"args" : [  ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s #0-set-buffer",
					"id" : "obj-85",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 1052.0, 418.0, 100.0, 18.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 -1 0 -1",
					"id" : "obj-29",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 232.0, 487.0, 51.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b s",
					"id" : "obj-11",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 270.0, 463.0, 32.5, 18.0 ],
					"outlettype" : [ "bang", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter loopsync/mode @type msg_symbol @description \" modes: normalized, loop_time, sample_time\"",
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 540.0, 648.0, 510.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 509.0, 14.0, 14.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter loopsync/active @type msg_toggle @value/default 0",
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 540.0, 623.0, 315.0, 18.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "reverse_button[2]",
					"mode" : 1,
					"id" : "obj-68",
					"border" : 1,
					"presentation_rect" : [ 247.0, 74.0, 50.0, 16.0 ],
					"text" : "Loop Off",
					"texton" : "Loop On",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 452.0, 264.0, 79.0, 16.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "reverse_button[1]",
					"mode" : 1,
					"id" : "obj-67",
					"border" : 1,
					"presentation_rect" : [ 138.0, 74.0, 72.0, 16.0 ],
					"text" : "VariSpeed Off",
					"texton" : "VariSpeed On",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 452.0, 597.0, 79.0, 16.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 2",
					"id" : "obj-6",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 658.0, 58.0, 142.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"id" : "obj-7",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 653.0, 13.0, 142.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-9",
					"presentation_rect" : [ 165.0, 10.0, 80.0, 4.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.0, 88.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"id" : "obj-34",
					"presentation_rect" : [ 165.0, 5.0, 80.0, 4.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 43.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "VariSpeed factor",
					"id" : "obj-63",
					"presentation_rect" : [ 211.0, 74.0, 34.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 481.0, 555.0, 51.0, 17.0 ],
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.0,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "reverse_button",
					"mode" : 1,
					"id" : "obj-70",
					"border" : 1,
					"presentation_rect" : [ 89.0, 74.0, 48.0, 16.0 ],
					"text" : "Reverse",
					"texton" : "Reverse",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 542.0, 484.0, 76.0, 16.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button[1]",
					"mode" : 1,
					"id" : "obj-84",
					"border" : 1,
					"presentation_rect" : [ 3.0, 74.0, 42.0, 16.0 ],
					"text" : "Play",
					"texton" : "Play",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 438.0, 212.0, 49.0, 16.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[1]",
					"id" : "obj-83",
					"border" : 1,
					"presentation_rect" : [ 46.0, 74.0, 42.0, 16.0 ],
					"text" : "Open",
					"texton" : "DSP",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"patching_rect" : [ 437.0, 153.0, 49.0, 16.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0__xxx_done",
					"id" : "obj-1",
					"numinlets" : 0,
					"fontname" : "Arial",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 495.0, 186.0, 87.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "speed/active",
					"text" : "jcom.parameter speed/active @type msg_toggle @description \"turn on/off vari-speed.\"",
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 539.0, 596.0, 418.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "speed/ratio",
					"text" : "jcom.parameter speed/ratio @type msg_float @range/bounds 0. 2. @range/clipmode low @description \"playback speed\"",
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 539.0, 551.0, 493.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "reverse",
					"text" : "jcom.parameter reverse @type msg_toggle @description \"whether sample is played forward or backward\"",
					"linecount" : 2,
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 619.0, 479.0, 267.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 448.0, 510.0, 14.0, 14.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 102.0, 461.0, 62.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-14",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 199.0, 462.0, 62.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"id" : "obj-15",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 331.0, 46.0, 50.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set drag soundfile into the waveform field",
					"id" : "obj-16",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 332.0, 66.0, 199.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 331.0, 25.0, 48.0, 17.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /sf_open",
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 12.0, 204.0, 89.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 284.0, 486.0, 62.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername",
					"text" : "jcom.message sample/buffername @type msg_symbol",
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 19.0, 70.0, 254.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 420.0, 405.0, 47.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 287.0, 381.0, 152.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /sample/start /sample/stop /sample/buffername",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"patching_rect" : [ 101.0, 441.0, 272.0, 17.0 ],
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "name_symbol",
					"text" : "drag soundfile into the waveform field",
					"id" : "obj-24",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 332.0, 102.0, 334.0, 19.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar sample_size",
					"id" : "obj-25",
					"numinlets" : 1,
					"fontname" : "Arial",
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 496.0, 386.0, 89.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop[2]",
					"text" : "jcom.message sample/size @type msg_int @description \"size of the loaded soundfile\"",
					"id" : "obj-26",
					"numinlets" : 1,
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 495.0, 367.0, 396.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar name_symbol",
					"id" : "obj-27",
					"numinlets" : 1,
					"fontname" : "Arial",
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 1,
					"patching_rect" : [ 493.0, 334.0, 95.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/name",
					"text" : "jcom.message sample/name @type msg_symbol @description \"name of the loaded soundfile\"",
					"id" : "obj-28",
					"numinlets" : 1,
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 493.0, 315.0, 436.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play",
					"text" : "jcom.message play @type msg_toggle @repetitions/allow 0 @description \"Play sound file.\"",
					"id" : "obj-36",
					"numinlets" : 1,
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 495.0, 210.0, 392.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter loop @type msg_toggle @description \"Loop soundfile.\"",
					"id" : "obj-37",
					"numinlets" : 1,
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 535.0, 264.0, 335.0, 17.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message sf_open @type msg_symbol @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"id" : "obj-39",
					"numinlets" : 1,
					"fontname" : "Arial",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numoutlets" : 3,
					"patching_rect" : [ 493.0, 147.0, 394.0, 27.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-42",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 65.0, 397.0, 47.0, 17.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"id" : "obj-43",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 65.0, 377.0, 37.0, 17.0 ],
					"outlettype" : [ "open" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"id" : "obj-44",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 65.0, 355.0, 116.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p panel",
					"id" : "obj-45",
					"numinlets" : 3,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 65.0, 526.0, 81.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 263.0, 149.0, 520.0, 175.0 ],
						"bglocked" : 0,
						"defrect" : [ 263.0, 149.0, 520.0, 175.0 ],
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
									"maxclass" : "textbutton",
									"mode" : 1,
									"id" : "obj-76",
									"presentation_rect" : [ 27.0, 135.0, 45.0, 36.0 ],
									"text" : "Play (off)",
									"texton" : "Play (on)",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 158.0, 467.0, 51.0, 38.0 ],
									"truncate" : 0,
									"presentation" : 1,
									"rounded" : 8.0,
									"outlettype" : [ "", "", "int" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"id" : "obj-1",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 318.0, 212.0, 246.0, 15.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"id" : "obj-2",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 161.0, 216.0, 143.0, 15.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 940.0, 47.0, 15.0, 15.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 830.0, 43.0, 15.0, 15.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 477.0, 570.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 200",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 484.0, 592.0, 44.0, 17.0 ],
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"varname" : "bang_selectall",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 483.0, 614.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ],
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar bang_selectall",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 254.0, 631.0, 98.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 37.0, 672.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /play",
									"id" : "obj-11",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 158.0, 511.0, 73.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /size /name /buffername",
									"id" : "obj-12",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 4,
									"patching_rect" : [ 269.0, 535.0, 193.0, 17.0 ],
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 535.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "undo",
									"id" : "obj-16",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 81.0, 30.0, 15.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"id" : "obj-17",
									"presentation_rect" : [ 463.0, 24.0, 54.0, 16.0 ],
									"text" : "Select All",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 527.0, 84.0, 54.0, 16.0 ],
									"presentation" : 1,
									"rounded" : 8.0,
									"outlettype" : [ "", "", "int" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"id" : "obj-18",
									"presentation_rect" : [ 24.0, 24.0, 45.0, 16.0 ],
									"text" : "Undo",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"patching_rect" : [ 82.0, 84.0, 45.0, 16.0 ],
									"presentation" : 1,
									"rounded" : 8.0,
									"outlettype" : [ "", "", "int" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"id" : "obj-19",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 321.0, 563.0, 62.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 596.0, 64.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ],
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "sample_size2",
									"triscale" : 0.9,
									"id" : "obj-21",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 136.0, 26.0, 35.0, 17.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 9.0,
									"hidden" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar sample_name2",
									"id" : "obj-22",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 321.0, 583.0, 100.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar sample_size2",
									"id" : "obj-23",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 269.0, 609.0, 95.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "vzoom $1",
									"id" : "obj-25",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 47.0, 54.0, 15.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar verticalzoom",
									"id" : "obj-26",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 42.0, 25.0, 93.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display start",
									"id" : "obj-27",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 850.0, 394.0, 88.0, 20.0 ],
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/vzoom",
									"text" : "jcom.parameter sample/vzoom @type msg_float @range/clipmode non @description @repetitions/allow 0 @ramp/drive none \"set vertical zoom\"",
									"linecount" : 2,
									"id" : "obj-29",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"patching_rect" : [ 749.0, 415.0, 304.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "verticalzoom",
									"triscale" : 0.9,
									"id" : "obj-30",
									"minimum" : 0.0,
									"presentation_rect" : [ 458.0, 136.0, 49.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 685.0, 416.0, 49.0, 17.0 ],
									"presentation" : 1,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set vertical zoom",
									"id" : "obj-31",
									"presentation_rect" : [ 370.0, 136.0, 85.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 428.0, 196.0, 85.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"varname" : "sample_name2",
									"text" : "hcack.wav",
									"id" : "obj-32",
									"presentation_rect" : [ 24.0, 5.0, 492.0, 19.0 ],
									"numinlets" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"patching_rect" : [ 82.0, 65.0, 492.0, 19.0 ],
									"presentation" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar display_range",
									"id" : "obj-33",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 483.0, 276.0, 97.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display start",
									"id" : "obj-34",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 850.0, 333.0, 88.0, 20.0 ],
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar display_range",
									"id" : "obj-35",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 749.0, 334.0, 97.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/displaystart[1]",
									"text" : "jcom.parameter sample/displaystart @type msg_list @range/clipmode non @description @repetitions/allow 0 @ramp/drive none \"display start  time in ms\"",
									"linecount" : 2,
									"id" : "obj-36",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"patching_rect" : [ 749.0, 354.0, 324.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "size $1",
									"id" : "obj-37",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 136.0, 44.0, 43.0, 15.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* -1",
									"id" : "obj-38",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 515.0, 337.0, 31.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"id" : "obj-39",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 484.0, 296.0, 58.0, 17.0 ],
									"outlettype" : [ "int", "int" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "-",
									"id" : "obj-40",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 515.0, 317.0, 27.0, 17.0 ],
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar displaylength",
									"id" : "obj-41",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 515.0, 357.0, 93.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar display_start",
									"id" : "obj-42",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 484.0, 377.0, 95.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "rslider",
									"varname" : "display_range",
									"id" : "obj-43",
									"presentation_rect" : [ 68.0, 21.0, 396.0, 20.0 ],
									"numinlets" : 2,
									"listmode" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 126.0, 81.0, 402.0, 20.0 ],
									"presentation" : 1,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display start",
									"id" : "obj-44",
									"presentation_rect" : [ 84.0, 136.0, 63.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 196.0, 63.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "display_start",
									"triscale" : 0.9,
									"id" : "obj-45",
									"minimum" : 0.0,
									"presentation_rect" : [ 149.0, 136.0, 49.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 689.0, 293.0, 49.0, 17.0 ],
									"presentation" : 1,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display start",
									"id" : "obj-46",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 843.0, 266.0, 88.0, 20.0 ],
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/displaystart",
									"text" : "jcom.parameter sample/displaystart @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description @repetitions/allow 0 @ramp/drive none \"display start  time in ms\"",
									"linecount" : 2,
									"id" : "obj-48",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"patching_rect" : [ 742.0, 287.0, 413.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display length",
									"id" : "obj-49",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 843.0, 199.0, 88.0, 20.0 ],
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/displaylength",
									"text" : "jcom.parameter sample/displaylength @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description @repetitions/allow 0 @ramp/drive none \"display length in ms\"",
									"linecount" : 2,
									"id" : "obj-51",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"patching_rect" : [ 742.0, 220.0, 399.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display length",
									"id" : "obj-52",
									"presentation_rect" : [ 78.0, 154.0, 69.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 136.0, 214.0, 69.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "displaylength",
									"triscale" : 0.9,
									"id" : "obj-53",
									"minimum" : 0.0,
									"presentation_rect" : [ 149.0, 153.0, 49.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 688.0, 226.0, 49.0, 17.0 ],
									"presentation" : 1,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "stoptime",
									"id" : "obj-54",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 837.0, 134.0, 73.0, 20.0 ],
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 -1 0 -1",
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 596.0, 84.0, 51.0, 15.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "select end ms",
									"id" : "obj-56",
									"presentation_rect" : [ 225.0, 153.0, 68.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 283.0, 213.0, 68.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "select start ms",
									"id" : "obj-57",
									"presentation_rect" : [ 218.0, 136.0, 75.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 276.0, 196.0, 75.0, 17.0 ],
									"presentation" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "excerpt_end",
									"triscale" : 0.9,
									"id" : "obj-58",
									"minimum" : 0.0,
									"presentation_rect" : [ 295.0, 152.0, 49.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 685.0, 166.0, 49.0, 17.0 ],
									"presentation" : 1,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "excerpt_start",
									"triscale" : 0.9,
									"id" : "obj-59",
									"minimum" : 0.0,
									"presentation_rect" : [ 295.0, 136.0, 49.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 685.0, 100.0, 49.0, 17.0 ],
									"presentation" : 1,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"id" : "obj-60",
									"vzoom" : 0.04,
									"grid" : 500.0,
									"presentation_rect" : [ 24.0, 40.0, 490.0, 93.0 ],
									"labelbgcolor" : [ 0.662745, 0.647059, 0.811765, 1.0 ],
									"numinlets" : 5,
									"numoutlets" : 6,
									"patching_rect" : [ 82.0, 100.0, 490.0, 93.0 ],
									"setmode" : 3,
									"presentation" : 1,
									"selectioncolor" : [ 0.258824, 0.0, 0.007843, 0.5 ],
									"tickmarkcolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
									"buffername" : "hcack.wav",
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"textcolor" : [  ],
									"ticks" : 8,
									"clipdraw" : 1,
									"waveformcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"vlabels" : 1,
									"bgcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "pictslider",
									"movehorizontal" : 0,
									"id" : "obj-61",
									"topvalue" : 0,
									"inactiveimage" : 0,
									"presentation_rect" : [ 4.0, 41.0, 19.0, 89.0 ],
									"numinlets" : 2,
									"bottomvalue" : 3,
									"rightvalue" : 0,
									"numoutlets" : 2,
									"patching_rect" : [ 63.0, 117.0, 19.0, 76.0 ],
									"knobpict" : "wfknob.pct",
									"presentation" : 1,
									"outlettype" : [ "int", "int" ],
									"imagemask" : 1,
									"bkgndpict" : "wfmodes.pct"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p wfkeys",
									"id" : "obj-62",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patching_rect" : [ 33.0, 210.0, 50.0, 17.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"hidden" : 1,
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
													"id" : "obj-1",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 96.0, 202.0, 27.0, 17.0 ],
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"id" : "obj-2",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 4,
													"patching_rect" : [ 131.0, 255.0, 53.0, 17.0 ],
													"outlettype" : [ "", "", "", "" ],
													"fontsize" : 9.0,
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
													"id" : "obj-3",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 75.0, 117.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 74.0, 164.0, 15.0, 15.0 ],
													"outlettype" : [ "int" ],
													"comment" : "waveform~ mode messages"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "<< 1",
													"id" : "obj-5",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 113.0, 88.0, 27.0, 17.0 ],
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"id" : "obj-6",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3,
													"patching_rect" : [ 96.0, 140.0, 40.0, 17.0 ],
													"outlettype" : [ "", "int", "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "select 0",
													"id" : "obj-7",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 2,
													"patching_rect" : [ 96.0, 164.0, 45.0, 17.0 ],
													"outlettype" : [ "bang", "" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "|",
													"id" : "obj-8",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patching_rect" : [ 96.0, 117.0, 27.0, 17.0 ],
													"outlettype" : [ "int" ],
													"fontsize" : 9.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-9",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 131.0, 284.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "modifiers 100",
													"id" : "obj-10",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 5,
													"patching_rect" : [ 45.0, 62.0, 78.0, 17.0 ],
													"outlettype" : [ "int", "int", "int", "int", "int" ],
													"fontsize" : 9.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-9", 0 ],
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
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
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
													"source" : [ "obj-10", 4 ],
													"destination" : [ "obj-5", 0 ],
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
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 0 ],
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
													"source" : [ "obj-10", 3 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"globalpatchername" : "",
										"fontname" : "Arial",
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/stop",
									"text" : "jcom.parameter sample/stop @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description \"stoptime time in ms\" @repetitions/allow 0 @ramp/drive scheduler",
									"linecount" : 2,
									"id" : "obj-65",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"patching_rect" : [ 741.0, 157.0, 385.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector /play /sample",
									"id" : "obj-68",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 4,
									"patching_rect" : [ 91.0, 448.0, 219.0, 17.0 ],
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-69",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 91.0, 421.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
									"hidden" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"id" : "obj-70",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"patching_rect" : [ 261.0, 376.0, 61.0, 17.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1,
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "starttime",
									"id" : "obj-71",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 839.0, 70.0, 73.0, 20.0 ],
									"fontsize" : 12.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/start",
									"text" : "jcom.parameter sample/start @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description \"start time in ms\" @repetitions/allow 0 @ramp/drive scheduler",
									"linecount" : 2,
									"id" : "obj-72",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"patching_rect" : [ 740.0, 94.0, 385.0, 27.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"hidden" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 1 ],
									"destination" : [ "obj-76", 0 ],
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
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-48", 0 ],
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
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-72", 0 ],
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
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
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-65", 0 ],
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
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-51", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [ 758.5, 386.0, 745.0, 386.0, 745.0, 331.0, 758.5, 331.0 ]
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
									"source" : [ "obj-60", 1 ],
									"destination" : [ "obj-51", 0 ],
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
									"source" : [ "obj-60", 3 ],
									"destination" : [ "obj-65", 0 ],
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
									"source" : [ "obj-60", 2 ],
									"destination" : [ "obj-72", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-40", 0 ],
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
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-60", 3 ],
									"hidden" : 1,
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-22", 0 ],
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
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 278.5, 554.0, 278.5, 554.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 2 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-60", 1 ],
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
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
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
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [ 51.5, 100.0, 91.5, 100.0 ]
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 1,
									"midpoints" : [ 46.5, 251.0, 25.0, 251.0, 25.0, 106.0 ]
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
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-61", 1 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"id" : "obj-46",
					"vzoom" : 0.5,
					"vticks" : 0,
					"grid" : 500.0,
					"presentation_rect" : [ 3.0, 93.0, 294.20929, 41.0 ],
					"labelbgcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"numinlets" : 5,
					"numoutlets" : 6,
					"patching_rect" : [ 104.0, 490.0, 115.20929, 13.0 ],
					"setmode" : 1,
					"presentation" : 1,
					"selectioncolor" : [ 0.258824, 0.0, 0.007843, 0.5 ],
					"tickmarkcolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
					"buffername" : "hcack.wav",
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"textcolor" : [  ],
					"ticks" : 8,
					"clipdraw" : 1,
					"waveformcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-47",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 126.0, 200.0, 191.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"id" : "obj-48",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 427.0, 474.0, 57.0, 17.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"id" : "obj-49",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 65.0, 333.0, 49.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-50",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 134.0, 222.0, 125.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.buffer-tester~ @description \"simple monophonic sampleplayer\"",
					"id" : "obj-51",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 36.0, 259.0, 328.0, 17.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-52",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 223.0, 79.0, 17.0 ],
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-53",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 36.0, 223.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-54",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 265.0, 222.0, 31.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-55",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 65.0, 315.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-56",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 427.0, 511.0, 14.0, 14.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.buffer-tester~ #0_",
					"id" : "obj-57",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 4,
					"patching_rect" : [ 374.0, 446.0, 123.0, 17.0 ],
					"outlettype" : [ "", "signal", "signal", "signal" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-58",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 299.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal output---",
					"id" : "obj-59",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 401.0, 525.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"id" : "obj-60",
					"border" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"types" : [  ],
					"patching_rect" : [ 12.0, 182.0, 134.0, 20.0 ],
					"ignoreclick" : 1,
					"rounded" : 0.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-62",
					"has_meters" : 1,
					"has_gain" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"prefix" : "audio",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_mute" : 1,
					"presentation" : 1,
					"has_panel" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 383.5, 558.0, 8.0, 558.0, 8.0, 244.0, 45.5, 244.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 2 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 3 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-63", 0 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-34", 0 ],
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
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 171.5, 378.0, 296.5, 378.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 505.5, 407.0, 488.0, 407.0, 488.0, 362.0, 504.5, 362.0 ]
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
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
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
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-46", 2 ],
					"hidden" : 1,
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
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [ 293.5, 517.0, 113.5, 517.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-67", 0 ],
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
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-46", 3 ],
					"destination" : [ "obj-45", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 296.5, 421.0, 74.5, 421.0 ]
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
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 241.5, 504.0, 222.0, 504.0, 222.0, 486.0, 113.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 74.5, 558.0, 8.0, 558.0, 8.0, 243.0, 45.5, 243.0 ]
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
