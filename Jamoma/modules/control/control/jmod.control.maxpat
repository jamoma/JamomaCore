{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 1280.0, 726.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 1280.0, 726.0 ],
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
					"maxclass" : "comment",
					"text" : "CPU",
					"id" : "obj-20",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 186.0, 316.0, 33.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 91.0, 0.0, 33.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "audio",
					"id" : "obj-26",
					"fontsize" : 10.0,
					"mode" : 1,
					"texton" : "Audio (On)",
					"patching_rect" : [ 318.0, 51.0, 82.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"text" : "Audio (Off)",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 2.0, 22.0, 80.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-1",
					"fontsize" : 10.0,
					"patching_rect" : [ 91.0, 205.0, 46.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-2",
					"fontsize" : 10.0,
					"patching_rect" : [ 47.0, 107.0, 137.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return cpu @enable 0 @description \"reports the cpu usage of the dsp processing\"",
					"linecount" : 3,
					"id" : "obj-3",
					"fontsize" : 10.0,
					"patching_rect" : [ 91.0, 342.0, 184.0, 43.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-5",
					"fontsize" : 10.0,
					"patching_rect" : [ 91.0, 253.0, 49.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"id" : "obj-6",
					"fontsize" : 10.0,
					"patching_rect" : [ 91.0, 229.0, 87.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_audio",
					"id" : "obj-8",
					"fontsize" : 10.0,
					"patching_rect" : [ 406.0, 51.0, 89.0, 19.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[2]",
					"text" : "jcom.message init @description \"Initialize all Jamoma modules.\"",
					"id" : "obj-10",
					"fontsize" : 10.0,
					"patching_rect" : [ 318.0, 361.0, 334.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Control_Components",
					"id" : "obj-11",
					"fontsize" : 10.0,
					"patching_rect" : [ 91.0, 284.0, 124.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 178.0, 191.0, 794.0, 593.0 ],
						"bglocked" : 0,
						"defrect" : [ 178.0, 191.0, 794.0, 593.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"patching_rect" : [ 299.0, 218.0, 30.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"patching_rect" : [ 361.0, 246.0, 22.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"patching_rect" : [ 490.0, 106.0, 32.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l",
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"patching_rect" : [ 299.0, 303.0, 29.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"patching_rect" : [ 279.0, 329.0, 50.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i 0",
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"patching_rect" : [ 299.0, 101.0, 29.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /init /audio /panic",
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"patching_rect" : [ 184.0, 29.0, 457.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 15",
									"id" : "obj-8",
									"fontsize" : 9.873845,
									"patching_rect" : [ 361.0, 186.0, 39.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_audio",
									"id" : "obj-9",
									"fontsize" : 9.873845,
									"patching_rect" : [ 279.0, 386.0, 89.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"id" : "obj-10",
									"fontsize" : 9.873845,
									"patching_rect" : [ 279.0, 362.0, 53.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"id" : "obj-11",
									"fontsize" : 9.873845,
									"patching_rect" : [ 361.0, 220.0, 30.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jcom.audio.off",
									"id" : "obj-12",
									"fontsize" : 9.873845,
									"patching_rect" : [ 403.0, 186.0, 88.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus switch",
									"id" : "obj-13",
									"fontsize" : 9.873845,
									"patching_rect" : [ 299.0, 270.0, 86.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 stop",
									"id" : "obj-14",
									"fontsize" : 9.873845,
									"patching_rect" : [ 299.0, 158.0, 47.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "stop" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"id" : "obj-15",
									"fontsize" : 9.873845,
									"patching_rect" : [ 299.0, 137.0, 134.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Panic kill audio instantly",
									"id" : "obj-17",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 539.0, 260.0, 131.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio off is delayed briefly for a quick fade out.",
									"linecount" : 2,
									"id" : "obj-18",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 539.0, 213.0, 144.0, 30.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Smootth fade in when audio is turned on (this is handled in the audio modules).",
									"linecount" : 3,
									"id" : "obj-19",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 539.0, 154.0, 152.0, 42.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rjcom.init bang",
									"linecount" : 2,
									"id" : "obj-21",
									"fontsize" : 9.873845,
									"patching_rect" : [ 184.0, 62.0, 80.0, 28.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-22",
									"patching_rect" : [ 37.0, 447.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-24",
									"patching_rect" : [ 185.0, 8.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"id" : "obj-25",
									"fontsize" : 9.873845,
									"patching_rect" : [ 37.0, 368.0, 59.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "float", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 250",
									"id" : "obj-26",
									"fontsize" : 9.873845,
									"patching_rect" : [ 37.0, 389.0, 67.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus cpu",
									"id" : "obj-27",
									"fontsize" : 9.873845,
									"patching_rect" : [ 37.0, 415.0, 72.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This gate prevents audio from being turned on or of twice if audio state is changed using the Audio button or an /audio message.",
									"linecount" : 3,
									"id" : "obj-28",
									"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 337.0, 307.0, 235.0, 42.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 318.5, 127.0, 288.5, 127.0 ]
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 512.5, 211.0, 370.5, 211.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-12", 0 ],
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
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Master control module for the Jamoma environment\"",
					"id" : "obj-12",
					"fontsize" : 10.0,
					"patching_rect" : [ 24.0, 132.0, 468.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio[1]",
					"text" : "jcom.parameter audio @type msg_toggle @description \"Toggle audio on and off.\"",
					"id" : "obj-13",
					"fontsize" : 10.0,
					"patching_rect" : [ 318.0, 77.0, 422.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter",
					"text" : "jcom.message panic @description \"Stop audio immediately.\"",
					"id" : "obj-14",
					"fontsize" : 10.0,
					"patching_rect" : [ 318.0, 301.0, 316.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-15",
					"patching_rect" : [ 24.0, 174.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-16",
					"patching_rect" : [ 24.0, 107.0, 15.0, 15.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "cpu",
					"ghostbar" : 30,
					"id" : "obj-19",
					"patching_rect" : [ 110.0, 315.0, 75.0, 13.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"orientation" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"ignoreclick" : 1,
					"presentation_rect" : [ 86.0, 3.0, 54.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Init",
					"id" : "obj-24",
					"fontsize" : 10.0,
					"patching_rect" : [ 318.0, 336.0, 82.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"text" : "Init",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 2.0, 46.0, 80.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Panic",
					"id" : "obj-25",
					"fontsize" : 10.0,
					"patching_rect" : [ 318.0, 278.0, 70.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"text" : "Panic!",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 84.0, 22.0, 63.0, 45.28125 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameters",
					"id" : "obj-27",
					"frgb" : [ 1.0, 0.984314, 0.929412, 1.0 ],
					"fontsize" : 10.0,
					"patching_rect" : [ 318.0, 24.0, 101.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-29",
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"background" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 327.5, 96.0, 315.0, 96.0, 315.0, 45.0, 327.5, 45.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 168.5, 278.0, 100.5, 278.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 73.0, 327.5, 73.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
