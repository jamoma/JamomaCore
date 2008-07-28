{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 34.0, 67.0, 757.0, 685.0 ],
		"bglocked" : 0,
		"defrect" : [ 34.0, 67.0, 757.0, 685.0 ],
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
					"text" : "p Input_output_arguments",
					"id" : "obj-74",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 575.0, 10.0, 160.0, 20.0 ],
					"fontsize" : 10.970939,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 672.0, 723.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 672.0, 723.0 ],
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
									"id" : "obj-3",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"presentation_rect" : [ 345.0, 297.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 345.0, 300.0, 324.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- only msg_int, msg_float, and msg_list support ramping",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 345.0, 285.0, 324.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "linear.queue",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 285.0, 119.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_none (bang)",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 225.0, 99.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_list",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 180.0, 52.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_float",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 150.0, 60.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_int",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 135.0, 51.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_symbol",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 195.0, 73.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_toggle",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 165.0, 68.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- defines the size of the step used by the 'inc' and 'dec' messages (default is 1)",
									"linecount" : 2,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 525.0, 311.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@stepsize",
									"id" : "obj-16",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 525.0, 100.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "float",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 555.0, 32.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- qlim-ed messages with set prepended. Use this for connection back to GUI interface object",
									"linecount" : 2,
									"id" : "obj-41",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 615.0, 343.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- most often, you'll not connect jcom.parameter directly to the rest of the patch, but instead use jcom.hub 2nd outlet. If you for some reason need to connect directly from jcom.parameter, use the 2nd outlet. This outlet is not qlim-ed, and neither has it \"set\" prepended.",
									"linecount" : 4,
									"id" : "obj-42",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 655.0, 355.0, 55.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Right:",
									"id" : "obj-43",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 655.0, 134.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Left:",
									"id" : "obj-44",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 615.0, 135.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Outlets:",
									"id" : "obj-45",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 20.0, 585.0, 176.0, 23.0 ],
									"fontsize" : 13.482065,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- within each module all parameter names must be unique. Different modules sharing the same parameter names is no problem.",
									"linecount" : 2,
									"id" : "obj-76",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 185.0, 45.0, 364.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(name of parameter)",
									"id" : "obj-77",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 45.0, 135.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Argument (obligatory):",
									"id" : "obj-78",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 20.0, 15.0, 176.0, 23.0 ],
									"fontsize" : 13.482065,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Attributes:",
									"id" : "obj-82",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 20.0, 80.0, 85.0, 23.0 ],
									"fontsize" : 13.482065,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- text describing the parameter for html auto-documenting modules",
									"id" : "obj-100",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 480.0, 351.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@description",
									"id" : "obj-101",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 480.0, 100.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(text)",
									"id" : "obj-102",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 500.0, 39.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@clipmode",
									"id" : "obj-105",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 435.0, 100.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none, low, high, both",
									"id" : "obj-106",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 455.0, 124.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- suggested normal range of parameter (two ints or floats). Default: 0.-127.",
									"linecount" : 2,
									"id" : "obj-107",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 380.0, 289.0, 31.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- permit repetitions of the same value",
									"id" : "obj-108",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 325.0, 200.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- what kind of parameter is this?",
									"id" : "obj-109",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 115.0, 279.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 (default)",
									"id" : "obj-110",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 355.0, 63.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0",
									"id" : "obj-111",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 340.0, 19.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@repetitions",
									"id" : "obj-112",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 325.0, 100.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@range",
									"id" : "obj-113",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 385.0, 100.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "linear.sched",
									"id" : "obj-114",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 300.0, 95.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "msg_generic (default)",
									"id" : "obj-115",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 210.0, 134.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@type",
									"id" : "obj-116",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 115.0, 100.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "none (default)",
									"id" : "obj-117",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 270.0, 100.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2 ints or floats",
									"id" : "obj-118",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 215.0, 410.0, 82.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- determines if parameter can be ramped or not",
									"id" : "obj-119",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 250.0, 278.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@ramp",
									"id" : "obj-120",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 250.0, 109.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "- define range boundary restrictions. Default: none",
									"id" : "obj-104",
									"fontname" : "Verdana",
									"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 435.0, 266.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ramp linear.sched",
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 603.0, 149.0, 110.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ramp linear.queue",
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 488.0, 149.0, 111.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "addressing_attributes",
					"text" : "p /addressing_attributes",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 575.0, 40.0, 160.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
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
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 535.0, 245.0, 76.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 135.0, 410.0, 35.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type msg_float",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 175.0, 350.0, 84.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 350.0, 35.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 95.0, 125.0, 20.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 125.0, 20.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bear:type msg_int",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 400.0, 65.0, 106.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type msg_int",
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 90.0, 350.0, 75.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 225.0, 245.0, 32.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bear:clipmode both",
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 515.0, 65.0, 111.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/bear 91",
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 535.0, 95.0, 52.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "joe is a bullfrog",
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 680.0, 125.0, 87.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "buba 19",
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 640.0, 65.0, 50.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "buba 19.5",
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 660.0, 95.0, 60.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 125.0, 155.0, 43.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 125.0, 125.0, 68.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-7",
									"outlettype" : [ "" ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 195.0, 300.0, 77.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 195.0, 275.0, 68.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 1",
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 560.0, 305.0, 63.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "bear 23",
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 555.0, 125.0, 47.0, 17.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.hub helppatch",
									"outlettype" : [ "", "" ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 515.0, 275.0, 108.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 135.0, 275.0, 54.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 145.0, 95.0, 35.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 95.0, 35.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 95.0, 95.0, 35.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "joe",
									"text" : "jcom.parameter joe @type msg_float",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 385.0, 198.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 190.0, 55.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "buba[1]",
									"text" : "jcom.parameter buba @type msg_int",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 215.0, 199.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 30.0, 35.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "bear[1]",
									"text" : "jcom.parameter bear",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 45.0, 55.0, 119.0, 19.0 ],
									"fontsize" : 10.0,
									"numoutlets" : 3
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 409.5, 237.0, 524.5, 237.0 ]
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 544.5, 222.0, 524.5, 222.0 ]
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
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 564.5, 222.0, 524.5, 222.0 ]
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 689.5, 222.0, 524.5, 222.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "", "" ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 275.0, 370.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 65.0, 395.0, 81.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.gui",
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 670.0, 655.0, 55.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.hub",
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 605.0, 655.0, 60.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.message",
					"outlettype" : [ "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 515.0, 655.0, 86.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.parameter.gain",
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 385.0, 655.0, 127.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 385.0, 695.0, 78.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 385.0, 715.0, 55.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See also",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 385.0, 635.0, 115.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 462.0, 576.0, 17.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_int 100 ramp 2000",
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 320.0, 595.0, 130.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_int -100 ramp 2000",
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 322.0, 576.0, 134.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "trez",
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 665.0, 570.0, 46.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "doz",
					"outlettype" : [ "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 620.0, 570.0, 39.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "uno",
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 575.0, 570.0, 40.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /my_menu",
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 575.0, 595.0, 109.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_toggle $1",
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 462.0, 596.0, 104.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_float 1. ramp 2000",
					"outlettype" : [ "" ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 185.0, 595.0, 130.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_float 0. ramp 2000",
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 185.0, 575.0, 130.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_slider 127 ramp 2000",
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 35.0, 595.0, 144.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/my_slider 0 ramp 2000",
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 35.0, 575.0, 131.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s incomming",
					"id" : "obj-38",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 645.0, 78.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r incomming",
					"outlettype" : [ "" ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 160.0, 325.0, 79.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This helps keeping the patch tidy",
					"id" : "obj-46",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 125.0, 175.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Used internally for processing",
					"id" : "obj-47",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 140.0, 440.0, 213.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"outlettype" : [ "" ],
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 65.0, 475.0, 213.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"outlettype" : [ "" ],
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 140.0, 420.0, 153.0, 17.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_menu",
					"text" : "jcom.parameter my_menu @type msg_symbol @repetitions 0 @description \"My menu\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-52",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 489.0, 264.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_toggle",
					"text" : "jcom.parameter my_toggle @repetitions 0 @type msg_toggle @description \"My toggle\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-53",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 404.0, 261.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_int",
					"text" : "jcom.parameter my_int @range/clipmode none @type msg_int @ramp/drive scheduler @repetitions 0 @description \"My int\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 329.0, 330.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_float",
					"text" : "jcom.parameter my_float @range/clipmode none @type msg_float @ramp/drive scheduler @description \"My float\"",
					"linecount" : 2,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-55",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 249.0, 300.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "my_slider",
					"text" : "jcom.parameter my_slider @type msg_int @range/bounds 0 127 @range/clipmode both @ramp/drive scheduler @repetitions 0 @description \"My slider\"",
					"linecount" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 174.0, 307.0, 43.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.hub",
					"id" : "obj-57",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 292.0, 84.0, 23.0 ],
					"fontsize" : 13.482065,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Menu 2",
					"outlettype" : [ "", "" ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 459.0, 93.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Toggle",
					"outlettype" : [ "" ],
					"id" : "obj-59",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 384.0, 98.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Int",
					"outlettype" : [ "" ],
					"id" : "obj-60",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 309.0, 81.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Float",
					"outlettype" : [ "" ],
					"id" : "obj-61",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 229.0, 90.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar My_Slider",
					"outlettype" : [ "" ],
					"id" : "obj-62",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 149.0, 96.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "My_Menu",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-63",
					"fontname" : "Verdana",
					"labelclick" : 1,
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 220.0, 74.0, 19.0 ],
					"fontsize" : 10.0,
					"items" : [ "uno", ",", "doz", ",", "trez" ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "My_Toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-64",
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 200.0, 18.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "My_Int",
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-65",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 180.0, 51.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_int",
					"id" : "obj-66",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 180.0, 43.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "My_Float",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-67",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 160.0, 51.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"varname" : "My_Slider",
					"orientation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-68",
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 140.0, 144.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jcom.parameter_help @size 2U-half @module_type control",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-70",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 355.0, 196.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"id" : "obj-71",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 325.0, 97.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"id" : "obj-72",
					"numinlets" : 0,
					"patching_rect" : [ 35.0, 325.0, 24.0, 24.0 ],
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-73",
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 475.0, 24.0, 24.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter",
					"id" : "obj-79",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 15.0, 189.0, 28.0 ],
					"fontsize" : 17.334082,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Handling parameters in the modules",
					"id" : "obj-80",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 40.0, 269.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-81",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 10.0, 389.0, 51.0 ],
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_slider",
					"id" : "obj-84",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 140.0, 58.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_float",
					"id" : "obj-85",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 160.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_toggle",
					"id" : "obj-86",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 200.0, 62.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_menu",
					"id" : "obj-87",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 220.0, 59.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.gui",
					"id" : "obj-88",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 85.0, 79.0, 23.0 ],
					"fontsize" : 13.482065,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reporting to the rest of the world",
					"id" : "obj-89",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 505.0, 200.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you want to use menu text item instead of index numbers, this is how to do it.",
					"linecount" : 2,
					"id" : "obj-90",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 488.0, 454.0, 225.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pvar is used for wireless communication between the GUI interface and jcom.parameter.",
					"linecount" : 2,
					"id" : "obj-91",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 96.0, 303.0, 31.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For testing of remote control of module:",
					"id" : "obj-95",
					"fontname" : "Verdana",
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 550.0, 238.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"id" : "obj-75",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 115.0, 300.0, 140.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-96",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 270.0, 350.0, 265.0 ],
					"background" : 1,
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-97",
					"numinlets" : 1,
					"patching_rect" : [ 370.0, 80.0, 365.0, 455.0 ],
					"background" : 1,
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-98",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 545.0, 725.0, 80.0 ],
					"background" : 1,
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-128",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 80.0, 350.0, 180.0 ],
					"background" : 1,
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-32", 0 ],
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
					"source" : [ "obj-27", 0 ],
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
					"source" : [ "obj-35", 0 ],
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [ 471.5, 482.0, 397.5, 482.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 397.5, 522.0, 383.0, 522.0, 383.0, 453.0, 397.5, 453.0 ]
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
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 612.5, 170.0, 397.5, 170.0 ]
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 351.0, 59.0, 351.0, 59.0, 351.0, 44.5, 351.0 ]
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
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 468.0, 268.5, 468.0 ]
				}

			}
 ]
	}

}
