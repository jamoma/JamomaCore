{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 65.0, 229.0, 980.0, 698.0 ],
		"bglocked" : 0,
		"defrect" : [ 65.0, 229.0, 980.0, 698.0 ],
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
					"maxclass" : "textbutton",
					"varname" : "multicast_join",
					"numoutlets" : 3,
					"presentation" : 1,
					"fontsize" : 10.0,
					"texton" : "Leave",
					"outlettype" : [ "int", "", "int" ],
					"mode" : 1,
					"presentation_rect" : [ 17.0, 37.0, 80.0, 22.0 ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"text" : "Join",
					"numinlets" : 1,
					"patching_rect" : [ 115.0, 142.0, 44.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 106.0, 462.0, 53.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 238.0, 500.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t clear",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "clear" ],
					"hidden" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 503.0, 48.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel null",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "" ],
					"hidden" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 224.0, 479.0, 44.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "null",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 133.0, 366.0, 26.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel bang",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "" ],
					"hidden" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 133.0, 344.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 179.0, 78.0, 30.0, 18.0 ],
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
									"maxclass" : "newobj",
									"text" : "t b clear",
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "clear" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 24.0, 119.0, 49.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel bang",
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 76.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 86.0, 120.0, 68.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 86.0, 100.0, 54.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 50.0, 58.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 61.0, 194.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "osc_prefix",
					"text" : "jcom.parameter osc_prefix @type msg_symbol @repetitions/allow 0 @description \"Define a string to concatenate to the beginning of all OpenSoundControl strings sent by this module.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 418.0, 380.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 169.0, 364.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 133.0, 324.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"numoutlets" : 3,
					"fontsize" : 8.998901,
					"outlettype" : [ "", "int", "" ],
					"keymode" : 1,
					"id" : "obj-11",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"lines" : 1,
					"patching_rect" : [ 162.0, 122.0, 88.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "osc prefix",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 103.0, 126.0, 57.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"numoutlets" : 3,
					"fontsize" : 8.998901,
					"outlettype" : [ "", "int", "" ],
					"keymode" : 1,
					"id" : "obj-13",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"lines" : 1,
					"patching_rect" : [ 162.0, 21.0, 88.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "osc prefix",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 103.0, 25.0, 57.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar multicast_port",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 408.0, 393.0, 106.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multicast_port[1]",
					"text" : "jcom.parameter multicast_port @type msg_int @range/clipmode none @description \"Set the network port number used for sending out multicast OpenSoundControl messages.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 408.0, 415.0, 456.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "multicast_port",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 52.0, 124.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "port",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 126.0, 29.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar multicast_join",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 408.0, 476.0, 104.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multicast_join[1]",
					"text" : "jcom.parameter multicast_join @type msg_int @range/clipmode none @description \"Set the network port number on which to receive OpenSoundControl messages.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 408.0, 496.0, 429.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multicast_ip",
					"text" : "jcom.parameter multicast_ip @type msg_symbol @repetitions/allow 0 @description \"Define the multicast host to for OpenSoundControl messages to which you would like to join.  This may be symbolic or an ip address.\"",
					"linecount" : 4,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 322.0, 323.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 302.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 282.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multicast address",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 144.0, 96.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "127.0.0.1",
					"numoutlets" : 3,
					"fontsize" : 8.998901,
					"outlettype" : [ "", "int", "" ],
					"keymode" : 1,
					"id" : "obj-26",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"lines" : 1,
					"patching_rect" : [ 162.0, 141.0, 88.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 77.0, 64.0, 18.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "offset 0 -120",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 637.0, 52.0, 73.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "offset 0 -19",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 560.0, 52.0, 67.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0 1",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "bang", "" ],
					"hidden" : 1,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 30.0, 165.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-31",
					"numinlets" : 0,
					"patching_rect" : [ 560.0, 9.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "send_host",
					"text" : "jcom.parameter send_host @type msg_symbol @repetitions/allow 0 @description \"Set the host to which OpenSoundControl messages should be sent.  This may be symbolic or an ip address.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 106.0, 339.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 86.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 66.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "port_out",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 71.0, 42.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "port_in",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"triangle" : 0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"triscale" : 0.9,
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 71.0, 25.0, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "127.0.0.1",
					"numoutlets" : 3,
					"fontsize" : 8.998901,
					"outlettype" : [ "", "int", "" ],
					"keymode" : 1,
					"id" : "obj-37",
					"fontname" : "Geneva",
					"numinlets" : 1,
					"lines" : 1,
					"patching_rect" : [ 162.0, 40.0, 88.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send port",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 44.0, 56.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar port_out",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 217.0, 77.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "send_port",
					"text" : "jcom.parameter send_port @type msg_int @range/clipmode none @description \"Set the network port number used for sending out OpenSoundControl messages.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 239.0, 421.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "receive port",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 4.0, 27.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar port_in",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"hidden" : 1,
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 153.0, 70.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "receive_port",
					"text" : "jcom.parameter receive_port @type msg_int @range/clipmode none @description \"Set the network port number on which to receive OpenSoundControl messages.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"hidden" : 1,
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 367.0, 173.0, 422.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"numoutlets" : 0,
					"id" : "obj-44",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 116.0, 258.0, 64.0 ],
					"pic" : "jcom.bg.j4.control.1U-half.pct"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send host",
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 44.0, 57.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/Jamoma",
					"numoutlets" : 1,
					"fontsize" : 12.068032,
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 376.5, 207.0, 360.0, 207.0, 360.0, 148.0, 376.5, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [ 376.5, 272.0, 360.0, 272.0, 360.0, 210.0, 376.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 417.5, 462.0, 401.0, 462.0, 401.0, 386.0, 417.5, 386.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 417.5, 532.0, 401.0, 532.0, 401.0, 471.0, 417.5, 471.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
