{
	"patcher" : 	{
		"rect" : [ 261.0, 123.0, 666.0, 569.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 261.0, 123.0, 666.0, 569.0 ],
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
					"text" : "r limiter",
					"patching_rect" : [ 320.0, 151.0, 48.0, 17.0 ],
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
					"maxclass" : "newobj",
					"text" : "r edge%",
					"patching_rect" : [ 320.0, 60.0, 51.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r my_degrade2",
					"patching_rect" : [ 18.0, 150.0, 84.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r my_degrade",
					"patching_rect" : [ 18.0, 59.0, 76.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This example of using qlist is actually derived from the qlist help patch. Please that help patch for more information!",
					"linecount" : 2,
					"patching_rect" : [ 18.0, 386.0, 443.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This example shows one possible interface to qlist for sending variable values to corresponding receives and for separating groups of variables and their values into successive events. This example also allows for time-delayed variable sends within an event. The syntax created via the patcher 'qlist_control' is the following: in the qlist object connected to 'qlist_control', if there are two numbers at the beginning of a line which are not related to a variable send, they represent a delay time in milliseconds and an event number. A single number at the beginning of a line, before any variable send on the same line, represents a delay time in milliseconds. Thus, event 2 starts at time 0 with a send of the value 7500 to var1. After a delay of 2000 milliseconds, var2 is sent the value 20. Click successively from event 0, which rewinds the qlist, through event 10 and compare the values in the Max window with the values in the qlist. Note that events 2, 5, and 9 all have time-delayed sends after time zero.",
					"linecount" : 11,
					"patching_rect" : [ 18.0, 419.0, 426.0, 122.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0 = 'next' message advances and executes (See Nota Bene)",
					"patching_rect" : [ 54.0, 252.0, 272.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 = 'next' message advances but does not executes",
					"patching_rect" : [ 54.0, 269.0, 235.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "click on event numbers (zero does a rewind of qlist)",
					"patching_rect" : [ 133.0, 293.0, 242.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "8",
					"patching_rect" : [ 342.0, 307.0, 22.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "7",
					"patching_rect" : [ 316.0, 307.0, 22.0, 15.0 ],
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
					"maxclass" : "message",
					"text" : "6",
					"patching_rect" : [ 289.0, 307.0, 22.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5",
					"patching_rect" : [ 263.0, 307.0, 22.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4",
					"patching_rect" : [ 237.0, 307.0, 22.0, 15.0 ],
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
					"text" : "3",
					"patching_rect" : [ 211.0, 307.0, 22.0, 15.0 ],
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
					"maxclass" : "message",
					"text" : "2",
					"patching_rect" : [ 185.0, 307.0, 22.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"patching_rect" : [ 159.0, 307.0, 22.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
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
					"patching_rect" : [ 133.0, 307.0, 22.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "9",
					"patching_rect" : [ 369.0, 307.0, 22.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "10",
					"patching_rect" : [ 396.0, 307.0, 28.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlist",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"patching_rect" : [ 41.0, 354.0, 40.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "", "bang", "bang" ],
					"save" : [ "#N", "qlist", ";", "#X", "insert", "------------------------", 1, ";", ";", "#X", "insert", 0, 1, "my_degrade", "\/audio\/mute", 0, ";", ";", "#X", "insert", "my_degrade", "\/audio\/gain", 0, "ramp", 2000, ";", ";", "#X", "insert", "------------------------", 2, ";", ";", "#X", "insert", 0, 2, "my_degrade2", "\/audio\/gain", 0, "ramp", 2000, ";", ";", "#X", "insert", 2000, "limiter", "\/audio\/mute", 0, ";", ";", "#X", "insert", "limiter", "\/audio\/gain", 0, "ramp", 3500, ";", ";", "#X", "insert", "------------------------", 3, ";", ";", "#X", "insert", 0, 3, "edge%", "\/thresh", 0.75, "ramp", 500, ";", ";", "#X", "insert", "------------------------", 4, ";", ";", "#X", "insert", 0, 4, "var2", 8600, ";", ";", "#X", "insert", "------------------------", 5, ";", ";", "#X", "insert", 0, 5, "var2", 7100, ";", ";", "#X", "insert", 1000, "var1", 1, ";", ";", "#X", "insert", "------------------------", 6, ";", ";", "#X", "insert", 0, 6, "var1", 8400, ";", ";", "#X", "insert", "------------------------", 7, ";", ";", "#X", "insert", 0, 7, "var2", 6800, ";", ";", "#X", "insert", "------------------------", 8, ";", ";", "#X", "insert", 0, 8, "var1", 9100, ";", ";", "#X", "insert", "------------------------", 9, ";", ";", "#X", "insert", 0, 9, "var1", 7300, ";", ";", "#X", "insert", 2500, "var2", 100, ";", ";", "#X", "insert", "------------------------", 10, ";", ";", "#X", "insert", 0, 10, "var1", 7200, ";", ";", "#X", "insert", "var2", 3, ";", ";", "#X", "insert", "------------------------", 11, ";", ";", "#X", "insert", 0, 11, ";", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher qlist_control",
					"patching_rect" : [ 41.0, 327.0, 103.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 3,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"rect" : [ 156.0, 164.0, 555.0, 510.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 156.0, 164.0, 555.0, 510.0 ],
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
									"text" : "t b i b",
									"patching_rect" : [ 147.0, 244.0, 40.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 100000",
									"patching_rect" : [ 147.0, 220.0, 75.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "-",
									"patching_rect" : [ 147.0, 197.0, 27.0, 17.0 ],
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
									"text" : "split 1 100000",
									"patching_rect" : [ 162.0, 285.0, 75.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 3,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"patching_rect" : [ 83.0, 190.0, 27.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"patching_rect" : [ 311.0, 58.0, 30.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"patching_rect" : [ 311.0, 86.0, 28.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rewind, next",
									"patching_rect" : [ 311.0, 156.0, 65.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "events inlet",
									"patching_rect" : [ 331.0, 30.0, 61.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 311.0, 29.0, 15.0, 15.0 ],
									"id" : "obj-10",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 162.0, 318.0, 16.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "next $1",
									"patching_rect" : [ 241.0, 318.0, 43.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i 0",
									"patching_rect" : [ 241.0, 285.0, 27.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gets time delays from the qlist",
									"patching_rect" : [ 82.0, 406.0, 145.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 127.0, 29.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"patching_rect" : [ 127.0, 94.0, 47.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.0,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "outlet for 'rewind' and 'next' messages which are sent to the qlist",
									"linecount" : 2,
									"patching_rect" : [ 263.0, 348.0, 192.0, 28.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If negative, do nothing. If zero, send a 'next' to the qlist and 'bang' the delay object. If positive, send a 'next' to the qlist, a delay time of zero to the delay object, and 'bang' the delay object.",
									"linecount" : 4,
									"patching_rect" : [ 294.0, 254.0, 226.0, 49.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "executable or nonexecutable 'next' inlet",
									"linecount" : 3,
									"patching_rect" : [ 181.0, 28.0, 77.0, 38.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "dummy variable which should not be removed!",
									"patching_rect" : [ 188.0, 432.0, 215.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r ------------------------",
									"patching_rect" : [ 49.0, 431.0, 135.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "separate the time delays and event numbers being output from the qlist and send time delays to the delay object",
									"linecount" : 8,
									"patching_rect" : [ 34.0, 50.0, 78.0, 91.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "send the present event number for comparison with any incoming event numbers",
									"linecount" : 3,
									"patching_rect" : [ 319.0, 199.0, 151.0, 38.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if the event number is 0, initalize by sending a 'rewind' and 'next' message to qlist",
									"linecount" : 3,
									"patching_rect" : [ 348.0, 115.0, 150.0, 38.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 329.0, 118.0, 16.0, 15.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del",
									"patching_rect" : [ 83.0, 384.0, 54.0, 17.0 ],
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 9.0,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 258.0, 28.0, 15.0, 15.0 ],
									"id" : "obj-27",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 241.0, 355.0, 15.0, 15.0 ],
									"id" : "obj-28",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-25", 0 ],
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
					"text" : "r var2",
					"patching_rect" : [ 320.0, 342.0, 38.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r var1",
					"patching_rect" : [ 217.0, 342.0, 38.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print var1",
					"patching_rect" : [ 217.0, 368.0, 55.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print var2",
					"patching_rect" : [ 320.0, 368.0, 55.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"patching_rect" : [ 34.0, 251.0, 16.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"patching_rect" : [ 34.0, 268.0, 16.0, 15.0 ],
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
					"maxclass" : "bpatcher",
					"varname" : "\/limiter~",
					"patching_rect" : [ 320.0, 172.0, 301.0, 69.0 ],
					"name" : "jmod.limiter~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-29",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [  ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/edge%",
					"patching_rect" : [ 320.0, 83.0, 301.0, 69.0 ],
					"name" : "jmod.edge%.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-30",
					"numinlets" : 2,
					"numoutlets" : 2,
					"args" : [  ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "degrade_also~",
					"patching_rect" : [ 18.0, 172.0, 301.0, 69.0 ],
					"name" : "jmod.degrade~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-31",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [  ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "degrade~",
					"patching_rect" : [ 18.0, 83.0, 301.0, 69.0 ],
					"name" : "jmod.degrade~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-32",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [  ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• DOUBLE-CLICK TO EDIT!",
					"linecount" : 2,
					"patching_rect" : [ 88.0, 350.0, 101.0, 28.0 ],
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 50.5, 378.0, 33.0, 378.0, 33.0, 320.0, 50.5, 320.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
