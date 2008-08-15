{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 34.0, 67.0, 765.0, 691.0 ],
		"bglocked" : 0,
		"defrect" : [ 34.0, 67.0, 765.0, 691.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
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
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 300.0, 50.0, 95.0, 19.0 ],
					"id" : "obj-1",
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
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 55.0, 70.0, 48.0, 19.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf load %s.maxref.xml",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 95.0, 147.0, 19.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 120.0, 51.0, 19.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-24",
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
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open jcom.parameter reference",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontface" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 25.0, 202.0, 19.0 ],
					"gradient" : 0,
					"bgcolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"bgcolor2" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"frozen_box_attributes" : [ "gradient" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Input_output_arguments",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 10.970939,
					"patching_rect" : [ 575.0, 10.0, 160.0, 20.0 ],
					"id" : "obj-74",
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 438.0, 114.0, 672.0, 723.0 ],
						"bglocked" : 0,
						"defrect" : [ 438.0, 114.0, 672.0, 723.0 ],
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
									"text" : "- only msg_int, msg_float, and msg_list support ramping",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 219.0, 270.0, 324.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_none (bang)",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 209.0, 99.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_list",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 164.0, 52.0, 19.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_float",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 134.0, 60.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_int",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 119.0, 51.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_symbol",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 179.0, 73.0, 19.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_toggle",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 149.0, 68.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- defines the size of the step used by the 'inc' and 'dec' messages (default is 1)",
									"linecount" : 2,
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 190.0, 504.0, 311.0, 31.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@value/stepsize",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 504.0, 100.0, 19.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "float",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 534.0, 32.0, 19.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- qlim-ed messages with set prepended. Use this for connection back to GUI interface object",
									"linecount" : 2,
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 190.0, 580.0, 343.0, 31.0 ],
									"id" : "obj-41",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- most often, you'll not connect jcom.parameter directly to the rest of the patch, but instead use jcom.hub 2nd outlet. If you for some reason need to connect directly from jcom.parameter, use the 2nd outlet. This outlet is not qlim-ed, and neither has it \"set\" prepended.",
									"linecount" : 4,
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 190.0, 620.0, 355.0, 55.0 ],
									"id" : "obj-42",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Right:",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 620.0, 134.0, 19.0 ],
									"id" : "obj-43",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Left:",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 580.0, 135.0, 19.0 ],
									"id" : "obj-44",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Outlets:",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 13.482065,
									"patching_rect" : [ 20.0, 550.0, 176.0, 23.0 ],
									"id" : "obj-45",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- within each module all parameter names must be unique. Different modules sharing the same parameter names is no problem.",
									"linecount" : 2,
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 185.0, 38.0, 364.0, 31.0 ],
									"id" : "obj-76",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(name of parameter)",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 38.0, 135.0, 19.0 ],
									"id" : "obj-77",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Argument (obligatory):",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 13.482065,
									"patching_rect" : [ 20.0, 8.0, 176.0, 23.0 ],
									"id" : "obj-78",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attributes:",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 13.482065,
									"patching_rect" : [ 20.0, 73.0, 85.0, 23.0 ],
									"id" : "obj-82",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- text describing the parameter for html auto-documenting modules",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 190.0, 459.0, 351.0, 19.0 ],
									"id" : "obj-100",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@description",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 459.0, 100.0, 19.0 ],
									"id" : "obj-101",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(text)",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 479.0, 39.0, 19.0 ],
									"id" : "obj-102",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/clipmode",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 414.0, 100.0, 19.0 ],
									"id" : "obj-105",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none, low, high, both",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 434.0, 124.0, 19.0 ],
									"id" : "obj-106",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- suggested normal range of parameter (two ints or floats). Default: 0.-127.",
									"linecount" : 2,
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 190.0, 359.0, 289.0, 31.0 ],
									"id" : "obj-107",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- permit repetitions of the same value",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 190.0, 304.0, 200.0, 19.0 ],
									"id" : "obj-108",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- what kind of parameter is this?",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 190.0, 99.0, 279.0, 19.0 ],
									"id" : "obj-109",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 (default)",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 334.0, 63.0, 19.0 ],
									"id" : "obj-110",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 319.0, 19.0, 19.0 ],
									"id" : "obj-111",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@repetitions/allow",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 304.0, 115.0, 19.0 ],
									"id" : "obj-112",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range/bounds",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 364.0, 100.0, 19.0 ],
									"id" : "obj-113",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_generic (default)",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 194.0, 134.0, 19.0 ],
									"id" : "obj-115",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@type",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 99.0, 100.0, 19.0 ],
									"id" : "obj-116",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none (default), queue, scheduler, async",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 249.0, 258.0, 19.0 ],
									"id" : "obj-117",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2 ints or floats",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 215.0, 389.0, 82.0, 19.0 ],
									"id" : "obj-118",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- determines if parameter can be ramped or not",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 190.0, 229.0, 278.0, 19.0 ],
									"id" : "obj-119",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp/drive",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 40.0, 229.0, 109.0, 19.0 ],
									"id" : "obj-120",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- define range boundary restrictions. Default: none",
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 190.0, 414.0, 266.0, 19.0 ],
									"id" : "obj-104",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ramp/drive scheduler",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 593.0, 149.0, 118.0, 17.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ramp/drive queue",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.0, 149.0, 101.0, 17.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "addressing_attributes",
					"text" : "p /addressing_attributes",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 575.0, 40.0, 160.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 125.0, 73.0, 805.0, 445.0 ],
						"bglocked" : 0,
						"defrect" : [ 125.0, 73.0, 805.0, 445.0 ],
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
									"text" : "/preset/write",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 535.0, 245.0, 76.0, 17.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 135.0, 410.0, 64.0, 19.0 ],
									"triscale" : 0.9,
									"id" : "obj-2",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type msg_float",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 175.0, 350.0, 84.0, 17.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 45.0, 350.0, 43.0, 19.0 ],
									"triscale" : 0.9,
									"id" : "obj-4",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 95.0, 125.0, 20.0, 20.0 ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 45.0, 125.0, 20.0, 20.0 ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bear:/type msg_int",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 65.0, 113.0, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type msg_int",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 350.0, 75.0, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0,
									"patching_rect" : [ 225.0, 245.0, 32.0, 19.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bear:/range/clipmode none",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.0, 44.0, 153.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bear 91",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 535.0, 95.0, 52.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "joe is a bullfrog",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 680.0, 125.0, 87.0, 17.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "buba 19",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 640.0, 65.0, 50.0, 17.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "buba 19.5",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 660.0, 95.0, 60.0, 17.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.0, 155.0, 43.0, 17.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.0, 125.0, 68.0, 19.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "19",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.0, 300.0, 77.0, 17.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.0, 275.0, 68.0, 19.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 560.0, 305.0, 63.0, 17.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "bear 23",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 125.0, 47.0, 17.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.hub",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 515.0, 275.0, 108.0, 19.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 135.0, 275.0, 54.0, 19.0 ],
									"triscale" : 0.9,
									"id" : "obj-23",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 145.0, 95.0, 35.0, 19.0 ],
									"triscale" : 0.9,
									"id" : "obj-24",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 45.0, 95.0, 35.0, 19.0 ],
									"triscale" : 0.9,
									"id" : "obj-25",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 95.0, 95.0, 35.0, 19.0 ],
									"triscale" : 0.9,
									"id" : "obj-26",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "joe",
									"text" : "jcom.parameter joe @type msg_float",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 45.0, 385.0, 198.0, 19.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 45.0, 190.0, 55.0, 19.0 ],
									"triscale" : 0.9,
									"id" : "obj-28",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "buba[1]",
									"text" : "jcom.parameter buba @type msg_int",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 45.0, 215.0, 199.0, 19.0 ],
									"id" : "obj-29",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 45.0, 30.0, 35.0, 19.0 ],
									"triscale" : 0.9,
									"id" : "obj-30",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "bear[1]",
									"text" : "jcom.parameter bear",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 45.0, 55.0, 119.0, 19.0 ],
									"id" : "obj-31",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 689.5, 222.0, 524.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 669.5, 222.0, 524.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 564.5, 222.0, 524.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 649.5, 222.0, 524.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 544.5, 222.0, 524.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 409.5, 237.0, 524.5, 237.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 144.5, 268.0, 204.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 2 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 104.5, 90.0, 134.5, 90.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 184.5, 376.0, 54.5, 376.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 99.5, 376.0, 54.5, 376.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 75.0, 42.0, 75.0, 42.0, 27.0, 54.5, 27.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 237.0, 42.0, 237.0, 42.0, 186.0, 54.5, 186.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 275.0, 370.0, 46.0, 19.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 395.0, 81.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.ui",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 670.0, 655.0, 55.0, 17.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.hub",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 605.0, 655.0, 60.0, 17.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 515.0, 655.0, 86.0, 17.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 385.0, 695.0, 78.0, 19.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 385.0, 715.0, 55.0, 19.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See also",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 520.0, 635.0, 115.0, 19.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 462.0, 576.0, 17.0, 17.0 ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_int 100 ramp 2000",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.0, 595.0, 130.0, 17.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_int -100 ramp 2000",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.0, 576.0, 134.0, 17.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "trez",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 665.0, 570.0, 46.0, 17.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "doz",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 620.0, 570.0, 39.0, 17.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "uno",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.0, 570.0, 40.0, 17.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /my_menu",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.0, 595.0, 109.0, 19.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_toggle $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 462.0, 596.0, 104.0, 17.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_float 1. ramp 2000",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 595.0, 130.0, 17.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_float 0. ramp 2000",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 575.0, 130.0, 17.0 ],
					"id" : "obj-35",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_slider 127 ramp 2000",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 35.0, 595.0, 144.0, 17.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_slider 0 ramp 2000",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 35.0, 575.0, 131.0, 17.0 ],
					"id" : "obj-37",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s incoming",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 645.0, 78.0, 19.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r incoming",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 160.0, 325.0, 79.0, 19.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This helps keeping the patch tidy",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 520.0, 120.0, 175.0, 19.0 ],
					"id" : "obj-46",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Used internally for processing",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 140.0, 440.0, 213.0, 19.0 ],
					"id" : "obj-47",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 475.0, 213.0, 17.0 ],
					"id" : "obj-48",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 140.0, 420.0, 153.0, 17.0 ],
					"id" : "obj-50",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_menu",
					"text" : "jcom.parameter my_menu @type msg_symbol @repetitions/allow 0 @description \"My menu\"",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 388.0, 489.0, 267.0, 31.0 ],
					"id" : "obj-52",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_toggle",
					"text" : "jcom.parameter my_toggle @repetitions 0 @type msg_toggle @description \"My toggle\"",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 388.0, 404.0, 261.0, 31.0 ],
					"id" : "obj-53",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_int",
					"text" : "jcom.parameter my_int @range/clipmode none @type msg_int @ramp/drive scheduler @repetitions/allow 0 @description \"My int\"",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 388.0, 329.0, 346.0, 31.0 ],
					"id" : "obj-54",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_float",
					"text" : "jcom.parameter my_float @range/clipmode none @type msg_float @ramp/drive scheduler @description \"My float\"",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 388.0, 249.0, 301.0, 31.0 ],
					"id" : "obj-55",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_slider",
					"text" : "jcom.parameter my_slider @type msg_int @range/bounds 0 127 @range/clipmode both @ramp/drive scheduler @repetitions/allow 0 @description \"My slider\"",
					"linecount" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 388.0, 174.0, 308.0, 43.0 ],
					"id" : "obj-56",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.hub",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 13.482065,
					"patching_rect" : [ 34.0, 292.0, 84.0, 23.0 ],
					"id" : "obj-57",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Menu 2",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 388.0, 459.0, 93.0, 19.0 ],
					"id" : "obj-58",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.0, 384.0, 98.0, 19.0 ],
					"id" : "obj-59",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Int",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.0, 309.0, 81.0, 19.0 ],
					"id" : "obj-60",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Float",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.0, 229.0, 90.0, 19.0 ],
					"id" : "obj-61",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.0, 149.0, 96.0, 19.0 ],
					"id" : "obj-62",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "My_Menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "uno", ",", "doz", ",", "trez" ],
					"types" : [  ],
					"patching_rect" : [ 100.0, 220.0, 74.0, 19.0 ],
					"id" : "obj-63",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "My_Toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 100.0, 200.0, 18.0, 18.0 ],
					"id" : "obj-64"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "My_Int",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 100.0, 180.0, 51.0, 19.0 ],
					"triscale" : 0.9,
					"id" : "obj-65",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_int",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 180.0, 44.0, 19.0 ],
					"id" : "obj-66",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "My_Float",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 100.0, 160.0, 51.0, 19.0 ],
					"triscale" : 0.9,
					"id" : "obj-67",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"varname" : "My_Slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 140.0, 144.0, 18.0 ],
					"orientation" : 1,
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 35.0, 355.0, 196.0, 19.0 ],
					"id" : "obj-70",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 325.0, 97.0, 19.0 ],
					"id" : "obj-71",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 35.0, 325.0, 24.0, 24.0 ],
					"id" : "obj-72",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 475.0, 24.0, 24.0 ],
					"id" : "obj-73",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"patching_rect" : [ 15.0, 15.0, 189.0, 28.0 ],
					"id" : "obj-79",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Handling parameters in the modules",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 40.0, 269.0, 19.0 ],
					"id" : "obj-80",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 500.0, 50.0 ],
					"rounded" : 15,
					"id" : "obj-81"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_slider",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 140.0, 58.0, 19.0 ],
					"id" : "obj-84",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_float",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 160.0, 53.0, 19.0 ],
					"id" : "obj-85",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_toggle",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 200.0, 62.0, 19.0 ],
					"id" : "obj-86",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_menu",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 220.0, 59.0, 19.0 ],
					"id" : "obj-87",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.gui",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 13.482065,
					"patching_rect" : [ 20.0, 85.0, 79.0, 23.0 ],
					"id" : "obj-88",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reporting to the rest of the world",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 505.0, 200.0, 19.0 ],
					"id" : "obj-89",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you want to use menu text item instead of index numbers, this is how to do it.",
					"linecount" : 2,
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 488.0, 454.0, 225.0, 31.0 ],
					"id" : "obj-90",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pvar is used for wireless communication between the GUI interface and jcom.parameter. though, we recommend using presentation mode",
					"linecount" : 3,
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 388.0, 96.0, 303.0, 43.0 ],
					"id" : "obj-91",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For testing of remote control of module:",
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 35.0, 550.0, 238.0, 19.0 ],
					"id" : "obj-95",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 115.0, 300.0, 140.0 ],
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 270.0, 350.0, 265.0 ],
					"background" : 1,
					"rounded" : 15,
					"id" : "obj-96"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 370.0, 80.0, 365.0, 455.0 ],
					"background" : 1,
					"rounded" : 15,
					"id" : "obj-97"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 545.0, 725.0, 80.0 ],
					"background" : 1,
					"rounded" : 15,
					"id" : "obj-98"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 80.0, 350.0, 180.0 ],
					"background" : 1,
					"rounded" : 15,
					"id" : "obj-128"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 397.5, 522.0, 383.0, 522.0, 383.0, 453.0, 397.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [ 471.5, 482.0, 397.5, 482.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [ 397.5, 364.0, 381.0, 364.0, 381.0, 306.0, 397.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 351.0, 59.0, 351.0, 59.0, 351.0, 44.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 468.0, 268.5, 468.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 674.5, 590.0, 584.5, 590.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 629.5, 590.0, 584.5, 590.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 584.5, 590.0, 584.5, 590.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 397.5, 438.0, 383.0, 438.0, 383.0, 382.0, 397.5, 382.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 397.5, 285.0, 381.0, 285.0, 381.0, 226.0, 397.5, 226.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 679.5, 687.0, 394.5, 687.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 524.5, 687.0, 394.5, 687.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 614.5, 687.0, 394.5, 687.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [ 397.5, 220.0, 382.0, 220.0, 382.0, 143.0, 397.5, 143.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 602.5, 170.0, 397.5, 170.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 497.5, 167.0, 397.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
