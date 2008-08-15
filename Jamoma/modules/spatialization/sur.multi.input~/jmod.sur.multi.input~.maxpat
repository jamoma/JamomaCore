{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 196.0, 45.0, 976.0, 675.0 ],
		"bglocked" : 0,
		"defrect" : [ 196.0, 45.0, 976.0, 675.0 ],
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
					"maxclass" : "toggle",
					"hint" : "",
					"annotation" : "",
					"numinlets" : 1,
					"id" : "obj-16",
					"patching_rect" : [ 584.0, 21.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 239.0, 39.0, 16.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "",
					"annotation" : "",
					"numinlets" : 1,
					"id" : "obj-14",
					"patching_rect" : [ 459.0, 296.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 282.0, 39.0, 16.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[2]",
					"numinlets" : 1,
					"id" : "obj-70",
					"fontsize" : 9.873845,
					"mode" : 1,
					"texton" : "Resume",
					"patching_rect" : [ 571.0, 58.0, 49.0, 16.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"rounded" : 10.0,
					"text" : "Pause",
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 89.0, 39.0, 43.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Play_button[1]",
					"numinlets" : 1,
					"id" : "obj-84",
					"fontsize" : 9.873845,
					"mode" : 1,
					"texton" : "Play",
					"patching_rect" : [ 419.0, 243.0, 49.0, 16.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"rounded" : 10.0,
					"text" : "Play",
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 1.0, 39.0, 43.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Open_button[1]",
					"numinlets" : 1,
					"id" : "obj-83",
					"fontsize" : 9.873845,
					"texton" : "DSP",
					"patching_rect" : [ 498.0, 89.0, 49.0, 16.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"rounded" : 10.0,
					"text" : "Open",
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 45.0, 39.0, 43.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play[2]",
					"text" : "jcom.message direct @type msg_symbol @description \"direct commands to the sfplay~ object\"",
					"numinlets" : 1,
					"id" : "obj-1",
					"fontsize" : 10.0,
					"patching_rect" : [ 485.0, 345.0, 492.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0__xxx_done",
					"numinlets" : 0,
					"id" : "obj-2",
					"fontsize" : 10.0,
					"patching_rect" : [ 487.0, 213.0, 92.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.360784, 0.682353, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1.",
					"numinlets" : 2,
					"id" : "obj-4",
					"fontsize" : 10.0,
					"patching_rect" : [ 439.0, 163.0, 35.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "start",
					"text" : "jcom.message start @type msg_float @repetitions/allow 0 @description \"start time in soundfile to play in [ms]\"",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-5",
					"fontsize" : 10.0,
					"patching_rect" : [ 487.0, 170.0, 297.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"numinlets" : 1,
					"id" : "obj-6",
					"fontsize" : 10.0,
					"patching_rect" : [ 749.0, 439.0, 30.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
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
									"numinlets" : 2,
									"id" : "obj-1",
									"fontsize" : 10.0,
									"patching_rect" : [ 59.0, 109.0, 57.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"numinlets" : 2,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 59.0, 50.0, 32.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append channels",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontsize" : 10.0,
									"patching_rect" : [ 130.0, 110.0, 124.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-5",
									"patching_rect" : [ 59.0, 17.0, 28.0, 28.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-6",
									"patching_rect" : [ 59.0, 193.0, 32.0, 32.0 ],
									"numoutlets" : 0,
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
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"id" : "obj-7",
					"fontsize" : 10.0,
					"patching_rect" : [ 626.0, 486.0, 68.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"args" : [ 0.0, "@size", 300, 12, "@rgb2", 66, 0, 2, "@brgb", 47, 46, 36, "@frgb", 181, 181, 181, "@text", "drag", "file", "into", "the", "time", "display" ],
					"numinlets" : 1,
					"id" : "obj-8",
					"patching_rect" : [ 0.0, 20.0, 161.0, 13.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"name" : "jcom.textslider.maxpat",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 5.0, 23.0, 290.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "countdown[1]",
					"text" : "jcom.parameter countdown @type msg_toggle @description \"changes the time displayed in the module to countdown mode\"",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-10",
					"fontsize" : 10.0,
					"patching_rect" : [ 622.0, 15.0, 331.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "elapse:",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-11",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 213.0, 38.0, 43.0, 31.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 199.0, 37.0, 45.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "name_symbol[1]",
					"numinlets" : 2,
					"id" : "obj-13",
					"fontsize" : 9.9792,
					"patching_rect" : [ 736.0, 478.0, 108.0, 17.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.811765, 0.811765, 0.811765, 0.811765 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"ignoreclick" : 1,
					"presentation_rect" : [ 133.0, 39.354168, 69.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop:",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-18",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 272.0, 38.0, 30.0, 31.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 253.0, 37.0, 34.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ms",
					"numinlets" : 1,
					"id" : "obj-19",
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontsize" : 20.0,
					"patching_rect" : [ 208.0, 61.0, 36.0, 29.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 223.0, 66.0, 36.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "s",
					"numinlets" : 1,
					"id" : "obj-20",
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontsize" : 20.0,
					"patching_rect" : [ 135.0, 61.0, 29.0, 29.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 150.0, 66.0, 29.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "m",
					"numinlets" : 1,
					"id" : "obj-21",
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontsize" : 20.0,
					"patching_rect" : [ 76.0, 61.0, 29.0, 29.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 92.0, 66.0, 29.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "h",
					"numinlets" : 1,
					"id" : "obj-22",
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontsize" : 20.0,
					"patching_rect" : [ 29.0, 61.0, 25.0, 29.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontname" : "Arial",
					"presentation_rect" : [ 45.0, 66.0, 25.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "xfade_threshold[3]",
					"numinlets" : 1,
					"id" : "obj-23",
					"fontsize" : 20.0,
					"cantchange" : 1,
					"patching_rect" : [ 161.0, 60.0, 48.0, 29.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"presentation_rect" : [ 177.0, 65.0, 48.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "xfade_threshold[2]",
					"numinlets" : 1,
					"id" : "obj-24",
					"fontsize" : 20.0,
					"cantchange" : 1,
					"patching_rect" : [ 100.0, 60.0, 33.0, 29.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"presentation_rect" : [ 116.0, 65.0, 33.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "xfade_threshold[1]",
					"numinlets" : 1,
					"id" : "obj-25",
					"fontsize" : 20.0,
					"cantchange" : 1,
					"patching_rect" : [ 44.0, 60.0, 31.0, 29.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"presentation_rect" : [ 60.0, 65.0, 31.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "xfade_threshold",
					"numinlets" : 1,
					"id" : "obj-26",
					"fontsize" : 20.0,
					"cantchange" : 1,
					"patching_rect" : [ 6.0, 60.0, 24.660156, 29.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"triscale" : 0.9,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"presentation_rect" : [ 22.0, 65.0, 24.660156, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "timer",
					"text" : "p h:m:s:ms",
					"numinlets" : 1,
					"id" : "obj-27",
					"fontsize" : 10.0,
					"patching_rect" : [ 292.0, 156.0, 68.0, 19.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "float", "float", "float", "float" ],
					"fontname" : "Verdana",
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
									"numinlets" : 1,
									"id" : "obj-1",
									"patching_rect" : [ 67.0, 24.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!/ 1.",
									"numinlets" : 2,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 56.0, 68.0, 31.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 3600000.",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontsize" : 10.0,
									"patching_rect" : [ 56.0, 44.0, 107.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-4",
									"patching_rect" : [ 352.0, 290.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-5",
									"patching_rect" : [ 243.0, 287.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-6",
									"patching_rect" : [ 131.0, 284.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-7",
									"patching_rect" : [ 30.0, 289.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1-$i2",
									"numinlets" : 2,
									"id" : "obj-8",
									"fontsize" : 10.0,
									"patching_rect" : [ 259.0, 208.0, 71.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1000.",
									"numinlets" : 2,
									"id" : "obj-9",
									"fontsize" : 10.0,
									"patching_rect" : [ 352.0, 231.0, 47.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1-$i2",
									"numinlets" : 2,
									"id" : "obj-10",
									"fontsize" : 10.0,
									"patching_rect" : [ 158.0, 162.0, 71.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60.",
									"numinlets" : 2,
									"id" : "obj-11",
									"fontsize" : 10.0,
									"patching_rect" : [ 243.0, 186.0, 35.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1-$i2",
									"numinlets" : 2,
									"id" : "obj-12",
									"fontsize" : 10.0,
									"patching_rect" : [ 46.0, 114.0, 71.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60.",
									"numinlets" : 2,
									"id" : "obj-13",
									"fontsize" : 10.0,
									"patching_rect" : [ 131.0, 139.0, 35.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"numinlets" : 2,
									"id" : "obj-14",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 91.0, 35.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-15",
									"patching_rect" : [ 30.0, 27.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ms",
									"numinlets" : 1,
									"id" : "obj-16",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 36.0,
									"patching_rect" : [ 458.0, 261.0, 63.0, 50.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "s",
									"numinlets" : 1,
									"id" : "obj-17",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 36.0,
									"patching_rect" : [ 309.0, 261.0, 39.0, 50.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "m",
									"numinlets" : 1,
									"id" : "obj-18",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 36.0,
									"patching_rect" : [ 195.0, 261.0, 44.0, 50.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "h",
									"numinlets" : 1,
									"id" : "obj-19",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 36.0,
									"patching_rect" : [ 94.0, 261.0, 39.0, 50.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
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
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play[1]",
					"text" : "jcom.message pause @type msg_toggle @repetitions/allow 0 @description \\\"Pause\\\"",
					"numinlets" : 1,
					"id" : "obj-30",
					"fontsize" : 10.0,
					"patching_rect" : [ 625.0, 57.0, 439.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.multi.in~",
					"numinlets" : 32,
					"id" : "obj-31",
					"fontsize" : 10.0,
					"patching_rect" : [ 275.0, 540.0, 459.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend text",
					"numinlets" : 1,
					"id" : "obj-32",
					"fontsize" : 10.0,
					"patching_rect" : [ 669.0, 440.0, 73.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numinlets" : 1,
					"id" : "obj-33",
					"fontsize" : 10.0,
					"patching_rect" : [ 331.0, 46.0, 51.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "text drag file into the time display",
					"numinlets" : 2,
					"id" : "obj-34",
					"fontsize" : 10.0,
					"patching_rect" : [ 332.0, 66.0, 180.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /sf_open",
					"numinlets" : 1,
					"id" : "obj-36",
					"fontsize" : 10.0,
					"patching_rect" : [ 3.0, 203.0, 97.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"id" : "obj-37",
					"fontsize" : 10.0,
					"patching_rect" : [ 398.0, 409.0, 49.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.algorithm_control~",
					"numinlets" : 1,
					"id" : "obj-38",
					"fontsize" : 10.0,
					"patching_rect" : [ 275.0, 388.0, 143.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /info/name /info/channels /info/size /info/playername",
					"numinlets" : 1,
					"id" : "obj-39",
					"fontsize" : 10.0,
					"patching_rect" : [ 669.0, 420.0, 355.0, 19.0 ],
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar sample_size",
					"numinlets" : 1,
					"id" : "obj-40",
					"fontsize" : 10.0,
					"patching_rect" : [ 487.0, 401.0, 96.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop[2]",
					"text" : "jcom.message info/size @type msg_int @description \"size of the loaded soundfile\"",
					"numinlets" : 1,
					"id" : "obj-41",
					"fontsize" : 10.0,
					"patching_rect" : [ 487.0, 382.0, 425.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open",
					"numinlets" : 1,
					"id" : "obj-43",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 440.0, 102.0, 39.0, 21.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loop",
					"numinlets" : 1,
					"id" : "obj-44",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 421.0, 292.0, 39.0, 21.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play",
					"numinlets" : 1,
					"id" : "obj-45",
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontsize" : 12.0,
					"patching_rect" : [ 375.0, 245.0, 39.0, 21.0 ],
					"numoutlets" : 0,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "play",
					"text" : "jcom.message play @type msg_toggle @repetitions/allow 0 @description \"starts playback\"",
					"numinlets" : 1,
					"id" : "obj-48",
					"fontsize" : 10.0,
					"patching_rect" : [ 487.0, 242.0, 468.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "jcom.parameter loop @type msg_toggle @description \"Loop soundfile.\"",
					"numinlets" : 1,
					"id" : "obj-49",
					"fontsize" : 10.0,
					"patching_rect" : [ 487.0, 296.0, 369.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxb[10]",
					"text" : "jcom.message sf_open @type msg_symbol @description \"Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-51",
					"fontsize" : 10.0,
					"patching_rect" : [ 497.0, 109.0, 448.0, 31.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"id" : "obj-54",
					"fontsize" : 10.0,
					"patching_rect" : [ 114.0, 207.0, 196.0, 17.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 24",
					"numinlets" : 24,
					"id" : "obj-55",
					"fontsize" : 10.0,
					"patching_rect" : [ 275.0, 486.0, 351.0, 19.0 ],
					"numoutlets" : 25,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"numinlets" : 1,
					"id" : "obj-56",
					"fontsize" : 10.0,
					"patching_rect" : [ 275.0, 364.0, 54.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"id" : "obj-57",
					"fontsize" : 10.0,
					"patching_rect" : [ 122.0, 229.0, 137.0, 17.0 ],
					"numoutlets" : 1,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"A simple multichannel sampleplayer based on sfplay~\"",
					"linecount" : 2,
					"numinlets" : 1,
					"id" : "obj-59",
					"fontsize" : 10.0,
					"patching_rect" : [ 22.0, 266.0, 317.0, 31.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"id" : "obj-60",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 38.0, 230.0, 87.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-61",
					"patching_rect" : [ 24.0, 230.0, 13.0, 13.0 ],
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
					"id" : "obj-62",
					"fontsize" : 10.0,
					"patching_rect" : [ 253.0, 229.0, 31.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-63",
					"patching_rect" : [ 275.0, 331.0, 27.0, 27.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-64",
					"patching_rect" : [ 275.0, 570.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.sur.multi.input~ #0_",
					"numinlets" : 1,
					"id" : "obj-65",
					"fontsize" : 10.0,
					"patching_rect" : [ 275.0, 448.0, 380.0, 19.0 ],
					"numoutlets" : 27,
					"outlettype" : [ "signal", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "float", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-66",
					"patching_rect" : [ 24.0, 306.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal output---",
					"numinlets" : 1,
					"id" : "obj-67",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 309.0, 570.0, 101.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"id" : "obj-68",
					"types" : [  ],
					"patching_rect" : [ 1.0, 58.0, 294.0, 44.0 ],
					"numoutlets" : 2,
					"border" : 0.0,
					"rounded" : 0.0,
					"outlettype" : [ "", "" ],
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"has_freeze" : 1,
					"id" : "obj-69",
					"patching_rect" : [ -1.0, 0.0, 300.0, 105.0 ],
					"numoutlets" : 1,
					"prefix" : "audio",
					"has_mute" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"has_gain" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ]
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-32", 0 ],
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
					"source" : [ "obj-39", 1 ],
					"destination" : [ "obj-6", 0 ],
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
 ]
	}

}
