{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 304.0, 46.0, 976.0, 675.0 ],
		"bglocked" : 0,
		"defrect" : [ 304.0, 46.0, 976.0, 675.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend ignoreclick",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 712.0, 267.0, 109.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 0,
					"patching_rect" : [ 79.0, 430.0, 128.0, 128.0 ],
					"id" : "obj-35",
					"args" : [  ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "",
					"annotation" : "",
					"numoutlets" : 1,
					"patching_rect" : [ 584.0, 21.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-16",
					"presentation_rect" : [ 240.0, 32.0, 16.0, 16.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "",
					"annotation" : "",
					"numoutlets" : 1,
					"patching_rect" : [ 459.0, 296.0, 20.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-14",
					"presentation_rect" : [ 282.0, 32.0, 16.0, 16.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[2]",
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 571.0, 58.0, 49.0, 16.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"texton" : "Resume",
					"text" : "Pause",
					"id" : "obj-70",
					"fontname" : "Verdana",
					"rounded" : 8.0,
					"presentation_rect" : [ 90.0, 32.0, 43.0, 16.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button[1]",
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 419.0, 243.0, 49.0, 16.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"texton" : "Play",
					"text" : "Play",
					"id" : "obj-84",
					"fontname" : "Verdana",
					"rounded" : 8.0,
					"presentation_rect" : [ 2.0, 32.0, 43.0, 16.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[1]",
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"patching_rect" : [ 498.0, 89.0, 49.0, 16.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"texton" : "DSP",
					"text" : "Open",
					"id" : "obj-83",
					"fontname" : "Verdana",
					"rounded" : 8.0,
					"presentation_rect" : [ 46.0, 32.0, 43.0, 16.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play[2]",
					"text" : "jcom.message direct @type msg_symbol @description \"direct commands to the sfplay~ object\"",
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 485.0, 345.0, 492.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0__xxx_done",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 487.0, 213.0, 92.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1.",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 439.0, 163.0, 35.0, 19.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "start",
					"text" : "jcom.message start @type msg_float @repetitions/allow 0 @description \"start time in soundfile to play in [ms]\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 487.0, 170.0, 297.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 749.0, 439.0, 30.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patcher" : 					{
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 channel",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 59.0, 109.0, 57.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 59.0, 50.0, 32.0, 19.0 ],
									"outlettype" : [ "bang", "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append channels",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 130.0, 110.0, 124.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 59.0, 17.0, 28.0, 28.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 193.0, 32.0, 32.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 626.0, 486.0, 68.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"patching_rect" : [ 327.0, 130.0, 161.0, 13.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"name" : "jcom.textslider.maxpat",
					"id" : "obj-8",
					"presentation_rect" : [ 1.0, 19.0, 299.0, 13.0 ],
					"args" : [ 0.0, "@size", 300, 12, "@rgb2", 66, 0, 2, "@brgb", 47, 46, 36, "@frgb", 181, 181, 181, "@text", "drag", "file", "into", "the", "time", "display" ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "countdown[1]",
					"text" : "jcom.parameter countdown @type msg_toggle @description \"changes the time displayed in the module to countdown mode\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 622.0, 15.0, 331.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "elapse:",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 213.0, 38.0, 43.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"presentation_rect" : [ 200.0, 30.0, 45.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "name_symbol[1]",
					"ignoreclick" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 736.0, 478.0, 108.0, 17.0 ],
					"bgcolor" : [ 0.811765, 0.811765, 0.811765, 0.811765 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"presentation_rect" : [ 134.0, 32.354168, 69.0, 17.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop:",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 272.0, 38.0, 30.0, 31.0 ],
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"presentation_rect" : [ 253.0, 30.0, 34.0, 19.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ms",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 208.0, 61.0, 229.0, 28.0 ],
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"presentation_rect" : [ 216.0, 46.0, 40.0, 28.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "s",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 61.0, 194.0, 28.0 ],
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"presentation_rect" : [ 156.0, 46.0, 24.0, 28.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "m",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 76.0, 61.0, 218.0, 28.0 ],
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"presentation_rect" : [ 106.0, 46.0, 26.0, 28.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "h",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"patching_rect" : [ 29.0, 61.0, 200.0, 28.0 ],
					"presentation" : 1,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"presentation_rect" : [ 59.0, 46.0, 24.0, 28.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"bordercolor" : [ 0.701961, 0.6, 0.901961, 0.0 ],
					"patching_rect" : [ 161.0, 60.0, 67.0, 28.0 ],
					"bgcolor" : [ 0.301961, 0.0, 0.6, 0.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 172.0, 47.0, 45.0, 28.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"ignoreclick" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"bordercolor" : [ 0.701961, 0.6, 0.901961, 0.0 ],
					"patching_rect" : [ 100.0, 60.0, 67.0, 28.0 ],
					"bgcolor" : [ 0.301961, 0.0, 0.6, 0.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 130.0, 47.0, 34.0, 28.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"ignoreclick" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"bordercolor" : [ 0.701961, 0.6, 0.901961, 0.0 ],
					"patching_rect" : [ 44.0, 60.0, 67.0, 28.0 ],
					"bgcolor" : [ 0.301961, 0.0, 0.6, 0.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 86.0, 47.0, 24.0, 28.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"ignoreclick" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 2,
					"bordercolor" : [ 0.701961, 0.6, 0.901961, 0.0 ],
					"patching_rect" : [ 6.0, 60.0, 67.0, 28.0 ],
					"bgcolor" : [ 0.301961, 0.0, 0.6, 0.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"triangle" : 0,
					"presentation_rect" : [ 36.0, 47.0, 24.0, 28.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "timer",
					"text" : "p h:m:s:ms",
					"fontsize" : 10.0,
					"numoutlets" : 4,
					"patching_rect" : [ 305.0, 163.0, 68.0, 19.0 ],
					"outlettype" : [ "float", "float", "float", "float" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 261.0, 332.0, 636.0, 369.0 ],
						"bglocked" : 0,
						"defrect" : [ 261.0, 332.0, 636.0, 369.0 ],
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
									"maxclass" : "button",
									"numoutlets" : 1,
									"patching_rect" : [ 67.0, 24.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-1",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!/ 1.",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 56.0, 68.0, 31.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 3600000.",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 56.0, 44.0, 107.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 352.0, 290.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 243.0, 287.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 284.0, 15.0, 15.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 289.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1-$i2",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 259.0, 208.0, 71.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1000.",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 352.0, 231.0, 47.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1-$i2",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 158.0, 162.0, 71.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60.",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 243.0, 186.0, 35.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1-$i2",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 46.0, 114.0, 71.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60.",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 131.0, 139.0, 35.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 91.0, 35.0, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"patching_rect" : [ 30.0, 27.0, 15.0, 15.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-15",
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ms",
									"fontsize" : 36.0,
									"numoutlets" : 0,
									"patching_rect" : [ 458.0, 261.0, 63.0, 50.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "s",
									"fontsize" : 36.0,
									"numoutlets" : 0,
									"patching_rect" : [ 309.0, 261.0, 39.0, 50.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "m",
									"fontsize" : 36.0,
									"numoutlets" : 0,
									"patching_rect" : [ 195.0, 261.0, 44.0, 50.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "h",
									"fontsize" : 36.0,
									"numoutlets" : 0,
									"patching_rect" : [ 94.0, 261.0, 39.0, 50.0 ],
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 111.0, 55.5, 111.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 110.0, 107.5, 110.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 55.5, 135.0, 140.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 140.5, 158.0, 167.5, 158.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [ 140.5, 158.0, 219.5, 158.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.5, 183.0, 252.5, 183.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 252.5, 206.0, 268.5, 206.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [ 252.5, 205.0, 320.5, 205.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 268.5, 228.0, 361.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
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
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play[1]",
					"text" : "jcom.message pause @type msg_toggle @repetitions/allow 0 @description \\\"Pause\\\"",
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 625.0, 57.0, 439.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.in~",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 275.0, 540.0, 459.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 32
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend text",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 669.0, 440.0, 73.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 331.0, 46.0, 51.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "text drag file into the time display",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 332.0, 66.0, 180.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /sf_open",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 3.0, 203.0, 97.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 398.0, 409.0, 49.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 275.0, 388.0, 143.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /info/name /info/channels /info/size /info/playername",
					"fontsize" : 10.0,
					"numoutlets" : 5,
					"patching_rect" : [ 669.0, 420.0, 355.0, 19.0 ],
					"outlettype" : [ "", "", "", "", "" ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar sample_size",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 487.0, 401.0, 96.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop[2]",
					"text" : "jcom.message info/size @type msg_int @description \"size of the loaded soundfile\"",
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 487.0, 382.0, 425.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 102.0, 39.0, 21.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 421.0, 292.0, 39.0, 21.0 ],
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play",
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 375.0, 245.0, 39.0, 21.0 ],
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play",
					"text" : "jcom.message play @type msg_toggle @repetitions/allow 0 @description \"starts playback\"",
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 487.0, 242.0, 468.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-48",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter loop @type msg_toggle @description \"Loop soundfile.\"",
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 487.0, 296.0, 369.0, 19.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message sf_open @type msg_symbol @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 3,
					"patching_rect" : [ 497.0, 109.0, 448.0, 31.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 114.0, 207.0, 196.0, 17.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 24",
					"fontsize" : 10.0,
					"numoutlets" : 25,
					"patching_rect" : [ 275.0, 486.0, 351.0, 19.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"id" : "obj-55",
					"fontname" : "Verdana",
					"numinlets" : 24
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 275.0, 364.0, 54.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 122.0, 229.0, 137.0, 17.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"A simple multichannel sampleplayer based on sfplay~\"",
					"linecount" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 22.0, 266.0, 317.0, 31.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-59",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 38.0, 230.0, 87.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-60",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 24.0, 230.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-61",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 253.0, 229.0, 31.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-62",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 275.0, 331.0, 27.0, 27.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-63",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 275.0, 570.0, 25.0, 25.0 ],
					"id" : "obj-64",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.multi.input~ #0_",
					"fontsize" : 10.0,
					"numoutlets" : 27,
					"patching_rect" : [ 275.0, 448.0, 380.0, 19.0 ],
					"outlettype" : [ "signal", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "float", "float", "" ],
					"id" : "obj-65",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 306.0, 13.0, 13.0 ],
					"id" : "obj-66",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal output---",
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 309.0, 570.0, 101.0, 19.0 ],
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"id" : "obj-67",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"ignoreclick" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1.0, 58.0, 294.0, 44.0 ],
					"outlettype" : [ "", "" ],
					"border" : 0.0,
					"types" : [  ],
					"id" : "obj-68",
					"rounded" : 0.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 229.0, 155.0, 128.0, 128.0 ],
					"presentation" : 1,
					"border" : 1,
					"id" : "obj-3",
					"presentation_rect" : [ 31.0, 50.0, 220.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_freeze" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ -1.0, 0.0, 300.0, 70.0 ],
					"has_mute" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"prefix" : "audio",
					"id" : "obj-69",
					"has_gain" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 262.5, 251.0, 31.5, 251.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 131.5, 250.0, 31.5, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 123.5, 250.0, 31.5, 250.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 432.0, 284.5, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 23 ],
					"destination" : [ "obj-55", 23 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 22 ],
					"destination" : [ "obj-55", 22 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 21 ],
					"destination" : [ "obj-55", 21 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 20 ],
					"destination" : [ "obj-55", 20 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 19 ],
					"destination" : [ "obj-55", 19 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 18 ],
					"destination" : [ "obj-55", 18 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 17 ],
					"destination" : [ "obj-55", 17 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 16 ],
					"destination" : [ "obj-55", 16 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 15 ],
					"destination" : [ "obj-55", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 14 ],
					"destination" : [ "obj-55", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 13 ],
					"destination" : [ "obj-55", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 12 ],
					"destination" : [ "obj-55", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 11 ],
					"destination" : [ "obj-55", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 10 ],
					"destination" : [ "obj-55", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 9 ],
					"destination" : [ "obj-55", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 8 ],
					"destination" : [ "obj-55", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 7 ],
					"destination" : [ "obj-55", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 6 ],
					"destination" : [ "obj-55", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 5 ],
					"destination" : [ "obj-55", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 4 ],
					"destination" : [ "obj-55", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 3 ],
					"destination" : [ "obj-55", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 2 ],
					"destination" : [ "obj-55", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 1 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 407.5, 432.0, 284.5, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 26 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 24 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 25 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 2 ],
					"destination" : [ "obj-31", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 3 ],
					"destination" : [ "obj-31", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 4 ],
					"destination" : [ "obj-31", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 5 ],
					"destination" : [ "obj-31", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 6 ],
					"destination" : [ "obj-31", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 7 ],
					"destination" : [ "obj-31", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 8 ],
					"destination" : [ "obj-31", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 9 ],
					"destination" : [ "obj-31", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 10 ],
					"destination" : [ "obj-31", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 11 ],
					"destination" : [ "obj-31", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 12 ],
					"destination" : [ "obj-31", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 13 ],
					"destination" : [ "obj-31", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 2 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 14 ],
					"destination" : [ "obj-31", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 15 ],
					"destination" : [ "obj-31", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 422.0, 480.0, 422.0, 480.0, 377.0, 496.5, 377.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 16 ],
					"destination" : [ "obj-31", 16 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 17 ],
					"destination" : [ "obj-31", 17 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 18 ],
					"destination" : [ "obj-31", 18 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 19 ],
					"destination" : [ "obj-31", 19 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 20 ],
					"destination" : [ "obj-31", 20 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 21 ],
					"destination" : [ "obj-31", 21 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 22 ],
					"destination" : [ "obj-31", 22 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 23 ],
					"destination" : [ "obj-31", 23 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 1 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-14", 0 ],
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
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 3 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
