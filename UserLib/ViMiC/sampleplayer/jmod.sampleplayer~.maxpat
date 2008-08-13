{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 118.0, 66.0, 949.0, 710.0 ],
		"bglocked" : 0,
		"defrect" : [ 118.0, 66.0, 949.0, 710.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 2",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-6",
					"patching_rect" : [ 658.0, 58.0, 142.0, 19.0 ],
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-7",
					"patching_rect" : [ 653.0, 13.0, 142.0, 19.0 ],
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 165.0, 10.0, 80.0, 4.0 ],
					"id" : "obj-9",
					"patching_rect" : [ 563.0, 88.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"presentation_rect" : [ 165.0, 5.0, 80.0, 4.0 ],
					"id" : "obj-34",
					"patching_rect" : [ 558.0, 43.0, 80.0, 4.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 200.0, 44.0, 50.0, 18.0 ],
					"id" : "obj-63",
					"patching_rect" : [ 481.0, 555.0, 50.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "reverse_button",
					"outlettype" : [ "int", "", "int" ],
					"fontsize" : 9.873845,
					"presentation_rect" : [ 91.0, 45.0, 49.0, 16.0 ],
					"id" : "obj-70",
					"patching_rect" : [ 542.0, 484.0, 76.0, 16.0 ],
					"presentation" : 1,
					"mode" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"rounded" : 10.0,
					"text" : "Reverse",
					"numoutlets" : 3,
					"texton" : "Reverse"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button[1]",
					"outlettype" : [ "int", "", "int" ],
					"fontsize" : 9.873845,
					"presentation_rect" : [ 3.0, 45.0, 43.0, 16.0 ],
					"id" : "obj-84",
					"patching_rect" : [ 438.0, 212.0, 49.0, 16.0 ],
					"presentation" : 1,
					"mode" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"rounded" : 10.0,
					"text" : "Play",
					"numoutlets" : 3,
					"texton" : "Play"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[1]",
					"outlettype" : [ "int", "", "int" ],
					"fontsize" : 9.873845,
					"presentation_rect" : [ 47.0, 45.0, 43.0, 16.0 ],
					"id" : "obj-83",
					"patching_rect" : [ 437.0, 153.0, 49.0, 16.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"rounded" : 10.0,
					"text" : "Open",
					"numoutlets" : 3,
					"texton" : "DSP"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0__xxx_done",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-1",
					"hidden" : 1,
					"patching_rect" : [ 495.0, 186.0, 87.0, 17.0 ],
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "speed/active",
					"text" : "jcom.parameter speed/active @type msg_toggle @description \"turn on/off vari-speed.\"",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-3",
					"hidden" : 1,
					"patching_rect" : [ 539.0, 596.0, 418.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "speed_toggle",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 181.0, 44.0, 42.0, 18.0 ],
					"id" : "obj-4",
					"patching_rect" : [ 476.0, 614.0, 42.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "speed:",
					"linecount" : 2,
					"fontsize" : 9.0,
					"presentation_rect" : [ 148.0, 44.0, 38.0, 17.0 ],
					"id" : "obj-5",
					"patching_rect" : [ 492.0, 616.0, 33.0, 27.0 ],
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Arial",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "speed/ratio",
					"text" : "jcom.parameter speed/ratio @type msg_float @range/bounds 0. 2. @range/clipmode low @description \"playback speed\"",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-8",
					"patching_rect" : [ 539.0, 551.0, 493.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "reverse",
					"text" : "jcom.parameter reverse @type msg_toggle @description \"whether sample is played forward or backward\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-10",
					"patching_rect" : [ 619.0, 479.0, 267.0, 27.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-12",
					"patching_rect" : [ 464.0, 511.0, 14.0, 14.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-13",
					"hidden" : 1,
					"patching_rect" : [ 47.0, 153.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-14",
					"hidden" : 1,
					"patching_rect" : [ 144.0, 154.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-15",
					"patching_rect" : [ 331.0, 46.0, 50.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set drag soundfile into the waveform field",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-16",
					"patching_rect" : [ 332.0, 66.0, 199.0, 15.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0,
					"id" : "obj-17",
					"patching_rect" : [ 331.0, 25.0, 48.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /sf_open",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-18",
					"patching_rect" : [ 15.0, 196.0, 89.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-19",
					"hidden" : 1,
					"patching_rect" : [ 242.0, 154.0, 62.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/buffername",
					"text" : "jcom.message sample/buffername @type msg_symbol",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-20",
					"hidden" : 1,
					"patching_rect" : [ 494.0, 418.0, 254.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-21",
					"hidden" : 1,
					"patching_rect" : [ 420.0, 405.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-22",
					"hidden" : 1,
					"patching_rect" : [ 287.0, 381.0, 152.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /sample/start /sample/stop /sample/buffername",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-23",
					"hidden" : 1,
					"patching_rect" : [ 46.0, 133.0, 305.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "name_symbol",
					"text" : "drag soundfile into the waveform field",
					"outlettype" : [ "" ],
					"fontsize" : 14.989155,
					"presentation_rect" : [ 3.0, 20.695526, 292.0, 22.0 ],
					"id" : "obj-24",
					"patching_rect" : [ 4.0, 22.0, 358.0, 22.0 ],
					"presentation" : 1,
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar sample_size",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-25",
					"hidden" : 1,
					"patching_rect" : [ 496.0, 386.0, 89.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop[2]",
					"text" : "jcom.message sample/size @type msg_int @description \"size of the loaded soundfile\"",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-26",
					"hidden" : 1,
					"patching_rect" : [ 495.0, 367.0, 396.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar name_symbol",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-27",
					"hidden" : 1,
					"patching_rect" : [ 493.0, 334.0, 95.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sample/name",
					"text" : "jcom.message sample/name @type msg_symbol @description \"name of the loaded soundfile\"",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-28",
					"hidden" : 1,
					"patching_rect" : [ 493.0, 315.0, 436.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "Loop_toggle",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 279.0, 44.0, 22.0, 18.0 ],
					"id" : "obj-29",
					"patching_rect" : [ 446.0, 264.0, 42.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop:",
					"fontsize" : 9.0,
					"presentation_rect" : [ 255.0, 44.0, 29.0, 17.0 ],
					"id" : "obj-30",
					"patching_rect" : [ 222.0, 23.0, 29.0, 17.0 ],
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"fontname" : "Arial",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"hidden" : 1,
					"patching_rect" : [ 388.0, 156.0, 39.0, 20.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"hidden" : 1,
					"patching_rect" : [ 383.0, 273.0, 39.0, 20.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"hidden" : 1,
					"patching_rect" : [ 386.0, 218.0, 39.0, 20.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play",
					"text" : "jcom.message play @type msg_toggle @repetitions/allow 0 @description \"Play sound file.\"",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-36",
					"hidden" : 1,
					"patching_rect" : [ 495.0, 210.0, 392.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter loop @type msg_toggle @description \"Loop soundfile.\"",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-37",
					"hidden" : 1,
					"patching_rect" : [ 495.0, 264.0, 335.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message sf_open @type msg_symbol @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-39",
					"hidden" : 1,
					"patching_rect" : [ 493.0, 147.0, 394.0, 27.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-42",
					"hidden" : 1,
					"patching_rect" : [ 146.0, 400.0, 47.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open",
					"outlettype" : [ "open" ],
					"fontsize" : 9.0,
					"id" : "obj-43",
					"hidden" : 1,
					"patching_rect" : [ 146.0, 380.0, 37.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /panel/open",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-44",
					"hidden" : 1,
					"patching_rect" : [ 146.0, 358.0, 116.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "inspector",
					"text" : "p inspector",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-45",
					"hidden" : 1,
					"patching_rect" : [ 146.0, 526.0, 60.0, 17.0 ],
					"numinlets" : 3,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 271.0, 374.0, 530.0, 204.0 ],
						"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 271.0, 374.0, 530.0, 204.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
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
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-1",
									"hidden" : 1,
									"patching_rect" : [ 178.0, 154.0, 246.0, 15.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-2",
									"hidden" : 1,
									"patching_rect" : [ 426.0, 153.0, 316.0, 15.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-3",
									"patching_rect" : [ 880.0, -13.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "float" ],
									"id" : "obj-4",
									"patching_rect" : [ 770.0, -17.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"id" : "obj-5",
									"patching_rect" : [ 417.0, 510.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 200",
									"outlettype" : [ "bang" ],
									"fontsize" : 9.0,
									"id" : "obj-6",
									"patching_rect" : [ 424.0, 532.0, 44.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 80 80 80",
									"fontsize" : 9.0,
									"id" : "obj-7",
									"hidden" : 1,
									"patching_rect" : [ 159.0, -29.0, 88.0, 17.0 ],
									"numinlets" : 4,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"varname" : "bang_selectall",
									"outlettype" : [ "bang" ],
									"id" : "obj-8",
									"hidden" : 1,
									"patching_rect" : [ 423.0, 554.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar bang_selectall",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-9",
									"patching_rect" : [ 194.0, 571.0, 98.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-10",
									"patching_rect" : [ -23.0, 612.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /play",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-11",
									"patching_rect" : [ 100.0, 429.0, 73.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /size /name /buffername",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 9.0,
									"id" : "obj-12",
									"hidden" : 1,
									"patching_rect" : [ 209.0, 475.0, 193.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-13",
									"patching_rect" : [ 99.0, 453.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar Play_button",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-14",
									"patching_rect" : [ 99.0, 408.0, 88.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "Play_button",
									"outlettype" : [ "", "" ],
									"id" : "obj-15",
									"patching_rect" : [ 23.0, 132.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"filename" : "jcom.jsui_texttoggle.js",
									"jsarguments" : [ "Play", "Play", 204, 204, 204, 0, 0, 0, 121, 255, 15 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "undo",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-16",
									"hidden" : 1,
									"patching_rect" : [ -10.0, 21.0, 30.0, 15.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "Open_button[1]",
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"patching_rect" : [ 467.0, 22.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"filename" : "jsui_textbutton.js",
									"jsarguments" : [ "Select all" ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"varname" : "Open_button",
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"patching_rect" : [ 22.0, 22.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"filename" : "jsui_textbutton.js",
									"jsarguments" : [ "Undo" ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-19",
									"patching_rect" : [ 261.0, 503.0, 62.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"id" : "obj-20",
									"hidden" : 1,
									"patching_rect" : [ 536.0, 4.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "sample_size2",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"id" : "obj-21",
									"hidden" : 1,
									"patching_rect" : [ 76.0, -34.0, 35.0, 17.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar sample_name2",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-22",
									"patching_rect" : [ 261.0, 523.0, 100.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar sample_size2",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-23",
									"patching_rect" : [ 209.0, 549.0, 95.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print openinsp",
									"fontsize" : 9.0,
									"id" : "obj-24",
									"patching_rect" : [ 89.0, 497.0, 73.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "vzoom $1",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-25",
									"hidden" : 1,
									"patching_rect" : [ -18.0, -13.0, 54.0, 15.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar verticalzoom",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-26",
									"hidden" : 1,
									"patching_rect" : [ -18.0, -35.0, 93.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display start",
									"fontsize" : 12.0,
									"id" : "obj-27",
									"patching_rect" : [ 790.0, 334.0, 88.0, 20.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar verticalzoom",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-28",
									"hidden" : 1,
									"patching_rect" : [ 689.0, 334.0, 93.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/vzoom",
									"text" : "jcom.parameter sample/vzoom @type msg_float @range/clipmode non @description @repetitions/allow 0 @ramp/drive none \"set vertical zoom\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"id" : "obj-29",
									"hidden" : 1,
									"patching_rect" : [ 689.0, 355.0, 304.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "verticalzoom",
									"outlettype" : [ "float", "bang" ],
									"minimum" : 0.0,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"id" : "obj-30",
									"patching_rect" : [ 456.0, 136.0, 49.0, 17.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set vertical zoom",
									"fontsize" : 9.0,
									"id" : "obj-31",
									"patching_rect" : [ 368.0, 136.0, 85.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"varname" : "sample_name2",
									"text" : "drag",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-32",
									"patching_rect" : [ 22.0, 8.0, 490.0, 15.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar display_range",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-33",
									"hidden" : 1,
									"patching_rect" : [ 423.0, 216.0, 97.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display start",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"patching_rect" : [ 790.0, 273.0, 88.0, 20.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar display_range",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-35",
									"hidden" : 1,
									"patching_rect" : [ 689.0, 274.0, 97.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/displaystart[1]",
									"text" : "jcom.parameter sample/displaystart @type msg_list @range/clipmode non @description @repetitions/allow 0 @ramp/drive none \"display start  time in ms\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"id" : "obj-36",
									"hidden" : 1,
									"patching_rect" : [ 689.0, 294.0, 324.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "size $1",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-37",
									"hidden" : 1,
									"patching_rect" : [ 76.0, -16.0, 43.0, 15.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* -1",
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"id" : "obj-38",
									"hidden" : 1,
									"patching_rect" : [ 455.0, 277.0, 31.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"outlettype" : [ "int", "int" ],
									"fontsize" : 9.0,
									"id" : "obj-39",
									"hidden" : 1,
									"patching_rect" : [ 424.0, 236.0, 58.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "-",
									"outlettype" : [ "int" ],
									"fontsize" : 9.0,
									"id" : "obj-40",
									"hidden" : 1,
									"patching_rect" : [ 455.0, 257.0, 27.0, 17.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar displaylength",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-41",
									"hidden" : 1,
									"patching_rect" : [ 455.0, 297.0, 93.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar display_start",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-42",
									"hidden" : 1,
									"patching_rect" : [ 424.0, 317.0, 95.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "rslider",
									"varname" : "display_range",
									"outlettype" : [ "", "" ],
									"id" : "obj-43",
									"patching_rect" : [ 66.0, 21.0, 402.0, 20.0 ],
									"listmode" : 1,
									"numinlets" : 2,
									"numoutlets" : 2,
									"size" : 74313
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display start",
									"fontsize" : 9.0,
									"id" : "obj-44",
									"patching_rect" : [ 82.0, 136.0, 63.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "display_start",
									"outlettype" : [ "float", "bang" ],
									"minimum" : 0.0,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"id" : "obj-45",
									"patching_rect" : [ 147.0, 136.0, 49.0, 17.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display start",
									"fontsize" : 12.0,
									"id" : "obj-46",
									"patching_rect" : [ 783.0, 206.0, 88.0, 20.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar display_start",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-47",
									"hidden" : 1,
									"patching_rect" : [ 682.0, 207.0, 95.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/displaystart",
									"text" : "jcom.parameter sample/displaystart @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description @repetitions/allow 0 @ramp/drive none \"display start  time in ms\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"id" : "obj-48",
									"hidden" : 1,
									"patching_rect" : [ 682.0, 227.0, 413.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display length",
									"fontsize" : 12.0,
									"id" : "obj-49",
									"patching_rect" : [ 783.0, 139.0, 88.0, 20.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar displaylength",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-50",
									"hidden" : 1,
									"patching_rect" : [ 682.0, 140.0, 93.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/displaylength",
									"text" : "jcom.parameter sample/displaylength @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description @repetitions/allow 0 @ramp/drive none \"display length in ms\"",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"id" : "obj-51",
									"hidden" : 1,
									"patching_rect" : [ 682.0, 160.0, 399.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "display length",
									"fontsize" : 9.0,
									"id" : "obj-52",
									"patching_rect" : [ 76.0, 154.0, 69.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "displaylength",
									"outlettype" : [ "float", "bang" ],
									"minimum" : 0.0,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"id" : "obj-53",
									"patching_rect" : [ 147.0, 153.0, 49.0, 17.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "stoptime",
									"fontsize" : 12.0,
									"id" : "obj-54",
									"patching_rect" : [ 777.0, 74.0, 73.0, 20.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 -1 0 -1",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-55",
									"hidden" : 1,
									"patching_rect" : [ 536.0, 22.0, 51.0, 15.0 ],
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "select end ms",
									"fontsize" : 9.0,
									"id" : "obj-56",
									"patching_rect" : [ 223.0, 153.0, 68.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "select start ms",
									"fontsize" : 9.0,
									"id" : "obj-57",
									"patching_rect" : [ 216.0, 136.0, 75.0, 17.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "excerpt_end",
									"outlettype" : [ "float", "bang" ],
									"minimum" : 0.0,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"id" : "obj-58",
									"patching_rect" : [ 293.0, 152.0, 49.0, 17.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "excerpt_start",
									"outlettype" : [ "float", "bang" ],
									"minimum" : 0.0,
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"triscale" : 0.9,
									"id" : "obj-59",
									"patching_rect" : [ 293.0, 136.0, 49.0, 17.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "waveform~",
									"outlettype" : [ "float", "float", "float", "float", "list", "" ],
									"vzoom" : 0.69,
									"clipdraw" : 1,
									"setmode" : 3,
									"waveformcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
									"id" : "obj-60",
									"patching_rect" : [ 22.0, 40.0, 490.0, 93.0 ],
									"grid" : 500.0,
									"buffername" : "",
									"bgcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
									"numinlets" : 5,
									"textcolor" : [  ],
									"tickmarkcolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
									"selectioncolor" : [ 0.258824, 0.0, 0.007843, 0.5 ],
									"ticks" : 8,
									"numoutlets" : 6,
									"labelbgcolor" : [ 0.662745, 0.647059, 0.811765, 1.0 ],
									"vlabels" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "pictslider",
									"inactiveimage" : 0,
									"outlettype" : [ "int", "int" ],
									"topvalue" : 0,
									"id" : "obj-61",
									"patching_rect" : [ 3.0, 57.0, 19.0, 76.0 ],
									"knobpict" : "wfknob.pct",
									"movehorizontal" : 0,
									"numinlets" : 2,
									"rightvalue" : 0,
									"bottomvalue" : 3,
									"numoutlets" : 2,
									"imagemask" : 1,
									"bkgndpict" : "wfmodes.pct"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p wfkeys",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-62",
									"hidden" : 1,
									"patching_rect" : [ -27.0, 150.0, 50.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
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
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "int",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"id" : "obj-1",
													"patching_rect" : [ 96.0, 202.0, 27.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll",
													"outlettype" : [ "", "", "", "" ],
													"fontsize" : 9.0,
													"id" : "obj-2",
													"patching_rect" : [ 131.0, 255.0, 53.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 4,
													"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", 0, "mode", "select", ";", "#T", 1, "mode", "loop", ";", "#T", 2, "mode", "move", ";", "#T", 3, "mode", "draw", ";" ],
													"saved_object_attributes" : 													{
														"embed" : 1
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"outlettype" : [ "bang" ],
													"id" : "obj-3",
													"patching_rect" : [ 75.0, 117.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"id" : "obj-4",
													"patching_rect" : [ 74.0, 164.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : "waveform~ mode messages"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "<< 1",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"id" : "obj-5",
													"patching_rect" : [ 113.0, 88.0, 27.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"outlettype" : [ "", "int", "int" ],
													"fontsize" : 9.0,
													"id" : "obj-6",
													"patching_rect" : [ 96.0, 140.0, 40.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "select 0",
													"outlettype" : [ "bang", "" ],
													"fontsize" : 9.0,
													"id" : "obj-7",
													"patching_rect" : [ 96.0, 164.0, 45.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "|",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"id" : "obj-8",
													"patching_rect" : [ 96.0, 117.0, 27.0, 17.0 ],
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-9",
													"patching_rect" : [ 131.0, 284.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "modifiers 100",
													"outlettype" : [ "int", "int", "int", "int", "int" ],
													"fontsize" : 9.0,
													"id" : "obj-10",
													"patching_rect" : [ 45.0, 62.0, 78.0, 17.0 ],
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 5
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
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"globalpatchername" : "",
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar excerpt_end",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-63",
									"hidden" : 1,
									"patching_rect" : [ 681.0, 73.0, 90.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar excerpt_start",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-64",
									"hidden" : 1,
									"patching_rect" : [ 680.0, 12.0, 98.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/stop",
									"text" : "jcom.parameter sample/stop @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description \"stoptime time in ms\" @repetitions/allow 0 @ramp/drive scheduler",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"id" : "obj-65",
									"hidden" : 1,
									"patching_rect" : [ 681.0, 97.0, 385.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess patcher edit the loop",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"id" : "obj-66",
									"hidden" : 1,
									"patching_rect" : [ 56.0, 520.0, 146.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t front",
									"outlettype" : [ "front" ],
									"fontsize" : 9.0,
									"id" : "obj-67",
									"hidden" : 1,
									"patching_rect" : [ 45.0, 498.0, 40.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /open_inspector /play /sample",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 9.0,
									"id" : "obj-68",
									"hidden" : 1,
									"patching_rect" : [ 31.0, 388.0, 219.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-69",
									"hidden" : 1,
									"patching_rect" : [ 31.0, 361.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"outlettype" : [ "", "" ],
									"fontsize" : 9.0,
									"id" : "obj-70",
									"hidden" : 1,
									"patching_rect" : [ 56.0, 540.0, 61.0, 17.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "starttime",
									"fontsize" : 12.0,
									"id" : "obj-71",
									"patching_rect" : [ 779.0, 10.0, 73.0, 20.0 ],
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "sample/start",
									"text" : "jcom.parameter sample/start @type msg_float @range/bounds 0. 1000000. @range/clipmode low @description \"start time in ms\" @repetitions/allow 0 @ramp/drive scheduler",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"id" : "obj-72",
									"hidden" : 1,
									"patching_rect" : [ 680.0, 34.0, 385.0, 27.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [ 698.5, 387.0, 685.0, 387.0, 685.0, 332.0, 698.5, 332.0 ]
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
									"midpoints" : [ 698.5, 326.0, 685.0, 326.0, 685.0, 271.0, 698.5, 271.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-48", 0 ],
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
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [ 691.5, 267.0, 678.0, 267.0, 678.0, 204.0, 691.5, 204.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-51", 0 ],
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
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [ 691.5, 200.0, 678.0, 200.0, 678.0, 137.0, 691.5, 137.0 ]
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
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [ 690.5, 133.0, 677.0, 133.0, 677.0, 70.0, 690.5, 70.0 ]
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
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-72", 0 ],
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
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [ 689.5, 63.0, 676.0, 63.0, 676.0, 7.0, 689.5, 7.0 ]
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"midpoints" : [ 218.5, 494.0, 218.5, 494.0 ]
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-11", 0 ],
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
									"source" : [ "obj-68", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-24", 0 ],
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
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-67", 0 ],
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
									"midpoints" : [ -8.5, 40.0, 31.5, 40.0 ]
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
									"midpoints" : [ -13.5, 191.0, -35.0, 191.0, -35.0, 46.0 ]
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
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
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"presentation_rect" : [ 6.0, 65.0, 287.20929, 50.0 ],
					"vzoom" : 0.5,
					"clipdraw" : 1,
					"setmode" : 1,
					"waveformcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-46",
					"patching_rect" : [ 44.0, 81.0, 287.20929, 50.0 ],
					"grid" : 500.0,
					"presentation" : 1,
					"buffername" : "",
					"bgcolor" : [ 0.313726, 0.313726, 0.313726, 1.0 ],
					"numinlets" : 5,
					"textcolor" : [  ],
					"tickmarkcolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
					"selectioncolor" : [ 0.258824, 0.0, 0.007843, 0.5 ],
					"ticks" : 8,
					"numoutlets" : 6,
					"labelbgcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"vticks" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-47",
					"patching_rect" : [ 126.0, 200.0, 191.0, 15.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 9.0,
					"id" : "obj-48",
					"patching_rect" : [ 427.0, 474.0, 70.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-49",
					"patching_rect" : [ 146.0, 336.0, 49.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-50",
					"patching_rect" : [ 134.0, 222.0, 125.0, 15.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sampleplayer~ @description \"simple monophonic sampleplayer\"",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"id" : "obj-51",
					"patching_rect" : [ 36.0, 259.0, 328.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 9.0,
					"id" : "obj-52",
					"patching_rect" : [ 50.0, 223.0, 79.0, 17.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-53",
					"patching_rect" : [ 36.0, 223.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"id" : "obj-54",
					"patching_rect" : [ 265.0, 222.0, 31.0, 15.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"patching_rect" : [ 146.0, 318.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-56",
					"patching_rect" : [ 427.0, 511.0, 14.0, 14.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sampleplayer~ #0_",
					"outlettype" : [ "", "signal", "signal" ],
					"fontsize" : 9.0,
					"id" : "obj-57",
					"patching_rect" : [ 374.0, 446.0, 123.0, 17.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-58",
					"patching_rect" : [ 36.0, 299.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal output---",
					"fontsize" : 9.0,
					"id" : "obj-59",
					"patching_rect" : [ 401.0, 525.0, 100.0, 17.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 7.0, 65.0, 287.0, 73.0 ],
					"ignoreclick" : 1,
					"id" : "obj-60",
					"patching_rect" : [ 8.0, 60.0, 286.0, 48.0 ],
					"types" : [  ],
					"presentation" : 1,
					"border" : 0.0,
					"numinlets" : 1,
					"rounded" : 0.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"has_panel" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"has_meters" : 1,
					"has_gain" : 1,
					"id" : "obj-62",
					"patching_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"prefix" : "audio",
					"has_mute" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
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
					"midpoints" : [ 252.5, 378.0, 296.5, 378.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 429.5, 432.0, 383.5, 432.0 ]
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
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 383.5, 558.0, 8.0, 558.0, 8.0, 244.0, 45.5, 244.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 296.5, 420.0, 383.5, 420.0 ]
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 296.5, 462.0, 155.5, 462.0 ]
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
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 244.0, 45.5, 244.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 155.5, 558.0, 8.0, 558.0, 8.0, 243.0, 45.5, 243.0 ]
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
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-19", 0 ],
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-46", 3 ],
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
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
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
					"midpoints" : [ 251.5, 178.0, 53.5, 178.0 ]
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
 ]
	}

}
