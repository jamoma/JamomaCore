{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 2.0, 46.0, 800.0, 690.0 ],
		"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 2.0, 46.0, 800.0, 690.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Keyboard Commands",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 513.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-53",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 8.0, 68.0, 382.0, 474.0 ],
						"bgcolor" : [ 0.98, 0.98, 0.98, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 8.0, 68.0, 382.0, 474.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "orientation",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 417.0, 65.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+ cmd (MAC)\n+ ctrl (PC)",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 412.0, 82.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rotation/radial movement",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 392.0, 140.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+ alt",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 392.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "translation x/z",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 372.0, 83.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+ shift",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 372.0, 44.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "S + shift",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 214.0, 54.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "S",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 195.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "O + shift",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 174.0, 55.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "enable/disable orientation (toggle synchronously)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 174.0, 261.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "O",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 155.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "enable/disable orientation (toggle individually)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 155.0, 245.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "L + shift",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 134.0, 53.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lock/unlock selection (toggle synchronously)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 134.0, 234.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "L",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 115.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "lock/unlock selection (toggle individually)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 115.0, 219.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "reset zoom",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 296.0, 66.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "=",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 296.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "zoom out",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 276.0, 57.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "zoom in",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 256.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 276.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 256.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 75.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "D",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 95.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "select all",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 75.0, 55.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "store snapshot",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 214.0, 85.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "translation x/y",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 352.0, 84.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delete selected points",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 235.0, 120.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "nudge selected points (arrow keys)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 331.0, 188.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "deselect all",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 95.0, 67.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "recall snapshot",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 195.0, 86.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "select/deselect points",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 55.0, 119.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delete key",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 235.0, 63.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : " ",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 352.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 - 9",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 55.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(only when the monitor has keyboard-focus, i.e. is highlighted)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 16.0, 329.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 0.98 0.98 0.98",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 14.0, 446.0, 126.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[6]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 15.0, 410.0, 350.0, 34.0 ],
									"numinlets" : 1,
									"id" : "obj-53",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[5]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 16.0, 371.0, 350.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-52",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[4]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 15.0, 194.0, 350.0, 40.0 ],
									"numinlets" : 1,
									"id" : "obj-43",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[2]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 15.0, 115.0, 350.0, 40.0 ],
									"numinlets" : 1,
									"id" : "obj-35",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[3]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 15.0, 74.0, 350.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[1]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 15.0, 255.0, 350.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-30",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[9]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 15.0, 294.0, 350.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-34",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Orientation",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 337.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-29",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 9.0, 69.0, 661.0, 659.0 ],
						"bgcolor" : [ 0.98, 0.98, 0.98, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 9.0, 69.0, 661.0, 659.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "keyboard commands:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 292.0, 372.0, 131.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "orientation 0 no",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 494.0, 450.0, 91.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "index 0 = all points",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 342.0, 332.0, 113.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Pitch",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 394.0, 222.0, 39.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Yaw",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 342.0, 222.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 395.0, 246.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 342.0, 246.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "orientation 0 $1 $2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 342.0, 296.0, 110.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak f f",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 342.0, 271.0, 72.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "xyz <index> <yaw> <pitch>",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 341.0, 37.0, 159.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "xyz <index> <x> <y> <z> <group> <yaw> <pitch>",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 37.0, 285.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arrow key or mouse drag\n + cmd (MAC)\n + ctrl (PC)\nto change orientation",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 292.0, 517.0, 141.0, 55.0 ],
									"numinlets" : 1,
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "disable orientation\nprogramatically...",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 494.0, 481.0, 107.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "orientation 2 no",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 494.0, 414.0, 91.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(as soon as there is\ninput data, orientation\nis automatically enabled\nfor this point )",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 292.0, 438.0, 136.0, 55.0 ],
									"numinlets" : 1,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "enable/disable orientation:\nselect point + key \"o\"",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 292.0, 397.0, 149.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Pitch",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 529.0, 64.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Yaw",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 479.0, 64.0, 31.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 532.0, 88.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 479.0, 88.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set orientation 1 $1 $2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 479.0, 138.0, 130.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak f f",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 479.0, 113.0, 72.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "orientation only input:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 341.0, 14.0, 138.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "position & orientation input:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 14.0, 171.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Pitch",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 392.0, 64.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Yaw",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 342.0, 64.0, 31.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 395.0, 88.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 342.0, 88.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "orientation 2 $1 $2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 342.0, 138.0, 111.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak f f",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 342.0, 113.0, 72.0, 19.0 ],
									"numinlets" : 2,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Pitch",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 253.0, 64.0, 35.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Yaw",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 201.0, 64.0, 31.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 254.0, 88.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 201.0, 88.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "X Y Z",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 64.0, 37.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 136.0, 88.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 83.0, 88.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 88.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak xyz 1 f f f 0 f f",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 136.0, 204.0, 19.0 ],
									"numinlets" : 8,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "output: the 5th & 6th number indicate\nyaw and pitch",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 611.0, 210.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aed 1 0. 0. 0. 1 145. 175.",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 586.0, 221.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 0.98 0.98 0.98",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 248.0, 626.0, 129.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ambimonitor",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"numbers" : 1,
									"mode" : 1,
									"presentation_rect" : [ 15.0, 15.0, 100.0, 155.0 ],
									"patching_rect" : [ 30.0, 179.0, 256.0, 389.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 503.5, 469.0, 488.0, 469.0, 488.0, 166.0, 39.5, 166.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 351.5, 324.0, 488.0, 324.0, 488.0, 166.0, 39.5, 166.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-28", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 503.5, 435.0, 488.0, 435.0, 488.0, 166.0, 39.5, 166.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 488.5, 166.0, 39.5, 166.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 351.5, 166.0, 39.5, 166.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 579.0, 241.5, 579.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-32", 2 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 121.0, 92.35714, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-32", 3 ],
									"hidden" : 0,
									"midpoints" : [ 92.5, 121.0, 118.785713, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-32", 4 ],
									"hidden" : 0,
									"midpoints" : [ 145.5, 121.0, 145.214279, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-32", 6 ],
									"hidden" : 0,
									"midpoints" : [ 210.5, 121.0, 198.071426, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-32", 7 ],
									"hidden" : 0,
									"midpoints" : [ 263.5, 121.0, 224.5, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
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
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Groups",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 314.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-21",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 8.0, 69.0, 594.0, 547.0 ],
						"bgcolor" : [ 0.98, 0.98, 0.98, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 8.0, 69.0, 594.0, 547.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- type G \n- enter group index",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 358.0, 334.0, 109.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- type SHIFT + G\n- enter group index",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 358.0, 245.0, 109.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "select group:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 358.0, 309.0, 86.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set group for selected point(s):",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 358.0, 220.0, 189.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "default group for all points\n(i.e. group 1)",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 435.0, 7.0, 114.0, 43.0 ],
									"numinlets" : 1,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set group for all points",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 300.0, 7.0, 126.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "group points:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 32.0, 31.0, 79.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "group <group index> <point index 1>...<point index n>",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 44.0, 112.0, 299.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, -29.0, 57.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "xyz 1 -0.5 0.2, xyz 2 0.3 -0.4, xyz 3 -0.1 0.5, xyz 4 0.5 0.2, xyz 5 -0.3 -0.5",
									"linecount" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, -7.0, 249.0, 29.0 ],
									"numinlets" : 2,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "output: the 4th number indicates status/group",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 34.0, 506.0, 247.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aed 5 -149.03624 0. 0.583095 1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 479.0, 177.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "group 4 3 4 5",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 127.0, 58.0, 80.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "group 2 1 2 3",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 30.0, 58.0, 80.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 304.0, 32.0, 52.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "group $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 304.0, 58.0, 57.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "group",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 435.0, 58.0, 41.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 0.98 0.98 0.98",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 365.0, 436.0, 127.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ambimonitor",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"numbers" : 1,
									"presentation_rect" : [ 15.0, 15.0, 100.0, 100.0 ],
									"patching_rect" : [ 30.0, 140.0, 320.0, 320.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 471.0, 197.5, 471.0 ]
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
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 39.5, 82.0, 39.5, 82.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 136.5, 82.0, 39.5, 82.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 82.0, 361.0, 82.0, 361.0, 82.0, 39.5, 82.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 444.5, 82.0, 39.5, 82.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_see_title",
					"text" : "see also:",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 498.0, 602.0, 64.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-79"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"items" : [ "ambiencode~", ",", "ambidecode~", ",", "ambicontrol", ",", "<separator>", ",", "icst.datatree" ],
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 502.0, 625.0, 156.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-80"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"textcolor" : [ 0.921569, 0.921569, 0.458824, 1.0 ],
					"numoutlets" : 4,
					"vscroll" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "list", "", "", "" ],
					"selmode" : 0,
					"cols" : 6,
					"rows" : 1,
					"just" : 1,
					"fontsize" : 10.0,
					"hscroll" : 0,
					"colwidth" : 50,
					"patching_rect" : [ 43.0, 652.0, 301.0, 20.0 ],
					"numinlets" : 2,
					"hcellcolor" : [ 0.768627, 0.768627, 0.768627, 1.0 ],
					"id" : "obj-78",
					"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
					"rowheight" : 19
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0 $2",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 156.0, 701.0, 69.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-76"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "listfunnel",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"hidden" : 1,
					"outlettype" : [ "list" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 156.0, 678.0, 57.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-77"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output:",
					"numoutlets" : 0,
					"fontname" : "Verdana Bold",
					"fontsize" : 10.0,
					"patching_rect" : [ 32.0, 566.0, 53.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "delete:",
					"numoutlets" : 0,
					"fontname" : "Verdana Bold",
					"fontsize" : 10.0,
					"patching_rect" : [ 500.0, 97.0, 51.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-74"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"textoncolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"textcolor" : [ 0.0, 0.145098, 0.717647, 1.0 ],
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"textovercolor" : [ 0.85098, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"border" : 0,
					"bgovercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"text" : "www.icst.net",
					"fontsize" : 9.0,
					"bgoveroncolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"bgoncolor" : [ 0.54902, 0.54902, 0.54902, 0.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 696.0, 57.0, 77.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-70",
					"textoveroncolor" : [ 0.0, 0.298039, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"rounded" : 0.0,
					"underline" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launch_browser http://www.icst.net",
					"linecount" : 2,
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"gradient" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"patching_rect" : [ 781.0, 7.0, 246.0, 31.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 2,
					"id" : "obj-71",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 0 $2",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 71.0, 701.0, 69.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-67"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "listfunnel",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"hidden" : 1,
					"outlettype" : [ "list" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 71.0, 678.0, 57.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"textcolor" : [ 0.921569, 0.921569, 0.458824, 1.0 ],
					"numoutlets" : 4,
					"vscroll" : 0,
					"fontname" : "Verdana",
					"outlettype" : [ "list", "", "", "" ],
					"selmode" : 0,
					"cols" : 6,
					"rows" : 1,
					"just" : 1,
					"fontsize" : 10.0,
					"hscroll" : 0,
					"colwidth" : 50,
					"patching_rect" : [ 43.0, 608.0, 301.0, 20.0 ],
					"numinlets" : 2,
					"hcellcolor" : [ 0.768627, 0.768627, 0.768627, 1.0 ],
					"id" : "obj-69",
					"bgcolor" : [ 0.992218, 0.992218, 0.992218, 1.0 ],
					"rowheight" : 19
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Selected Points",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 485.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-1",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 314.0, 69.0, 306.0, 332.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 314.0, 69.0, 306.0, 332.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "9",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 249.0, 294.0, 18.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "8",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 223.0, 294.0, 18.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "7",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 197.0, 294.0, 18.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "6",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 171.0, 294.0, 18.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "5",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 145.0, 294.0, 18.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 119.0, 294.0, 18.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 294.0, 18.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 67.0, 294.0, 18.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 41.0, 294.0, 18.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 249.0, 272.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 223.0, 272.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 197.0, 272.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 171.0, 272.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 145.0, 272.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 119.0, 272.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 93.0, 272.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 67.0, 272.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 41.0, 272.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "spray 10",
									"numoutlets" : 10,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 247.0, 253.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route selected",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 220.0, 92.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 175.0, 42.0, 58.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "xyz 1 -0.5 0.2, xyz 2 0.3 -0.4, xyz 3 -0.1 0.5, xyz 4 0.5 0.2, xyz 5 -0.3 -0.5",
									"linecount" : 3,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 175.0, 63.0, 145.0, 41.0 ],
									"numinlets" : 2,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 250 250 250",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 196.0, 171.0, 133.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ambimonitor",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"numbers" : 1,
									"presentation_rect" : [ 0.0, 0.0, 100.0, 100.0 ],
									"patching_rect" : [ 13.0, 43.0, 150.0, 150.0 ],
									"numinlets" : 1,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "select points using the mouse or the keyboard...",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 13.0, 16.0, 255.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-25"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-19", 9 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 8 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 7 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 6 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 5 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 4 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 3 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 153.5, 208.0, 24.5, 208.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [ 184.5, 107.0, 168.0, 107.0, 168.0, 38.0, 22.5, 38.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Mouse Position",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 462.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-2",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 69.0, 258.0, 412.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 69.0, 258.0, 412.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "horizontal position",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 56.0, 368.0, 104.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "vertical position",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 86.0, 345.0, 91.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 75.0, 320.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 45.0, 343.0, 42.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 14.0, 366.0, 43.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack i i i",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "int", "int" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 14.0, 296.0, 80.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route mouse",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 14.0, 273.0, 82.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 250 250 250",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 398.0, 134.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "mouse button",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 96.0, 322.0, 81.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The mouse state is sent out the right outlet",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 13.0, 18.0, 231.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ambimonitor",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"presentation_rect" : [ 0.0, 0.0, 100.0, 100.0 ],
									"patching_rect" : [ 14.0, 43.0, 200.0, 200.0 ],
									"numinlets" : 1,
									"id" : "obj-11"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 257.5, 23.5, 257.5 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Snapshot Menu",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 433.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-3",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 11.0, 71.0, 529.0, 462.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 11.0, 71.0, 529.0, 462.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "store:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, 52.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 19.0, -37.0, 56.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "xyz 1 -0.3 -0.2, xyz 2 0.5 -0.1, xyz 3 -0.1 0.1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 19.0, -16.0, 243.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "yetAnotherSnapshot",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 260.0, 125.0, 126.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store yetAnotherSnapshot",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 286.0, 73.0, 160.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "store snapshots and watch the pop-up menu below",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 19.0, 16.0, 269.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "remove_all",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 436.0, 128.0, 75.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route snapshotmenu",
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 209.0, 385.0, 123.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "" ],
									"items" : [  ],
									"fontsize" : 10.0,
									"types" : [  ],
									"patching_rect" : [ 209.0, 408.0, 155.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 250 250 250",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 362.0, 439.0, 134.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "recall:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 69.0, 105.0, 50.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "aSnapshot",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 69.0, 125.0, 66.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store anotherSnapshot",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 132.0, 73.0, 138.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "anotherSnapshot",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 144.0, 125.0, 104.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store aSnapshot",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 19.0, 73.0, 100.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ambimonitor",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"numbers" : 1,
									"presentation_rect" : [ 0.0, 0.0, 100.0, 100.0 ],
									"patching_rect" : [ 19.0, 172.0, 209.0, 209.0 ],
									"numinlets" : 1,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "use a pop-up menu to recall snapshots",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 66.0, 410.0, 124.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 182.0, 410.0, 19.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-15"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 0 ],
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
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 148.0, 28.5, 148.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 295.5, 95.0, 28.5, 95.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 445.5, 148.0, 28.5, 148.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 432.0, 370.0, 432.0, 370.0, 162.0, 28.5, 162.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 132.0, 28.5, 132.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 141.5, 95.0, 28.5, 95.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 78.5, 148.0, 28.5, 148.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 153.5, 148.0, 28.5, 148.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Zoom",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 360.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-4",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 9.0, 68.0, 388.0, 699.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 9.0, 68.0, 388.0, 699.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "zoom in\nzoom out\nreset",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 260.0, 384.0, 63.0, 43.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+\n- \n=",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 231.0, 384.0, 23.0, 43.0 ],
									"numinlets" : 1,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "keyboard commands:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 231.0, 359.0, 137.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "reset zoom factor",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 99.0, 159.0, 100.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "zoom 1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 159.0, 50.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 150.0, 62.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "reset zoom factor and focal point",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 99.0, 181.0, 178.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "zoom",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 182.0, 41.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 85.0, -25.0, 74.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "focal point",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 63.0, 41.0, 64.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 107.0, 62.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 63.0, 62.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-9",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0. 0. 0. 0.",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, 89.0, 149.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 20.0, 17.0, 40.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "zoom $1 $2 $3 $4",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, 115.0, 106.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "xyz 1 0.1 0.1, xyz 2 -0.15 -0.2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, -4.0, 205.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 250 250 250",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 233.0, 38.0, 134.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, -25.0, 59.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "zoom <factor> <focal point x (opt.)>\n<focal point y (opt.)> <focal point z (opt.)>",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 38.0, 237.0, 236.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "zoom factor",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 63.0, 18.0, 80.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ambimonitor",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"mode" : 2,
									"presentation_rect" : [ 0.0, 0.0, 100.0, 200.0 ],
									"patching_rect" : [ 20.0, 279.0, 202.5, 405.0 ],
									"numinlets" : 1,
									"id" : "obj-18",
									"grid" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-10", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 199.0, 29.5, 199.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 176.5, 29.5, 176.5 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 571.0, 646.0, 19.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 193.0, 166.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 193.0, 166.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 50.0, 84.0, 62.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 50.0, 60.0, 88.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 32.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"id" : "obj-3",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "front view",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 252.0, 533.0, 63.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mouse and keyboard can be used to create, select, drag and erase points.",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 269.0, 257.0, 154.0, 43.0 ],
					"numinlets" : 1,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Miscellaneous",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 383.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-12",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 698.0, 162.0, 282.0, 450.0 ],
						"bgcolor" : [ 0.980392, 0.980392, 0.980392, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 698.0, 162.0, 282.0, 450.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "version",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 325.0, 47.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "post version to Max window",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 303.0, 151.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_ambimonitor",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, 383.0, 99.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "offset to output indices:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 137.0, 131.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 180.0, 55.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 40.0, 158.0, 37.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "output all points:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 230.0, 97.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dump",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 250.0, 39.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rename 1 1, rename 2 2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 70.0, 134.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rename 1 saxophone, rename 2 cello",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 43.0, 198.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rename points:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 18.0, 87.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 250 250 250",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 415.0, 115.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-12"
								}

							}
 ],
						"lines" : [ 							{
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
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 198.0, 29.5, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 268.0, 29.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 88.0, 29.5, 88.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 60.0, 29.5, 60.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 343.0, 29.5, 343.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- left outlet (aed <index> <a> <e> <d> <status/group>)",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 32.0, 589.0, 308.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- middle outlet: xyz <index> <x> <y> <z> <status/group>",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 32.0, 633.0, 319.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Snapshots",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 411.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-23",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 20.0, 68.0, 738.0, 703.0 ],
						"bgcolor" : [ 0.98, 0.98, 0.98, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 20.0, 68.0, 738.0, 703.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "xfade <snapshot 1> <snapshot 2> <xfade factor> <mode (optional)>",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 64.747437, 550.505127, 369.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 66.034134, 491.975952, 43.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-2",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "xfade 1 2 $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 66.034134, 516.587646, 74.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 370.979523, 491.975952, 43.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "xfade theme coda $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 370.979523, 516.587646, 117.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 220.436859, 491.975952, 43.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-6",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "xfade 1 2 $1 1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 220.436859, 516.587646, 84.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "manual interpolation:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.013653, 467.103088, 133.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "recall snapshot and specify\nmode as 3rd element",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 290.778168, 269.512024, 150.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "recall snapshot and specify\ntime as 2nd element",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 290.778168, 177.195877, 150.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 0.98 0.98 0.98",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 462.334473, 651.388306, 126.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "associate time and mode with a specific snapshot",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 57.027306, 382.962189, 260.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set_interpolation ouverture 5000 1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 82.761093, 408.182129, 187.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "recall:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 352.686005, 90.357391, 42.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store coda",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 222.730377, 114.577316, 63.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store theme",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 138.808868, 114.577316, 71.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store ouverture",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 37.726963, 114.577316, 88.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "coda",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 481.208191, 114.577316, 34.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "theme",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 427.027313, 114.577316, 42.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ouverture",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 352.686005, 114.577316, 60.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "time or mode as list override time and\nmode associated with a snapshot",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 453.621155, 429.402069, 208.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...or...",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 203.7099, 287.079041, 43.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 5000 1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 380.846405, 308.298981, 56.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 1000 0",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 293.351532, 308.298981, 56.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "interpolation_mode $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 82.761093, 330.78006, 124.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "", "" ],
									"items" : [ "linear", ",", "polar" ],
									"fontsize" : 10.0,
									"types" : [  ],
									"patching_rect" : [ 82.761093, 306.037811, 62.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set mode globally",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 57.027306, 287.079041, 99.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "interval $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 493.648468, 240.463928, 65.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 493.648468, 214.852234, 40.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-30",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...or...",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 203.7099, 194.762894, 43.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 5000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 380.846405, 215.982819, 46.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 1000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 293.351532, 215.982819, 46.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "interpolation between snapshots:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 39.013653, 168.759445, 201.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "interpolation_time $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 82.761093, 240.463928, 119.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 82.761093, 214.852234, 40.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-36",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "read snapshots from a file",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 112.35495, 618.470764, 142.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "read",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 66.034134, 618.209595, 33.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "write",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 66.034134, 592.206177, 36.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "write all stored snapshots to a xml-formatted file",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 112.35495, 590.206177, 257.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "remove:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 489.648468, 15.0, 58.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 4",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 194.703079, 40.219933, 46.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "remove 2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 560.416382, 40.219933, 58.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "recall:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 352.686005, 15.0, 47.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 421.447113, 40.219933, 20.5, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 398.860077, 40.219933, 20.5, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 376.273041, 40.219933, 20.5, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 352.686005, 40.219933, 20.5, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 3",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 136.802048, 40.219933, 46.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 2",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 78.901024, 40.219933, 46.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "remove_all",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 631.184326, 40.219933, 66.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "remove 1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 489.648468, 40.219933, 58.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 10.0,
									"patching_rect" : [ 21.0, 40.219933, 46.0, 17.0 ],
									"numinlets" : 2,
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "store:",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 21.0, 15.0, 44.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s to_ambimonitor",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 21.0, 654.388306, 99.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set time globally",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 57.027306, 194.762894, 94.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "output interval in miliseconds\n(default 20ms)",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 493.648468, 177.195877, 163.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-57"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "time or mode associated with a snapshot\noverride global time and mode",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 453.621155, 396.615112, 221.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "snapshots may also be stored at \"symbol\" indices:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 37.726963, 90.357391, 265.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "N.B.",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 453.621155, 376.395203, 32.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-60"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"border" : 1,
									"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
									"patching_rect" : [ 444.040955, 366.089355, 245.642853, 110.0 ],
									"numinlets" : 1,
									"id" : "obj-61",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 490.708191, 138.841919, 30.5, 138.841919 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 436.527313, 138.841919, 30.5, 138.841919 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 362.186005, 138.841919, 30.5, 138.841919 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 232.230377, 138.841919, 30.5, 138.841919 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 148.308868, 138.841919, 30.5, 138.841919 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 47.226963, 138.841919, 30.5, 138.841919 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 390.346405, 354.391754, 30.5, 354.391754 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.851532, 354.391754, 30.5, 354.391754 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 92.261093, 354.391754, 30.5, 354.391754 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 503.148468, 263.206177, 30.5, 263.206177 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 75.534134, 640.821289, 30.5, 640.821289 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 75.534134, 612.556702, 30.5, 612.556702 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 640.684326, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 569.916382, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 499.148468, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 430.947113, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 408.360077, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 385.773041, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 362.186005, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.203079, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 146.302048, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 88.401024, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 63.092781, 30.5, 63.092781 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 92.261093, 263.206177, 30.5, 263.206177 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.851532, 263.206177, 30.5, 263.206177 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 390.346405, 263.206177, 30.5, 263.206177 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 92.261093, 431.663239, 30.5, 431.663239 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 75.534134, 540.199341, 30.5, 540.199341 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 229.936859, 540.199341, 30.5, 540.199341 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 380.479523, 540.199341, 30.5, 540.199341 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set aed 6 180 0 0.3",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 332.0, 191.0, 113.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Coordinate System",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 536.0, 156.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-25",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 68.0, 511.0, 629.0 ],
						"bgcolor" : [ 0.98, 0.98, 0.98, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 68.0, 511.0, 629.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "front view (x/z)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 329.0, 411.0, 97.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "down",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 358.0, 593.0, 38.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "left",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 278.0, 515.0, 31.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "right",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 450.0, 515.0, 46.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "up",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 366.0, 434.0, 22.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+x",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 422.0, 515.0, 26.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-x",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 311.0, 515.0, 25.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-z",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 365.0, 572.0, 21.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+z",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 365.0, 455.0, 25.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 308.0, 453.0, 140.0, 140.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"bgcolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
									"rounded" : 140
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "top view (x/y)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 329.0, 197.0, 89.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rear",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 367.0, 377.0, 39.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "left",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 278.0, 301.0, 31.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "right",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 450.0, 301.0, 46.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "front",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 361.0, 219.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+x",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 423.0, 301.0, 26.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-x",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 312.0, 301.0, 25.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-y",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 365.0, 357.0, 22.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+y",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 365.0, 242.0, 26.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 308.0, 239.0, 140.0, 140.0 ],
									"numinlets" : 1,
									"id" : "obj-22",
									"bgcolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
									"rounded" : 140
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "front view (elevation)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 59.0, 411.0, 130.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "down",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 101.0, 593.0, 38.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "left",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 22.0, 515.0, 31.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "right",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 194.0, 515.0, 46.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "up",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 109.0, 434.0, 22.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0°",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 171.0, 515.0, 25.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0°",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 55.0, 515.0, 25.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-90°",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 102.0, 572.0, 35.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+90°",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 102.0, 455.0, 39.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 453.0, 140.0, 140.0 ],
									"numinlets" : 1,
									"id" : "obj-32",
									"bgcolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
									"rounded" : 140
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "top view (azimuth)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 65.0, 197.0, 116.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 0.98 0.98 0.98",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"hidden" : 1,
									"fontsize" : 10.0,
									"patching_rect" : [ 324.0, 154.0, 126.0, 19.0 ],
									"numinlets" : 4,
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "from -1. to +1.",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 299.0, 119.0, 106.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "from -1. to +1.",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 299.0, 99.0, 106.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-36"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "from -1. to +1.",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 299.0, 79.0, 106.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in units (from 0. to 1.0)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 89.0, 139.0, 157.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in degrees, 0° horizontal,\nangle increases upwards",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 89.0, 109.0, 142.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in degrees, 0° due front,\nangle increases clockwise",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 89.0, 79.0, 139.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Distance:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, 139.0, 66.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Elevation:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, 109.0, 70.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-42"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Azimuth:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, 79.0, 65.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-43"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 276.0, 119.0, 22.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 276.0, 99.0, 24.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Polar Coordinates (AED)",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 55.0, 164.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rear",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 111.0, 377.0, 39.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "left",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 22.0, 301.0, 31.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "right",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 194.0, 301.0, 46.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "front",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"patching_rect" : [ 107.0, 219.0, 37.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+90°",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 155.0, 301.0, 39.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-90°",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 51.0, 300.0, 35.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+/-180°",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 98.0, 358.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0°",
									"textcolor" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"frgb" : [ 0.991806, 0.800519, 0.416831, 1.0 ],
									"fontsize" : 11.0,
									"patching_rect" : [ 114.0, 241.0, 23.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 52.0, 239.0, 140.0, 140.0 ],
									"numinlets" : 1,
									"id" : "obj-55",
									"bgcolor" : [ 0.517647, 0.517647, 0.517647, 1.0 ],
									"rounded" : 140
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x:",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 276.0, 79.0, 24.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Cartesian Coordinates (XYZ)",
									"numoutlets" : 0,
									"fontname" : "Verdana Bold",
									"fontsize" : 10.0,
									"patching_rect" : [ 271.0, 55.0, 188.0, 19.0 ],
									"numinlets" : 1,
									"id" : "obj-57"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unlike mathematics and theoretical literature on ambisonics,\na navigational coordinate system is used here:",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 15.0, 15.0, 320.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "angles can take any positive or negative\nvalue",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patching_rect" : [ 20.0, 162.0, 217.0, 31.0 ],
									"numinlets" : 1,
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[1]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 16.0, 197.0, 218.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-60",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"border" : 1,
									"background" : 1,
									"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
									"patching_rect" : [ 15.0, 196.0, 220.0, 208.0 ],
									"numinlets" : 1,
									"id" : "obj-61",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[2]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 16.0, 411.0, 218.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-62",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"border" : 1,
									"background" : 1,
									"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
									"patching_rect" : [ 15.0, 410.0, 220.0, 208.0 ],
									"numinlets" : 1,
									"id" : "obj-63",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[3]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 272.0, 197.0, 218.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-64",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"border" : 1,
									"background" : 1,
									"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
									"patching_rect" : [ 271.0, 196.0, 220.0, 208.0 ],
									"numinlets" : 1,
									"id" : "obj-65",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "arg.2.bg[4]",
									"numoutlets" : 0,
									"background" : 1,
									"patching_rect" : [ 272.0, 411.0, 218.0, 20.0 ],
									"numinlets" : 1,
									"id" : "obj-66",
									"bgcolor" : [ 0.941176, 0.941176, 0.941176, 1.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"border" : 1,
									"background" : 1,
									"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
									"patching_rect" : [ 271.0, 410.0, 220.0, 208.0 ],
									"numinlets" : 1,
									"id" : "obj-67",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "more features:",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontface" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 498.0, 288.0, 98.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r to_ambimonitor",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 44.0, 230.0, 101.0, 19.0 ],
					"numinlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"patching_rect" : [ 490.0, 282.0, 180.0, 290.0 ],
					"numinlets" : 1,
					"id" : "obj-30",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "aed (polar)",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 171.0, 115.0, 67.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "xyz (cartesian)",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 32.0, 115.0, 86.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "position data input:",
					"numoutlets" : 0,
					"fontname" : "Verdana Bold",
					"fontsize" : 10.0,
					"patching_rect" : [ 32.0, 97.0, 123.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set some more points",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 319.0, 115.0, 120.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "selected points",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 501.0, 115.0, 86.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "delete 1 4",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 564.0, 140.0, 63.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "delete 3",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 502.0, 140.0, 53.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 32.0, 140.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-38",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 120.0, 140.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-39",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 32.0, 166.0, 107.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 76.0, 140.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-41",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 176.0, 140.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-42",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 176.0, 166.0, 107.0, 19.0 ],
					"numinlets" : 3,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 220.0, 140.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-44",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "aed 2 $1 $2 $3",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 176.0, 191.0, 90.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 3 0.1 -0.6 0, xyz 4 -0.3 0 0, xyz 5 0 0.4 0",
					"linecount" : 3,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 320.0, 140.0, 107.0, 41.0 ],
					"numinlets" : 2,
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 644.0, 140.0, 36.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyz 1 $1 $2 $3",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 32.0, 191.0, 89.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "all points",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 645.0, 115.0, 56.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-49"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"patching_rect" : [ 264.0, 140.0, 43.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-50",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "window size 2 46 802 736, window exec",
					"linecount" : 3,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"patching_rect" : [ 781.0, 83.0, 106.0, 42.0 ],
					"numinlets" : 2,
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"fontname" : "Arial",
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"fontsize" : 11.0,
					"patching_rect" : [ 781.0, 132.0, 65.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-52",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 250 250 250",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"hidden" : 1,
					"fontsize" : 11.0,
					"background" : 1,
					"patching_rect" : [ 781.0, 49.0, 112.0, 19.0 ],
					"numinlets" : 4,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "GUI object for ambisonic sound spatialisation",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"background" : 1,
					"patching_rect" : [ 32.0, 51.0, 450.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"patching_rect" : [ 490.0, 596.0, 180.0, 60.0 ],
					"numinlets" : 1,
					"id" : "obj-82",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ambimonitor",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 20.0,
					"background" : 1,
					"patching_rect" : [ 32.0, 25.0, 154.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Zurich University of the Arts",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 9.0,
					"background" : 1,
					"patching_rect" : [ 631.0, 46.0, 138.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Copyright © 2006 - 2009 by Philippe Kocher",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 9.0,
					"background" : 1,
					"patching_rect" : [ 558.0, 20.0, 213.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ICST Institute for Computer Music and Sound Technology",
					"textcolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"frgb" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontsize" : 9.0,
					"background" : 1,
					"patching_rect" : [ 499.0, 33.0, 270.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ambimonitor",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"numbers" : 1,
					"mode" : 1,
					"presentation_rect" : [ 0.0, 0.0, 100.0, 155.0 ],
					"patching_rect" : [ 32.0, 255.0, 200.0, 305.0 ],
					"numinlets" : 1,
					"id" : "obj-62",
					"grid" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<",
					"numoutlets" : 0,
					"fontname" : "Verdana Bold",
					"fontsize" : 10.0,
					"patching_rect" : [ 250.0, 257.0, 21.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "top view",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patching_rect" : [ 252.0, 349.0, 55.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-64"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"border" : 1,
					"background" : 1,
					"bordercolor" : [ 0.74902, 0.74902, 0.74902, 1.0 ],
					"patching_rect" : [ 12.0, 12.0, 776.0, 72.0 ],
					"numinlets" : 1,
					"id" : "obj-61",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-43", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 511.5, 217.0, 41.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 653.5, 217.0, 41.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 225.0, 41.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 329.5, 217.0, 41.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 185.5, 217.0, 41.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 217.0, 41.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 341.5, 217.0, 41.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [ 705.5, 75.0, 790.5, 75.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
