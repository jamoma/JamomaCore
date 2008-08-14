{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 57.0, 213.0, 883.0, 426.0 ],
		"bglocked" : 0,
		"defrect" : [ 57.0, 213.0, 883.0, 426.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p openReference",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-9",
					"fontsize" : 10.0,
					"patching_rect" : [ 375.0, 45.0, 95.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 75.0, 119.0, 262.0, 204.0 ],
						"bglocked" : 0,
						"defrect" : [ 75.0, 119.0, 262.0, 204.0 ],
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
									"text" : "zl nth 2",
									"numinlets" : 2,
									"id" : "obj-21",
									"fontsize" : 10.0,
									"patching_rect" : [ 55.0, 70.0, 48.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf load %s.maxref.xml",
									"numinlets" : 1,
									"id" : "obj-20",
									"fontsize" : 10.0,
									"patching_rect" : [ 55.0, 95.0, 147.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"id" : "obj-19",
									"fontsize" : 10.0,
									"patching_rect" : [ 55.0, 120.0, 51.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-24",
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-21", 0 ],
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
					"maxclass" : "message",
					"text" : "open jcom.dataspace reference",
					"numinlets" : 2,
					"fontface" : 2,
					"id" : "obj-33",
					"fontsize" : 12.0,
					"patching_rect" : [ 375.0, 20.0, 200.0, 19.0 ],
					"numoutlets" : 1,
					"gradient" : 0,
					"bgcolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"bgcolor2" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"frozen_box_attributes" : [ "gradient" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p midi2linear-example",
					"numinlets" : 0,
					"id" : "obj-8",
					"fontsize" : 10.0,
					"patching_rect" : [ 373.0, 395.0, 123.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 758.0, 113.0, 379.0, 551.0 ],
						"bglocked" : 0,
						"defrect" : [ 758.0, 113.0, 379.0, 551.0 ],
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
									"text" : "Rather than the default Max/MSP convention that a midi value of 128 is like multiplying by 1.0, in the jcom.dataspace, a midivalue of 100 is like multiplying with 1.0",
									"linecount" : 4,
									"numinlets" : 1,
									"id" : "obj-4",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 82.0, 105.0, 240.0, 55.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100.",
									"numinlets" : 2,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 41.0, 127.0, 33.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "linear gain value",
									"numinlets" : 1,
									"id" : "obj-10",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 119.0, 282.0, 110.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-19",
									"fontsize" : 10.0,
									"patching_rect" : [ 41.0, 282.0, 75.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.midi2a",
									"numinlets" : 1,
									"id" : "obj-21",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 17.334082,
									"patching_rect" : [ 10.0, 10.0, 145.0, 28.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "converting midi gain-values into linear gain-values",
									"numinlets" : 1,
									"id" : "obj-22",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 9.0, 35.0, 268.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"id" : "obj-23",
									"patching_rect" : [ 5.0, 5.0, 358.0, 49.0 ],
									"numoutlets" : 0,
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace gain @input midi @output linear",
									"numinlets" : 1,
									"id" : "obj-25",
									"fontsize" : 10.0,
									"patching_rect" : [ 41.0, 235.0, 320.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-27",
									"fontsize" : 10.0,
									"patching_rect" : [ 41.0, 192.0, 50.0, 19.0 ],
									"numoutlets" : 2,
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "midi-value",
									"numinlets" : 1,
									"id" : "obj-29",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 93.0, 192.0, 70.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
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
					"text" : "p colorspace-example",
					"numinlets" : 0,
					"id" : "obj-42",
					"fontsize" : 10.0,
					"patching_rect" : [ 250.0, 395.0, 120.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 489.0, 166.0, 407.0, 441.0 ],
						"bglocked" : 0,
						"defrect" : [ 489.0, 166.0, 407.0, 441.0 ],
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
									"text" : "pack 0. 0. 0.",
									"numinlets" : 3,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 315.0, 99.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0.",
									"numinlets" : 1,
									"id" : "obj-3",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 365.0, 99.0, 19.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace color @input hsl @output rgb",
									"numinlets" : 1,
									"id" : "obj-4",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 340.0, 306.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"id" : "obj-5",
									"fontsize" : 10.0,
									"patching_rect" : [ 105.0, 390.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"id" : "obj-6",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 390.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"id" : "obj-7",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 390.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "97",
									"numinlets" : 2,
									"id" : "obj-52",
									"fontsize" : 10.0,
									"patching_rect" : [ 105.0, 105.0, 34.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "20",
									"numinlets" : 2,
									"id" : "obj-51",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 105.0, 34.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-50",
									"patching_rect" : [ 65.0, 75.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"id" : "obj-46",
									"fontsize" : 10.0,
									"patching_rect" : [ 105.0, 150.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"id" : "obj-47",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 150.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"id" : "obj-48",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 150.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0. 0.",
									"numinlets" : 3,
									"id" : "obj-45",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 178.0, 99.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0.",
									"numinlets" : 1,
									"id" : "obj-44",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 238.0, 99.0, 19.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend output",
									"numinlets" : 1,
									"id" : "obj-38",
									"fontsize" : 10.0,
									"patching_rect" : [ 280.0, 178.0, 89.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend input",
									"numinlets" : 1,
									"id" : "obj-39",
									"fontsize" : 10.0,
									"patching_rect" : [ 175.0, 178.0, 82.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"id" : "obj-41",
									"fontsize" : 10.0,
									"types" : [  ],
									"patching_rect" : [ 280.0, 150.0, 100.0, 19.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"labelclick" : 1,
									"fontname" : "Verdana",
									"items" : [ "cmy", ",", "hsl", ",", "rgb", ",", "hsv" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"id" : "obj-42",
									"fontsize" : 10.0,
									"types" : [  ],
									"patching_rect" : [ 175.0, 150.0, 100.0, 19.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"labelclick" : 1,
									"fontname" : "Verdana",
									"items" : [ "cmy", ",", "hsl", ",", "rgb", ",", "hsv" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace color @input rgb @output hsl",
									"numinlets" : 1,
									"id" : "obj-37",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 213.0, 306.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"varname" : "autohelp_top_ref",
									"numinlets" : 1,
									"id" : "obj-40",
									"fontsize" : 10.0,
									"textovercolor" : [ 0.4, 0.5, 0.65, 1.0 ],
									"patching_rect" : [ 285.0, 75.0, 72.398438, 21.0 ],
									"numoutlets" : 3,
									"underline" : 1,
									"text" : "Credits",
									"textcolor" : [ 0.374, 0.47, 0.614, 1.0 ],
									"outlettype" : [ "", "", "int" ],
									"fontname" : "Verdana",
									"spacing_x" : 0.0,
									"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"presentation_rect" : [ 30.0, 30.0, 50.398438, 16.0 ],
									"spacing_y" : 0.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.colorspace",
									"numinlets" : 1,
									"id" : "obj-10",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 17.334082,
									"patching_rect" : [ 10.0, 10.0, 229.0, 28.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "colorspace conversion",
									"numinlets" : 1,
									"id" : "obj-11",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 35.0, 345.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"id" : "obj-12",
									"patching_rect" : [ 5.0, 5.0, 400.0, 50.0 ],
									"numoutlets" : 0,
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p credits",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-18",
									"fontsize" : 10.0,
									"patching_rect" : [ 285.0, 100.0, 74.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 257.0, 136.0, 397.0, 227.0 ],
										"bglocked" : 0,
										"defrect" : [ 257.0, 136.0, 397.0, 227.0 ],
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
													"text" : "t front",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-8",
													"fontsize" : 10.0,
													"patching_rect" : [ 444.0, 82.0, 42.0, 19.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "front" ],
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "thispatcher",
													"hidden" : 1,
													"numinlets" : 1,
													"id" : "obj-7",
													"fontsize" : 10.0,
													"patching_rect" : [ 444.0, 108.0, 67.0, 19.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"hidden" : 1,
													"numinlets" : 0,
													"id" : "obj-4",
													"patching_rect" : [ 444.0, 51.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "jcom.colorspace is a port to Jamoma of tap.colorspace from TapTools by Tim Place. The conversion routines were taken from Luke Dubois' Percolate Nato external 242.colorspace. His comments below:",
													"linecount" : 3,
													"numinlets" : 1,
													"id" : "obj-1",
													"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 12.0, 18.0, 362.0, 43.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "242.colorspace -- does colorspace conversion on an input image. by r. luke dubois (luke@music.columbia.edu), computer music center, columbia university, 2001.",
													"linecount" : 3,
													"numinlets" : 1,
													"id" : "obj-2",
													"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 12.0, 70.0, 305.0, 43.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Most of the color conversion routines in this software are taken from Rafael Santos' color image processing toolkit. The copyright below cites the original author. Objects and source are provided without warranty of any kind, express or implied. Copyright (C) 1996, Rafael Santos. Developed at the Ejima Lab / Department of Artificial Intelligence, Kyushu Institute of Technology.",
													"linecount" : 6,
													"numinlets" : 1,
													"id" : "obj-3",
													"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
													"fontsize" : 10.0,
													"patching_rect" : [ 12.0, 126.0, 345.0, 79.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
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
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"id" : "obj-24",
									"fontsize" : 10.0,
									"patching_rect" : [ 105.0, 263.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"id" : "obj-25",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 263.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"id" : "obj-26",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 263.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "255",
									"numinlets" : 2,
									"id" : "obj-30",
									"fontsize" : 10.0,
									"patching_rect" : [ 25.0, 105.0, 34.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-45", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-45", 1 ],
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
									"source" : [ "obj-44", 2 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 184.5, 202.0, 34.5, 202.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 289.5, 206.0, 34.5, 206.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 1 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 225.0, 173.0, 184.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 1 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 330.0, 173.0, 289.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-2", 2 ],
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
					"text" : "print",
					"numinlets" : 1,
					"id" : "obj-41",
					"fontsize" : 10.0,
					"patching_rect" : [ 195.0, 260.0, 34.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.dataspace",
					"numinlets" : 1,
					"id" : "obj-38",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 17.334082,
					"patching_rect" : [ 10.0, 10.0, 145.0, 28.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert between various types of units using the dataspace lib",
					"numinlets" : 1,
					"id" : "obj-39",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 10.0, 35.0, 328.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-40",
					"patching_rect" : [ 5.0, 5.0, 580.0, 50.0 ],
					"numoutlets" : 0,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p xyz2aed-example",
					"numinlets" : 0,
					"id" : "obj-36",
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 395.0, 112.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 140.0, 91.0, 377.0, 544.0 ],
						"bglocked" : 0,
						"defrect" : [ 140.0, 91.0, 377.0, 544.0 ],
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
									"maxclass" : "bpatcher",
									"args" : [  ],
									"numinlets" : 1,
									"id" : "obj-10",
									"patching_rect" : [ 44.0, 223.0, 201.0, 216.0 ],
									"numoutlets" : 2,
									"name" : "ambimonitor.maxpat",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend aed 1",
									"numinlets" : 1,
									"id" : "obj-4",
									"fontsize" : 10.0,
									"patching_rect" : [ 44.0, 198.0, 81.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0.",
									"numinlets" : 1,
									"id" : "obj-6",
									"fontsize" : 10.0,
									"patching_rect" : [ 74.0, 151.0, 101.0, 19.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-7",
									"fontsize" : 10.0,
									"patching_rect" : [ 164.0, 176.0, 35.0, 19.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-8",
									"fontsize" : 10.0,
									"patching_rect" : [ 74.0, 176.0, 35.0, 19.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-9",
									"fontsize" : 10.0,
									"patching_rect" : [ 119.0, 176.0, 35.0, 19.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0. 0. 0.",
									"numinlets" : 3,
									"id" : "obj-13",
									"fontsize" : 10.0,
									"patching_rect" : [ 44.0, 92.0, 100.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace position @input xyz @output aed",
									"numinlets" : 1,
									"id" : "obj-14",
									"fontsize" : 10.0,
									"patching_rect" : [ 44.0, 117.0, 324.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-15",
									"fontsize" : 10.0,
									"patching_rect" : [ 134.0, 68.0, 35.0, 19.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-16",
									"fontsize" : 10.0,
									"patching_rect" : [ 44.0, 68.0, 35.0, 19.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-17",
									"fontsize" : 10.0,
									"patching_rect" : [ 89.0, 68.0, 35.0, 19.0 ],
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-1",
									"fontsize" : 10.0,
									"patching_rect" : [ 14.0, 476.0, 25.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "load jcom.SpatDIF.coordinates.maxpat",
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 14.0, 495.0, 205.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-3",
									"fontsize" : 10.0,
									"patching_rect" : [ 14.0, 514.0, 57.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.aed2xyz",
									"numinlets" : 1,
									"id" : "obj-21",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 17.334082,
									"patching_rect" : [ 10.0, 10.0, 145.0, 28.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "convert 3D cartesian coordinates to polar",
									"numinlets" : 1,
									"id" : "obj-22",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 6.0, 35.0, 360.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"id" : "obj-23",
									"patching_rect" : [ 5.0, 5.0, 358.0, 49.0 ],
									"numoutlets" : 0,
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"id" : "obj-30",
									"fontsize" : 10.0,
									"types" : [  ],
									"patching_rect" : [ 14.0, 456.0, 229.0, 19.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"textcolor" : [ 0.164706, 0.121569, 0.913725, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"background" : 1,
									"labelclick" : 1,
									"fontname" : "Verdana",
									"items" : [ "More", "about", "SpatDIF", "coordiate", "systems" ],
									"menumode" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
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
					"text" : "p aed2xyz-example",
					"numinlets" : 0,
					"id" : "obj-37",
					"fontsize" : 10.0,
					"patching_rect" : [ 20.0, 395.0, 112.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 557.0, 65.0, 379.0, 551.0 ],
						"bglocked" : 0,
						"defrect" : [ 557.0, 65.0, 379.0, 551.0 ],
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
									"text" : "t b",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-1",
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 477.0, 25.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "load jcom.SpatDIF.coordinates.maxpat",
									"hidden" : 1,
									"numinlets" : 2,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 496.0, 205.0, 17.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"hidden" : 1,
									"numinlets" : 1,
									"id" : "obj-3",
									"fontsize" : 10.0,
									"patching_rect" : [ 10.0, 515.0, 57.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"numinlets" : 1,
									"id" : "obj-4",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 13.482065,
									"patching_rect" : [ 256.0, 309.0, 20.0, 23.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"numinlets" : 1,
									"id" : "obj-5",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 13.482065,
									"patching_rect" : [ 311.0, 361.0, 20.0, 23.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"numinlets" : 1,
									"id" : "obj-6",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 13.482065,
									"patching_rect" : [ 111.0, 309.0, 20.0, 23.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"numinlets" : 1,
									"id" : "obj-7",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 13.482065,
									"patching_rect" : [ 163.0, 361.0, 20.0, 23.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "z",
									"numinlets" : 1,
									"id" : "obj-8",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 156.0, 242.0, 19.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "y",
									"numinlets" : 1,
									"id" : "obj-9",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 106.0, 242.0, 19.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "x",
									"numinlets" : 1,
									"id" : "obj-10",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 52.0, 242.0, 19.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "distance",
									"numinlets" : 1,
									"id" : "obj-11",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 144.0, 77.0, 55.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "elevation",
									"numinlets" : 1,
									"id" : "obj-12",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 88.0, 77.0, 57.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p visualize",
									"numinlets" : 2,
									"id" : "obj-13",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 285.0, 108.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 295.0, 258.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 295.0, 258.0 ],
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
													"text" : "p stuff",
													"numinlets" : 1,
													"id" : "obj-1",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 122.0, 41.0, 19.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 231.0, 88.0, 302.0, 407.0 ],
														"bglocked" : 0,
														"defrect" : [ 231.0, 88.0, 302.0, 407.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p lcd",
																	"numinlets" : 1,
																	"id" : "obj-1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 46.0, 235.0, 32.0, 19.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 40.0, 44.0, 982.0, 502.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 40.0, 44.0, 982.0, 502.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p angle-conversion",
																					"numinlets" : 1,
																					"id" : "obj-1",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 570.0, 150.0, 104.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana",
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 216.0, 130.0, 208.0, 267.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 216.0, 130.0, 208.0, 267.0 ],
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
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "- 180",
																									"numinlets" : 2,
																									"id" : "obj-1",
																									"fontsize" : 10.0,
																									"patching_rect" : [ 50.0, 119.0, 36.0, 19.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "int" ],
																									"fontname" : "Verdana"
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "* 180.",
																									"numinlets" : 2,
																									"id" : "obj-2",
																									"fontsize" : 10.0,
																									"patching_rect" : [ 50.0, 95.0, 41.0, 19.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "float" ],
																									"fontname" : "Verdana"
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "/ 3.141594",
																									"numinlets" : 2,
																									"id" : "obj-3",
																									"fontsize" : 10.0,
																									"patching_rect" : [ 50.0, 72.0, 65.0, 19.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "float" ],
																									"fontname" : "Verdana"
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "+ 3.141594",
																									"numinlets" : 2,
																									"id" : "obj-4",
																									"fontsize" : 10.0,
																									"patching_rect" : [ 50.0, 50.0, 68.0, 19.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "float" ],
																									"fontname" : "Verdana"
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"numinlets" : 0,
																									"id" : "obj-5",
																									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "float" ],
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"numinlets" : 1,
																									"id" : "obj-6",
																									"patching_rect" : [ 50.0, 141.0, 15.0, 15.0 ],
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-1", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-2", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
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
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "clear",
																					"numinlets" : 2,
																					"id" : "obj-2",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 874.0, 351.0, 33.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t clear",
																					"numinlets" : 1,
																					"id" : "obj-3",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 851.0, 71.0, 40.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "clear" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b",
																					"numinlets" : 1,
																					"id" : "obj-4",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 485.0, 290.0, 22.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "linesegment 70 0 70 140 246, linesegment 0 70 140 70 246, pensize 10 10",
																					"numinlets" : 2,
																					"id" : "obj-5",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 485.0, 316.0, 390.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "pensize 1 1",
																					"numinlets" : 2,
																					"id" : "obj-6",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 190.0, 340.0, 66.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b",
																					"numinlets" : 1,
																					"id" : "obj-7",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 190.0, 204.0, 22.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "pensize 2 2",
																					"numinlets" : 2,
																					"id" : "obj-8",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 190.0, 320.0, 66.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend paintarc",
																					"numinlets" : 1,
																					"id" : "obj-9",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 643.0, 342.0, 94.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "$1 $2 $3 $4 $5 $6 7",
																					"numinlets" : 2,
																					"id" : "obj-10",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 643.0, 292.0, 112.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "$1 $2 70 $2 248, $1 $2 $1 70 248",
																					"numinlets" : 2,
																					"id" : "obj-11",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 260.0, 203.0, 184.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "pensize 1 1",
																					"numinlets" : 2,
																					"id" : "obj-12",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 413.0, 342.0, 66.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 0 0 0 90 360 28",
																					"numinlets" : 7,
																					"id" : "obj-13",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 485.0, 251.0, 126.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend framearc",
																					"numinlets" : 1,
																					"id" : "obj-14",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 550.0, 342.0, 98.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 70",
																					"numinlets" : 2,
																					"id" : "obj-15",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 413.0, 99.0, 30.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 70",
																					"numinlets" : 2,
																					"id" : "obj-16",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 99.0, 29.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cartopol",
																					"numinlets" : 2,
																					"id" : "obj-17",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 121.0, 49.0, 19.0 ],
																					"numoutlets" : 2,
																					"outlettype" : [ "float", "float" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 70",
																					"numinlets" : 2,
																					"id" : "obj-18",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 483.0, 154.0, 33.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 70",
																					"numinlets" : 2,
																					"id" : "obj-19",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 448.0, 154.0, 33.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "!- 70",
																					"numinlets" : 2,
																					"id" : "obj-20",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 413.0, 154.0, 33.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "!- 70",
																					"numinlets" : 2,
																					"id" : "obj-21",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 154.0, 33.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 0 0 0 255",
																					"numinlets" : 5,
																					"id" : "obj-22",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 176.0, 153.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend frameoval",
																					"numinlets" : 1,
																					"id" : "obj-23",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 251.0, 103.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 0 70 70 212",
																					"numinlets" : 5,
																					"id" : "obj-24",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 251.0, 154.0, 107.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend linesegment",
																					"numinlets" : 1,
																					"id" : "obj-25",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 251.0, 251.0, 114.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 3",
																					"numinlets" : 2,
																					"id" : "obj-26",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 138.0, 154.0, 27.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 3",
																					"numinlets" : 2,
																					"id" : "obj-27",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 109.0, 154.0, 27.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 3",
																					"numinlets" : 2,
																					"id" : "obj-28",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 80.0, 154.0, 27.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 3",
																					"numinlets" : 2,
																					"id" : "obj-29",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 51.0, 154.0, 27.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 0 0 0 255",
																					"numinlets" : 5,
																					"id" : "obj-30",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 51.0, 185.0, 127.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend paintoval",
																					"numinlets" : 1,
																					"id" : "obj-31",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 51.0, 251.0, 99.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "unpack",
																					"numinlets" : 1,
																					"id" : "obj-32",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 51.0, 65.0, 45.0, 19.0 ],
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-33",
																					"patching_rect" : [ 51.0, 395.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-34",
																					"patching_rect" : [ 51.0, 31.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-34", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 60.0, 54.0, 860.5, 54.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-13", 5 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 1 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-13", 3 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-13", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-13", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-22", 3 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 387.5, 146.0, 492.5, 146.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-22", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-19", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 387.5, 146.0, 457.5, 146.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 494.5, 311.0, 422.5, 311.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-22", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 387.5, 146.0, 422.5, 146.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-17", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 1 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-22", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-22", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-21", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-17", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 1 ],
																					"destination" : [ "obj-24", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 260.5, 185.0, 269.5, 185.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 269.5, 236.0, 260.5, 236.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-24", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 260.5, 177.0, 199.5, 177.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-26", 0 ],
																					"destination" : [ "obj-30", 3 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 1 ],
																					"destination" : [ "obj-26", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-27", 0 ],
																					"destination" : [ "obj-30", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-27", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-30", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 1 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-31", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-25", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 260.5, 371.0, 60.0, 371.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 387.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 559.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 422.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 652.5, 371.0, 60.0, 371.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 199.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 199.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 494.5, 371.0, 60.0, 371.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 860.5, 386.0, 60.0, 386.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 883.5, 386.0, 60.0, 386.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-31", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-29", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-29", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-34", 0 ],
																					"destination" : [ "obj-32", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
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
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-2",
																	"patching_rect" : [ 46.0, 50.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-3",
																	"patching_rect" : [ 219.0, 308.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-4",
																	"patching_rect" : [ 172.0, 308.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0 0",
																	"numinlets" : 2,
																	"id" : "obj-5",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 219.0, 81.0, 25.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "70 70",
																	"numinlets" : 2,
																	"id" : "obj-6",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 129.0, 81.0, 37.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"numinlets" : 1,
																	"id" : "obj-7",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 129.0, 50.0, 54.0, 19.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "local 0",
																	"numinlets" : 2,
																	"id" : "obj-8",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 172.0, 81.0, 41.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 138.5, 73.0, 228.5, 73.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 138.5, 73.0, 181.5, 73.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-6", 0 ],
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
																	"source" : [ "obj-6", 0 ],
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
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0",
													"numinlets" : 2,
													"id" : "obj-2",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 94.0, 120.0, 19.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale -1. 1. 140 0",
													"numinlets" : 6,
													"id" : "obj-3",
													"fontsize" : 10.0,
													"patching_rect" : [ 160.0, 66.0, 98.0, 19.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale -1. 1. 0 140",
													"numinlets" : 6,
													"id" : "obj-4",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 66.0, 98.0, 19.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 160.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 50.0, 159.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 1 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-6", 0 ],
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
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "lcd",
									"numinlets" : 1,
									"id" : "obj-14",
									"patching_rect" : [ 40.0, 308.0, 140.0, 140.0 ],
									"numoutlets" : 4,
									"local" : 0,
									"outlettype" : [ "list", "list", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p visualize",
									"numinlets" : 2,
									"id" : "obj-15",
									"fontsize" : 10.0,
									"patching_rect" : [ 185.0, 285.0, 108.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 295.0, 258.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 295.0, 258.0 ],
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
													"text" : "p stuff",
													"numinlets" : 1,
													"id" : "obj-1",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 122.0, 41.0, 19.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"fontname" : "Verdana",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 231.0, 88.0, 302.0, 407.0 ],
														"bglocked" : 0,
														"defrect" : [ 231.0, 88.0, 302.0, 407.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p lcd",
																	"numinlets" : 1,
																	"id" : "obj-1",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 46.0, 235.0, 32.0, 19.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana",
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 40.0, 44.0, 982.0, 502.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 40.0, 44.0, 982.0, 502.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p angle-conversion",
																					"numinlets" : 1,
																					"id" : "obj-1",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 570.0, 150.0, 104.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana",
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 216.0, 130.0, 208.0, 267.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 216.0, 130.0, 208.0, 267.0 ],
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
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "- 180",
																									"numinlets" : 2,
																									"id" : "obj-1",
																									"fontsize" : 10.0,
																									"patching_rect" : [ 50.0, 119.0, 36.0, 19.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "int" ],
																									"fontname" : "Verdana"
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "* 180.",
																									"numinlets" : 2,
																									"id" : "obj-2",
																									"fontsize" : 10.0,
																									"patching_rect" : [ 50.0, 95.0, 41.0, 19.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "float" ],
																									"fontname" : "Verdana"
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "/ 3.141594",
																									"numinlets" : 2,
																									"id" : "obj-3",
																									"fontsize" : 10.0,
																									"patching_rect" : [ 50.0, 72.0, 65.0, 19.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "float" ],
																									"fontname" : "Verdana"
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "+ 3.141594",
																									"numinlets" : 2,
																									"id" : "obj-4",
																									"fontsize" : 10.0,
																									"patching_rect" : [ 50.0, 50.0, 68.0, 19.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "float" ],
																									"fontname" : "Verdana"
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"numinlets" : 0,
																									"id" : "obj-5",
																									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																									"numoutlets" : 1,
																									"outlettype" : [ "float" ],
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"numinlets" : 1,
																									"id" : "obj-6",
																									"patching_rect" : [ 50.0, 141.0, 15.0, 15.0 ],
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-1", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-2", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
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
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "clear",
																					"numinlets" : 2,
																					"id" : "obj-2",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 874.0, 351.0, 33.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t clear",
																					"numinlets" : 1,
																					"id" : "obj-3",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 851.0, 71.0, 40.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "clear" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b",
																					"numinlets" : 1,
																					"id" : "obj-4",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 485.0, 290.0, 22.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "linesegment 70 0 70 140 246, linesegment 0 70 140 70 246, pensize 10 10",
																					"numinlets" : 2,
																					"id" : "obj-5",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 485.0, 316.0, 390.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "pensize 1 1",
																					"numinlets" : 2,
																					"id" : "obj-6",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 190.0, 340.0, 66.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b",
																					"numinlets" : 1,
																					"id" : "obj-7",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 190.0, 204.0, 22.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "pensize 2 2",
																					"numinlets" : 2,
																					"id" : "obj-8",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 190.0, 320.0, 66.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend paintarc",
																					"numinlets" : 1,
																					"id" : "obj-9",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 643.0, 342.0, 94.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "$1 $2 $3 $4 $5 $6 7",
																					"numinlets" : 2,
																					"id" : "obj-10",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 643.0, 292.0, 112.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "$1 $2 70 $2 248, $1 $2 $1 70 248",
																					"numinlets" : 2,
																					"id" : "obj-11",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 260.0, 203.0, 184.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "pensize 1 1",
																					"numinlets" : 2,
																					"id" : "obj-12",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 413.0, 342.0, 66.0, 17.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 0 0 0 90 360 28",
																					"numinlets" : 7,
																					"id" : "obj-13",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 485.0, 251.0, 126.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend framearc",
																					"numinlets" : 1,
																					"id" : "obj-14",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 550.0, 342.0, 98.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 70",
																					"numinlets" : 2,
																					"id" : "obj-15",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 413.0, 99.0, 30.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 70",
																					"numinlets" : 2,
																					"id" : "obj-16",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 99.0, 29.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cartopol",
																					"numinlets" : 2,
																					"id" : "obj-17",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 121.0, 49.0, 19.0 ],
																					"numoutlets" : 2,
																					"outlettype" : [ "float", "float" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 70",
																					"numinlets" : 2,
																					"id" : "obj-18",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 483.0, 154.0, 33.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 70",
																					"numinlets" : 2,
																					"id" : "obj-19",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 448.0, 154.0, 33.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "!- 70",
																					"numinlets" : 2,
																					"id" : "obj-20",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 413.0, 154.0, 33.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "!- 70",
																					"numinlets" : 2,
																					"id" : "obj-21",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 154.0, 33.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 0 0 0 255",
																					"numinlets" : 5,
																					"id" : "obj-22",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 176.0, 153.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend frameoval",
																					"numinlets" : 1,
																					"id" : "obj-23",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 378.0, 251.0, 103.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 0 70 70 212",
																					"numinlets" : 5,
																					"id" : "obj-24",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 251.0, 154.0, 107.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend linesegment",
																					"numinlets" : 1,
																					"id" : "obj-25",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 251.0, 251.0, 114.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 3",
																					"numinlets" : 2,
																					"id" : "obj-26",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 138.0, 154.0, 27.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 3",
																					"numinlets" : 2,
																					"id" : "obj-27",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 109.0, 154.0, 27.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 3",
																					"numinlets" : 2,
																					"id" : "obj-28",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 80.0, 154.0, 27.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 3",
																					"numinlets" : 2,
																					"id" : "obj-29",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 51.0, 154.0, 27.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 0 0 0 255",
																					"numinlets" : 5,
																					"id" : "obj-30",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 51.0, 185.0, 127.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "prepend paintoval",
																					"numinlets" : 1,
																					"id" : "obj-31",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 51.0, 251.0, 99.0, 19.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "unpack",
																					"numinlets" : 1,
																					"id" : "obj-32",
																					"fontsize" : 10.0,
																					"patching_rect" : [ 51.0, 65.0, 45.0, 19.0 ],
																					"numoutlets" : 2,
																					"outlettype" : [ "int", "int" ],
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-33",
																					"patching_rect" : [ 51.0, 395.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-34",
																					"patching_rect" : [ 51.0, 31.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-34", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 60.0, 54.0, 860.5, 54.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-13", 5 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 1 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-13", 3 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-13", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-13", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-22", 3 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 387.5, 146.0, 492.5, 146.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-22", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-19", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 387.5, 146.0, 457.5, 146.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 494.5, 311.0, 422.5, 311.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-22", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 387.5, 146.0, 422.5, 146.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-17", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 1 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-22", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-22", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-21", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-17", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 1 ],
																					"destination" : [ "obj-24", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 260.5, 185.0, 269.5, 185.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-25", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 269.5, 236.0, 260.5, 236.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-24", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-24", 0 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 260.5, 177.0, 199.5, 177.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-26", 0 ],
																					"destination" : [ "obj-30", 3 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 1 ],
																					"destination" : [ "obj-26", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-27", 0 ],
																					"destination" : [ "obj-30", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-27", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-28", 0 ],
																					"destination" : [ "obj-30", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 1 ],
																					"destination" : [ "obj-28", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 883.5, 386.0, 60.0, 386.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 860.5, 386.0, 60.0, 386.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 494.5, 371.0, 60.0, 371.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 199.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 199.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 652.5, 371.0, 60.0, 371.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 422.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 559.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 387.5, 372.0, 60.0, 372.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-25", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 260.5, 371.0, 60.0, 371.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-31", 0 ],
																					"destination" : [ "obj-33", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-30", 0 ],
																					"destination" : [ "obj-31", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-29", 0 ],
																					"destination" : [ "obj-30", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-32", 0 ],
																					"destination" : [ "obj-29", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-34", 0 ],
																					"destination" : [ "obj-32", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
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
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-2",
																	"patching_rect" : [ 46.0, 50.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-3",
																	"patching_rect" : [ 219.0, 308.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-4",
																	"patching_rect" : [ 172.0, 308.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0 0",
																	"numinlets" : 2,
																	"id" : "obj-5",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 219.0, 81.0, 25.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "70 70",
																	"numinlets" : 2,
																	"id" : "obj-6",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 129.0, 81.0, 37.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"numinlets" : 1,
																	"id" : "obj-7",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 129.0, 50.0, 54.0, 19.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "local 0",
																	"numinlets" : 2,
																	"id" : "obj-8",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 172.0, 81.0, 41.0, 17.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 138.5, 73.0, 228.5, 73.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 138.5, 73.0, 181.5, 73.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
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
																	"source" : [ "obj-2", 0 ],
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
														"fontsize" : 10.0,
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0",
													"numinlets" : 2,
													"id" : "obj-2",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 94.0, 120.0, 19.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale -1. 1. 140 0",
													"numinlets" : 6,
													"id" : "obj-3",
													"fontsize" : 10.0,
													"patching_rect" : [ 160.0, 66.0, 98.0, 19.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale -1. 1. 0 140",
													"numinlets" : 6,
													"id" : "obj-4",
													"fontsize" : 10.0,
													"patching_rect" : [ 50.0, 66.0, 98.0, 19.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-5",
													"patching_rect" : [ 160.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-6",
													"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 50.0, 159.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 1 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
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
													"source" : [ "obj-6", 0 ],
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
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "lcd",
									"numinlets" : 1,
									"id" : "obj-16",
									"patching_rect" : [ 185.0, 308.0, 140.0, 140.0 ],
									"numoutlets" : 4,
									"local" : 0,
									"outlettype" : [ "list", "list", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0. 0. 0.",
									"numinlets" : 1,
									"id" : "obj-17",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 224.0, 124.0, 19.0 ],
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-18",
									"fontsize" : 10.0,
									"patching_rect" : [ 145.0, 256.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-19",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 256.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-20",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 256.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "jcom.aed2xyz",
									"numinlets" : 1,
									"id" : "obj-21",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 17.334082,
									"patching_rect" : [ 10.0, 10.0, 145.0, 28.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "SpatDIF-compliant convertion from spherical to Cartesian coordinates",
									"numinlets" : 1,
									"id" : "obj-22",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 6.0, 35.0, 360.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"id" : "obj-23",
									"patching_rect" : [ 5.0, 5.0, 358.0, 49.0 ],
									"numoutlets" : 0,
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0. 0. 0.",
									"numinlets" : 3,
									"id" : "obj-24",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 116.0, 124.0, 19.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace position @input aed @output xyz",
									"numinlets" : 1,
									"id" : "obj-25",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 165.0, 324.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-26",
									"fontsize" : 10.0,
									"patching_rect" : [ 145.0, 92.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-27",
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 92.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"id" : "obj-28",
									"fontsize" : 10.0,
									"patching_rect" : [ 92.0, 92.0, 39.0, 19.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"triscale" : 0.9,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "azimut",
									"numinlets" : 1,
									"id" : "obj-29",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 77.0, 46.0, 19.0 ],
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"id" : "obj-30",
									"fontsize" : 10.0,
									"types" : [  ],
									"patching_rect" : [ 10.0, 457.0, 214.0, 19.0 ],
									"numoutlets" : 3,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"textcolor" : [ 0.164706, 0.121569, 0.913725, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"background" : 1,
									"labelclick" : 1,
									"fontname" : "Verdana",
									"items" : [ "More", "about", "SpatDIF", "coordiate", "systems" ],
									"menumode" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [ 154.5, 276.0, 283.5, 276.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 279.0, 194.5, 279.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-24", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [ 101.5, 282.0, 138.5, 282.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
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
					"text" : "pak 0. 0. 0.",
					"numinlets" : 3,
					"id" : "obj-1",
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 150.0, 99.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"id" : "obj-2",
					"fontsize" : 10.0,
					"patching_rect" : [ 160.0, 125.0, 39.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"id" : "obj-3",
					"fontsize" : 10.0,
					"patching_rect" : [ 120.0, 125.0, 39.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"id" : "obj-4",
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 125.0, 39.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "others take a list",
					"numinlets" : 1,
					"id" : "obj-5",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 88.0, 103.0, 106.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "201.681137",
					"numinlets" : 2,
					"id" : "obj-6",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 365.0, 110.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"id" : "obj-7",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 340.0, 68.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getoutput",
					"numinlets" : 2,
					"id" : "obj-10",
					"fontsize" : 10.0,
					"patching_rect" : [ 285.0, 192.0, 59.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-11",
					"fontsize" : 10.0,
					"patching_rect" : [ 286.0, 150.0, 57.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend symbol",
					"numinlets" : 1,
					"id" : "obj-12",
					"fontsize" : 10.0,
					"patching_rect" : [ 383.0, 308.0, 89.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend symbol",
					"numinlets" : 1,
					"id" : "obj-13",
					"fontsize" : 10.0,
					"patching_rect" : [ 288.0, 308.0, 89.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getinput",
					"numinlets" : 2,
					"id" : "obj-14",
					"fontsize" : 10.0,
					"patching_rect" : [ 240.0, 175.0, 52.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"hidden" : 1,
					"numinlets" : 2,
					"id" : "obj-15",
					"fontsize" : 10.0,
					"patching_rect" : [ 508.0, 68.0, 39.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b 1",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-16",
					"fontsize" : 10.0,
					"patching_rect" : [ 288.0, 80.0, 25.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-17",
					"fontsize" : 10.0,
					"patching_rect" : [ 287.0, 101.0, 57.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-18",
					"fontsize" : 10.0,
					"patching_rect" : [ 215.0, 90.0, 57.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"hidden" : 1,
					"numinlets" : 1,
					"id" : "obj-19",
					"fontsize" : 10.0,
					"patching_rect" : [ 200.0, 65.0, 54.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend output",
					"numinlets" : 1,
					"id" : "obj-20",
					"fontsize" : 10.0,
					"patching_rect" : [ 683.0, 180.0, 88.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend input",
					"numinlets" : 1,
					"id" : "obj-21",
					"fontsize" : 10.0,
					"patching_rect" : [ 522.0, 180.0, 81.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"id" : "obj-22",
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 683.0, 152.0, 100.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"fontname" : "Verdana",
					"items" : [ "rad", ",", "degree", ",", "deg", ",", "radian" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "units.get",
					"numinlets" : 2,
					"id" : "obj-23",
					"fontsize" : 10.0,
					"patching_rect" : [ 290.0, 130.0, 53.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route DataspacesMenu UnitMenu input output",
					"numinlets" : 1,
					"id" : "obj-24",
					"fontsize" : 10.0,
					"patching_rect" : [ 172.0, 284.0, 241.0, 19.0 ],
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend dataspace",
					"numinlets" : 1,
					"id" : "obj-25",
					"fontsize" : 10.0,
					"patching_rect" : [ 378.0, 180.0, 104.0, 19.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "define the dataspace to use",
					"numinlets" : 1,
					"id" : "obj-26",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 378.0, 121.0, 148.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "dataspaces.get",
					"numinlets" : 2,
					"id" : "obj-27",
					"fontsize" : 10.0,
					"patching_rect" : [ 200.0, 125.0, 84.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"id" : "obj-28",
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 522.0, 152.0, 100.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"fontname" : "Verdana",
					"items" : [ "rad", ",", "degree", ",", "deg", ",", "radian" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"id" : "obj-29",
					"fontsize" : 10.0,
					"types" : [  ],
					"patching_rect" : [ 380.0, 152.0, 100.0, 19.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"fontname" : "Verdana",
					"items" : [ "angle", ",", "color", ",", "distance", ",", "gain", ",", "none", ",", "pitch", ",", "position", ",", "temperature", ",", "time" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"id" : "obj-30",
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 125.0, 52.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.dataspace",
					"numinlets" : 1,
					"id" : "obj-31",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 260.0, 97.0, 19.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "define what the user is sending",
					"numinlets" : 1,
					"id" : "obj-32",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 527.0, 120.0, 166.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "define what the algorithm is using",
					"numinlets" : 1,
					"id" : "obj-34",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 690.0, 120.0, 180.0, 19.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "some units just take a float or int",
					"linecount" : 3,
					"numinlets" : 1,
					"id" : "obj-35",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 8.0, 78.0, 67.0, 43.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 692.5, 223.0, 104.5, 223.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 733.0, 175.0, 692.5, 175.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 531.5, 219.0, 104.5, 219.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 572.0, 173.0, 531.5, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 349.0, 839.0, 349.0, 839.0, 135.0, 389.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 237.0, 345.0, 834.0, 345.0, 834.0, 137.0, 531.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 3 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 237.0, 341.0, 830.0, 341.0, 830.0, 139.0, 692.5, 139.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 392.5, 334.0, 819.0, 334.0, 819.0, 144.0, 692.5, 144.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 297.5, 337.0, 827.0, 337.0, 827.0, 141.0, 531.5, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 430.0, 173.0, 387.5, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 387.5, 242.0, 104.5, 242.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
