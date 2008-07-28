{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 586.0, 64.0, 988.0, 609.0 ],
		"bglocked" : 0,
		"defrect" : [ 586.0, 64.0, 988.0, 609.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"presentation" : 1,
					"rounded" : 8.0,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-46",
					"mode" : 1,
					"numoutlets" : 3,
					"texton" : "Leave",
					"presentation_rect" : [ 119.0, 150.0, 42.0, 17.0 ],
					"fontsize" : 10.0,
					"text" : "Join",
					"outlettype" : [ "int", "", "int" ],
					"patching_rect" : [ 408.0, 477.0, 44.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-1",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 106.0, 462.0, 53.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-2",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 238.0, 500.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t clear",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-3",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "clear" ],
					"patching_rect" : [ 13.0, 503.0, 48.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel null",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-4",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 224.0, 479.0, 44.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "null",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-5",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 133.0, 366.0, 26.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel bang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-6",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 133.0, 344.0, 50.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-7",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 133.0, 279.0, 30.0, 18.0 ],
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
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "clear" ],
									"patching_rect" : [ 24.0, 119.0, 49.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel bang",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-2",
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 76.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-3",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 86.0, 120.0, 68.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-4",
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"patching_rect" : [ 86.0, 100.0, 54.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"id" : "obj-5",
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 50.0, 58.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
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
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
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
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-8",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 4.0, 418.0, 380.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-9",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 169.0, 364.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-10",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 133.0, 324.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-11",
					"keymode" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 162.0, 128.0, 88.0, 18.0 ],
					"fontsize" : 10.0,
					"lines" : 1,
					"outlettype" : [ "", "int", "" ],
					"patching_rect" : [ 134.0, 301.0, 88.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "osc prefix",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-12",
					"numoutlets" : 0,
					"presentation_rect" : [ 105.0, 128.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 103.0, 126.0, 57.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-13",
					"keymode" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 162.0, 27.0, 88.0, 18.0 ],
					"fontsize" : 10.0,
					"lines" : 1,
					"outlettype" : [ "", "int", "" ],
					"patching_rect" : [ 131.0, 257.0, 88.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "osc prefix",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-14",
					"numoutlets" : 0,
					"presentation_rect" : [ 106.0, 27.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 103.0, 27.0, 57.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multicast_port[1]",
					"text" : "jcom.parameter multicast_port @type msg_int @range/clipmode none @description \"Set the network port number used for sending out multicast OpenSoundControl messages.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-16",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 408.0, 415.0, 456.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "multicast_port",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-17",
					"numoutlets" : 2,
					"presentation_rect" : [ 52.0, 128.0, 35.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 408.0, 392.0, 35.0, 19.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "port",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-18",
					"numoutlets" : 0,
					"presentation_rect" : [ 22.0, 128.0, 29.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 22.0, 126.0, 29.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multicast_join[1]",
					"text" : "jcom.parameter multicast_join @type msg_int @range/clipmode none @description \"Set the network port number on which to receive OpenSoundControl messages.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-20",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 408.0, 496.0, 429.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multicast_ip",
					"text" : "jcom.parameter multicast_ip @type msg_symbol @repetitions/allow 0 @description \"Define the multicast host to for OpenSoundControl messages to which you would like to join.  This may be symbolic or an ip address.\"",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-21",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 381.0, 316.0, 323.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-22",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 381.0, 296.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-23",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 381.0, 276.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multicast address",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-25",
					"numoutlets" : 0,
					"presentation_rect" : [ 22.0, 149.0, 97.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 22.0, 144.0, 97.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "127.0.0.1",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-26",
					"keymode" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 162.0, 149.0, 112.0, 18.0 ],
					"fontsize" : 10.0,
					"lines" : 1,
					"outlettype" : [ "", "int", "" ],
					"patching_rect" : [ 259.0, 310.0, 112.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-27",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 796.0, 80.0, 64.0, 18.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "offset 0 -120",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-28",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 873.0, 55.0, 73.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "offset 0 -19",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"id" : "obj-29",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 796.0, 55.0, 67.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-30",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 796.0, 33.0, 165.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"hidden" : 1,
					"id" : "obj-31",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 796.0, 12.0, 15.0, 15.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "send_host",
					"text" : "jcom.parameter send_host @type msg_symbol @repetitions/allow 0 @description \"Set the host to which OpenSoundControl messages should be sent.  This may be symbolic or an ip address.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-32",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 367.0, 41.0, 343.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-33",
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"patching_rect" : [ 367.0, 21.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-34",
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 367.0, 1.0, 58.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "port_out",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 2,
					"presentation_rect" : [ 71.0, 48.0, 35.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 381.0, 209.0, 35.0, 19.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "port_in",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"id" : "obj-36",
					"numoutlets" : 2,
					"presentation_rect" : [ 71.0, 27.0, 35.0, 19.0 ],
					"triangle" : 0,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 370.0, 123.0, 35.0, 19.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "127.0.0.1",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"id" : "obj-37",
					"keymode" : 1,
					"numoutlets" : 3,
					"presentation_rect" : [ 162.0, 48.0, 112.0, 18.0 ],
					"fontsize" : 10.0,
					"lines" : 1,
					"outlettype" : [ "", "int", "" ],
					"patching_rect" : [ 247.0, 12.0, 112.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send port",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-38",
					"numoutlets" : 0,
					"presentation_rect" : [ 17.0, 48.0, 56.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 18.0, 44.0, 56.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "send_port",
					"text" : "jcom.parameter send_port @type msg_int @range/clipmode none @description \"Set the network port number used for sending out OpenSoundControl messages.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-40",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 381.0, 233.0, 421.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "receive port",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-41",
					"numoutlets" : 0,
					"presentation_rect" : [ 4.0, 27.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 4.0, 27.0, 68.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "receive_port",
					"text" : "jcom.parameter receive_port @type msg_int @range/clipmode none @description \"Set the network port number on which to receive OpenSoundControl messages.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-43",
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 369.0, 147.0, 422.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send host",
					"presentation" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-45",
					"numoutlets" : 0,
					"presentation_rect" : [ 107.0, 48.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 107.0, 44.0, 57.0, 19.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 378.5, 181.0, 354.0, 181.0, 354.0, 120.0, 379.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 390.5, 264.0, 366.0, 264.0, 366.0, 204.0, 390.5, 204.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 417.5, 447.0, 405.0, 447.0, 405.0, 387.0, 417.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 417.5, 528.0, 393.0, 528.0, 393.0, 474.0, 417.5, 474.0 ]
				}

			}
 ]
	}

}
