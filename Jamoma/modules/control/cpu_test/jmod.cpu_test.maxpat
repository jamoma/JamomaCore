{
	"patcher" : 	{
		"rect" : [ 66.0, 131.0, 825.0, 532.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 66.0, 131.0, 825.0, 532.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"patching_rect" : [ 40.0, 155.0, 38.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you need to send messages to or within the patch, but it's not required that they be stored or retrieveable, use jcom.message.",
					"linecount" : 2,
					"patching_rect" : [ 425.0, 300.0, 324.0, 28.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.message:",
					"patching_rect" : [ 406.0, 285.0, 300.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this for any parameters that you'd like to be able to store and retrieve.",
					"linecount" : 2,
					"patching_rect" : [ 425.0, 231.0, 308.0, 28.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.parameter:",
					"patching_rect" : [ 406.0, 216.0, 235.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Message B",
					"patching_rect" : [ 4.0, 41.0, 65.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 40.0, 209.0, 45.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"patching_rect" : [ 40.0, 185.0, 78.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/documentation\/generate",
					"patching_rect" : [ 38.0, 89.0, 125.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for html autodoc of module",
					"patching_rect" : [ 508.0, 441.0, 241.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 (default)\/0",
					"patching_rect" : [ 508.0, 396.0, 241.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1\/0 (default)",
					"patching_rect" : [ 508.0, 381.0, 241.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "none, low, high, both (default)",
					"patching_rect" : [ 508.0, 426.0, 241.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 508.0, 411.0, 241.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "generic (default), msg_int, msg_float, menu, toggle",
					"patching_rect" : [ 508.0, 366.0, 241.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 425.0, 441.0, 79.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 425.0, 396.0, 79.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 425.0, 381.0, 79.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 425.0, 426.0, 79.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 425.0, 411.0, 79.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"patching_rect" : [ 425.0, 366.0, 79.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MessageB",
					"patching_rect" : [ 458.0, 104.0, 75.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "MessageB",
					"patching_rect" : [ 73.0, 41.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"transparent" : 1,
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-23",
					"numinlets" : 1,
					"triangle" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message my_message @repetitions 1 @type msg_int @ramp/drive scheduler @range/bounds 0 40000 @range/clipmode both",
					"linecount" : 2,
					"patching_rect" : [ 458.0, 126.0, 253.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"patching_rect" : [ 201.0, 82.0, 65.0, 26.0 ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/init",
					"patching_rect" : [ 167.0, 89.0, 23.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p your_algorithm",
					"patching_rect" : [ 40.0, 266.0, 88.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"rect" : [ 585.0, 154.0, 549.0, 562.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 585.0, 154.0, 549.0, 562.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute \/param_a \/message_b",
									"patching_rect" : [ 70.0, 90.0, 180.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 70.0, 474.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 70.0, 50.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Substitute this patch for your algorithm",
									"patching_rect" : [ 70.0, 155.0, 398.0, 28.0 ],
									"fontname" : "Verdana",
									"frgb" : [ 0.392157, 0.403922, 0.901961, 1.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"textcolor" : [ 0.392157, 0.403922, 0.901961, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 15.799999
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter A",
					"patching_rect" : [ 4.0, 21.0, 65.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-28",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "ParameterA",
					"patching_rect" : [ 72.0, 20.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"transparent" : 1,
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"triangle" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ParameterA",
					"patching_rect" : [ 458.0, 27.0, 88.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.cpu_test @size 1U-half @module_type control @description \"A test module for analysing efficiency and tracking down bottle necks in parameter and message handling.\"",
					"linecount" : 2,
					"patching_rect" : [ 16.0, 116.0, 398.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
					"id" : "obj-32",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 16.0, 303.0, 13.0, 13.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter.mxt",
					"text" : "jcom.parameter my_parameter @repetitions 1 @type msg_int @ramp/drive scheduler @range/bounds 0 40000 @range/clipmode both",
					"linecount" : 2,
					"patching_rect" : [ 458.0, 47.0, 262.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/message_b 1",
					"patching_rect" : [ 146.0, 267.0, 153.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 146.0, 246.0, 61.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes for jcom.parameter and jcom.message:",
					"patching_rect" : [ 406.0, 351.0, 235.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-37",
					"numinlets" : 1,
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "\/Jamoma",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-38",
					"numinlets" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 108.0, 25.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 176.5, 110.0, 25.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 291.0, 23.0, 291.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 108.5, 257.0, 49.5, 257.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 108.5, 237.0, 155.5, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 467.5, 82.0, 451.0, 82.0, 451.0, 22.0, 467.5, 22.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 467.5, 166.0, 451.0, 166.0, 451.0, 97.0, 467.5, 97.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
