{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 26.0, 51.0, 1175.0, 591.0 ],
		"bglocked" : 0,
		"defrect" : [ 26.0, 51.0, 1175.0, 591.0 ],
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
					"text" : "p buttons",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 428.0, 217.0, 68.0, 21.0 ],
					"numoutlets" : 0,
					"fontsize" : 11.556055,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 19.0, 332.0, 602.0, 267.0 ],
						"bglocked" : 0,
						"defrect" : [ 19.0, 332.0, 602.0, 267.0 ],
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
									"text" : "jcom.return buttons @range/bounds 0 3 @type msg_int @range/clipmode low @description \"buttons of the Wacom tool \"",
									"linecount" : 3,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 247.0, 112.0, 244.0, 42.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.return touch @range/bounds 0 1 @type msg_toggle @range/clipmode both @description \"Indicates if the tool touches the tablet\"",
									"linecount" : 4,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 27.0, 114.0, 207.0, 54.0 ],
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "& 1",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 27.0, 81.0, 27.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 2",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 247.0, 81.0, 27.0, 18.0 ],
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-5",
									"numinlets" : 0,
									"patching_rect" : [ 27.0, 47.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
						"fontface" : 0,
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
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 869.0, 514.0, 288.0, 42.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return direction @range/bounds 0 1 @type msg_int @range/clipmode both @description \"Direction of the Wacom tool\"",
					"linecount" : 3,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 738.0, 414.0, 253.0, 42.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return buttons/raw @range/bounds 0 5 @type msg_int @range/clipmode both @description \"button flags of the Wacom tool (odd when pressed, even when released)\"",
					"linecount" : 3,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 546.0, 516.0, 314.0, 42.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return rotation @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"rotation  of the Wacom tool\"",
					"linecount" : 5,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 559.0, 430.0, 152.0, 66.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return tilt/y @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"y tilt of the Wacom tool\"",
					"linecount" : 6,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 399.0, 416.0, 148.0, 78.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return tilt/x @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"x tilt of the Wacom tool\"",
					"linecount" : 4,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 353.0, 503.0, 193.0, 54.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return pressure @range/bounds 0. 1. @type msg_float @description \"pressure of the Wacom tool\"",
					"linecount" : 5,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 210.0, 434.0, 144.0, 66.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return position/y @range/bounds 0. 1. @type msg_float @range/clipmode both @description \"y position of the Wacom tool\"",
					"linecount" : 4,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 117.0, 507.0, 206.0, 54.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 65535 0. 1.",
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"patching_rect" : [ 559.0, 352.0, 105.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "xyrange $1",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 147.0, 142.0, 66.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 82.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel b 1 0",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 82.0, 115.0, 53.0, 18.0 ],
					"numoutlets" : 4,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 753.0, 283.0, 17.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 738.0, 283.0, 17.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 3",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 738.0, 263.0, 42.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale -30720 30720 -1. 1.",
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"patching_rect" : [ 398.0, 317.0, 139.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale -30720 30720 -1. 1.",
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"patching_rect" : [ 353.0, 344.0, 139.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 65535 0. 1.",
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"patching_rect" : [ 210.0, 318.0, 105.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0 0 0 0 0 0 0 0 0",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 739.0, 214.0, 151.0, 18.0 ],
					"numoutlets" : 11,
					"fontsize" : 9.873845,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int", "int", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "wacom",
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 147.0, 168.0, 681.0, 18.0 ],
					"numoutlets" : 10,
					"fontsize" : 9.873845,
					"outlettype" : [ "list", "int", "list", "int", "int", "int", "int", "int", "list", "list" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 394.0, 142.0, 197.0, 18.0 ],
					"labelclick" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "All tablets and tools", ",", "Intuos2 6x8 / all tools", ",", "Graphire2 / all tools", ",", "Graphire2 / Graphire Stylus" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "menu",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 331.0, 142.0, 36.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-24",
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 119.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "nopointer $1",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 255.0, 142.0, 72.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0",
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 353.0, 216.0, 64.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0.",
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 48.0, 214.0, 88.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "float", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getinfo",
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 211.0, 142.0, 43.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "nopoll",
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 110.0, 142.0, 38.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "poll",
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 82.0, 142.0, 26.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return position/x @range/bounds 0. 1. @type msg_float @description \"x position of the Wacom tool\"",
					"linecount" : 4,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 48.0, 435.0, 158.0, 54.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-33",
					"numinlets" : 1,
					"patching_rect" : [ 904.0, 256.0, 15.0, 15.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /on /xyrange /nopointer /init /menu",
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 82.0, 85.0, 482.0, 18.0 ],
					"numoutlets" : 6,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-35",
					"numinlets" : 0,
					"patching_rect" : [ 82.0, 61.0, 15.0, 15.0 ],
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
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 916.0, 213.0, 103.0, 42.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 9.873845
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.100006, 111.0, 156.5, 111.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 276.700012, 114.0, 264.0, 114.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 3 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.299988, 118.0, 340.5, 118.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 4 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 461.899994, 121.0, 403.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 156.5, 200.0, 57.5, 200.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 407.5, 275.0, 407.5, 275.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 9 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 867.299988, 253.0, 747.5, 253.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 10 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 880.5, 477.0, 878.5, 477.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
