{
	"patcher" : 	{
		"rect" : [ 26.0, 51.0, 1173.0, 672.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 26.0, 51.0, 1173.0, 672.0 ],
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
					"text" : "p buttons",
					"patching_rect" : [ 428.0, 217.0, 68.0, 21.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.533333,
					"patcher" : 					{
						"rect" : [ 19.0, 332.0, 602.0, 267.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 19.0, 332.0, 602.0, 267.0 ],
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
									"text" : "jcom.return #1 \/buttons @range/bounds 0 3 @type msg_int @range/clipmode low @description \"buttons of the Wacom tool \"",
									"linecount" : 3,
									"patching_rect" : [ 247.0, 112.0, 244.0, 38.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return #1 \/touch @range/bounds 0 1 @type msg_toggle @range/clipmode both @description \"Indicates if the tool touches the tablet\"",
									"linecount" : 4,
									"patching_rect" : [ 27.0, 114.0, 161.0, 49.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "& 1",
									"patching_rect" : [ 27.0, 81.0, 27.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "\/ 2",
									"patching_rect" : [ 247.0, 81.0, 27.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 27.0, 47.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 36.0, 71.0, 256.5, 71.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.return proximity @range/bounds 0 1 @type msg_int @range/clipmode both @description \"Detects the presence of a tool near the tablet (without contact)\"",
					"linecount" : 3,
					"patching_rect" : [ 869.0, 514.0, 253.0, 38.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return direction @range/bounds 0 1 @type msg_int @range/clipmode both @description \"Direction of the Wacom tool\"",
					"linecount" : 3,
					"patching_rect" : [ 738.0, 414.0, 252.0, 38.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return buttons\/raw @range/bounds 0 5 @type msg_int @range/clipmode both @description \"button flags of the Wacom tool (odd when pressed\\, even when released)\"",
					"linecount" : 3,
					"patching_rect" : [ 546.0, 516.0, 253.0, 38.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return rotation @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"rotation  of the Wacom tool\"",
					"linecount" : 4,
					"patching_rect" : [ 559.0, 436.0, 163.0, 49.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return tilt\/y @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"y tilt of the Wacom tool\"",
					"linecount" : 4,
					"patching_rect" : [ 398.0, 436.0, 144.0, 49.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return tilt\/x @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"x tilt of the Wacom tool\"",
					"linecount" : 4,
					"patching_rect" : [ 353.0, 503.0, 144.0, 49.0 ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return pressure @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"pressure of the Wacom tool\"",
					"linecount" : 4,
					"patching_rect" : [ 210.0, 436.0, 144.0, 49.0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.return position\/y @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"y position of the Wacom tool\"",
					"linecount" : 4,
					"patching_rect" : [ 126.0, 509.0, 144.0, 49.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 65535 0. 1.",
					"patching_rect" : [ 559.0, 352.0, 98.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyrange 1",
					"patching_rect" : [ 147.0, 142.0, 56.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 23.0, 82.0, 15.0, 15.0 ],
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel b 1 0",
					"patching_rect" : [ 82.0, 115.0, 53.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 4,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"patching_rect" : [ 753.0, 283.0, 16.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"patching_rect" : [ 738.0, 283.0, 16.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 3",
					"patching_rect" : [ 738.0, 263.0, 40.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale -30720 30720 -1. 1.",
					"patching_rect" : [ 398.0, 317.0, 132.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale -30720 30720 -1. 1.",
					"patching_rect" : [ 353.0, 344.0, 132.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 65535 0. 1.",
					"patching_rect" : [ 210.0, 318.0, 98.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 6,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0 0 0 0 0 0 0 0 0",
					"patching_rect" : [ 739.0, 214.0, 144.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 11,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "wacom",
					"patching_rect" : [ 147.0, 168.0, 681.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 10,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 394.0, 142.0, 197.0, 17.0 ],
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-22",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"items" : [ "All tablets and tools", ",", "Intuos2 6x8 \/ all tools", ",", "Graphire2 \/ all tools", ",", "Graphire2 \/ Graphire Stylus" ],
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "menu",
					"patching_rect" : [ 331.0, 142.0, 32.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 255.0, 119.0, 15.0, 15.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "nopointer $1",
					"patching_rect" : [ 255.0, 142.0, 67.0, 15.0 ],
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
					"maxclass" : "newobj",
					"text" : "unpack 0 0",
					"patching_rect" : [ 353.0, 216.0, 55.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0.",
					"patching_rect" : [ 48.0, 214.0, 88.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "float", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getinfo",
					"patching_rect" : [ 211.0, 142.0, 40.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "nopoll",
					"patching_rect" : [ 110.0, 142.0, 35.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "poll",
					"patching_rect" : [ 82.0, 142.0, 24.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jcom.init",
					"patching_rect" : [ 147.0, 114.0, 58.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return position\/x @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"x position of the Wacom tool\"",
					"linecount" : 4,
					"patching_rect" : [ 48.0, 436.0, 144.0, 49.0 ],
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 904.0, 256.0, 15.0, 15.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute \/on \/nopointer \/init \/menu",
					"patching_rect" : [ 82.0, 85.0, 482.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 5,
					"fontsize" : 9.0,
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 82.0, 61.0, 15.0, 15.0 ],
					"id" : "obj-35",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This is to send the menu contents to the module.",
					"linecount" : 3,
					"patching_rect" : [ 916.0, 213.0, 90.0, 38.0 ],
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 156.5, 200.0, 57.5, 200.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 156.5, 163.0, 156.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 403.5, 163.0, 156.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 163.0, 156.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 220.5, 163.0, 156.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 163.0, 156.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 91.5, 163.0, 156.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 340.5, 163.0, 156.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 230.055557, 252.0, 219.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 207.25, 110.0, 264.0, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 323.0, 122.0, 340.5, 122.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 303.611115, 202.0, 362.5, 202.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 362.5, 288.0, 362.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 9 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 818.5, 137.0, 594.0, 137.0, 594.0, 137.0, 403.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 3 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 438.75, 122.0, 403.5, 122.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 398.5, 275.0, 407.5, 275.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 3 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 377.166656, 201.0, 437.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 3 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 377.166656, 201.0, 555.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 4 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 450.722229, 192.0, 568.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 9 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 861.0, 253.0, 747.5, 253.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 762.5, 356.0, 747.5, 356.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 8 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 744.944458, 201.0, 748.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 10 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 873.5, 477.0, 878.5, 477.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 9 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 818.5, 198.0, 913.0, 198.0 ]
				}

			}
 ]
	}

}
