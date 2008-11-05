{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 44.0, 44.0, 1280.0, 726.0 ],
		"bglocked" : 0,
		"defrect" : [ 44.0, 44.0, 1280.0, 726.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set CPU: $1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.0, 296.0, 76.0, 18.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.970939
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 135.0, 139.0, 29.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "DSP_Status",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 2.0, 46.0, 80.0, 21.0 ],
					"patching_rect" : [ 320.0, 206.0, 50.0, 17.0 ],
					"presentation" : 1,
					"id" : "obj-82",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"text" : "DSP Status",
					"numoutlets" : 3,
					"texton" : "DSP",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dspStatus @type msg_none @description \"Open DSP Status window.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 320.0, 225.0, 440.0, 19.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP settings",
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"patching_rect" : [ 320.0, 185.0, 185.0, 19.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "CPU: 0",
					"presentation_rect" : [ 100.0, 0.0, 54.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 258.0, 318.0, 57.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "audio",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 2.0, 22.0, 80.0, 21.0 ],
					"patching_rect" : [ 318.0, 51.0, 82.0, 20.0 ],
					"mode" : 1,
					"presentation" : 1,
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"text" : "Audio (Off)",
					"numoutlets" : 3,
					"texton" : "Audio (On)",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 255.0, 46.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 95.0, 137.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return cpu @enable 0 @description \"reports the cpu usage of the dsp processing\"",
					"linecount" : 3,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 91.0, 342.0, 184.0, 43.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_audio",
					"outlettype" : [ "" ],
					"patching_rect" : [ 406.0, 51.0, 89.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Control_Components",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 91.0, 284.0, 124.0, 19.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0,
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
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.stats 50 50",
									"outlettype" : [ "int", "float", "float", "float", "float", "" ],
									"patching_rect" : [ 35.0, 435.0, 95.0, 19.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 6,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t open",
									"outlettype" : [ "open" ],
									"patching_rect" : [ 440.0, 70.0, 43.0, 19.0 ],
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dac~ 1",
									"patching_rect" : [ 440.0, 95.0, 46.0, 19.0 ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"outlettype" : [ "" ],
									"patching_rect" : [ 185.0, 189.0, 30.0, 19.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 247.0, 217.0, 22.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 376.0, 77.0, 32.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l",
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 185.0, 274.0, 31.0, 19.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 165.0, 300.0, 50.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i 0",
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 185.0, 72.0, 31.0, 19.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /audio /panic /dspStatus",
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 185.0, 45.0, 401.0, 19.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 15",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 247.0, 157.0, 40.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_audio",
									"patching_rect" : [ 165.0, 357.0, 92.0, 19.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 165.0, 333.0, 54.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"outlettype" : [ "" ],
									"patching_rect" : [ 247.0, 191.0, 30.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jcom.audio.off",
									"patching_rect" : [ 289.0, 157.0, 89.0, 19.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus switch",
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 185.0, 241.0, 87.0, 19.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 stop",
									"outlettype" : [ "int", "stop" ],
									"patching_rect" : [ 185.0, 129.0, 47.0, 19.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 185.0, 108.0, 134.0, 19.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Panic kill audio instantly",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 425.0, 231.0, 134.0, 19.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio off is delayed briefly for a quick fade out.",
									"linecount" : 2,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 425.0, 184.0, 146.0, 31.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Smootth fade in when audio is turned on (this is handled in the audio modules).",
									"linecount" : 3,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 425.0, 125.0, 154.0, 43.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 35.0, 470.0, 28.0, 28.0 ],
									"id" : "obj-22",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"patching_rect" : [ 185.0, 5.0, 28.0, 28.0 ],
									"id" : "obj-24",
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"outlettype" : [ "int", "float", "int", "int" ],
									"patching_rect" : [ 35.0, 360.0, 59.0, 19.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 250",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 35.0, 385.0, 67.0, 19.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus cpu",
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 35.0, 410.0, 73.0, 19.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This gate prevents audio from being turned on or of twice if audio state is changed using the Audio button or an /audio message.",
									"linecount" : 3,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 223.0, 278.0, 238.0, 43.0 ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 3 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.099998, 460.0, 44.5, 460.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-31", 0 ],
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
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 0 ],
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
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 206.5, 98.0, 174.5, 98.0 ]
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
									"midpoints" : [ 398.5, 182.0, 256.5, 182.0 ]
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
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Master control module for the Jamoma environment\"",
					"linecount" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 25.0, 180.0, 220.0, 31.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio[1]",
					"text" : "jcom.parameter audio @type msg_toggle @description \"Toggle audio on and off.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 318.0, 77.0, 422.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter",
					"text" : "jcom.message panic @description \"Stop audio immediately.\"",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 320.0, 145.0, 316.0, 19.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 25.0, 230.0, 26.0, 26.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 80.0, 26.0, 26.0 ],
					"id" : "obj-16",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "cpu",
					"outlettype" : [ "", "" ],
					"ghostbar" : 30,
					"presentation_rect" : [ 86.0, 3.0, 61.0, 13.0 ],
					"ignoreclick" : 1,
					"setminmax" : [ 0.0, 100.0 ],
					"patching_rect" : [ 110.0, 315.0, 75.0, 13.0 ],
					"presentation" : 1,
					"id" : "obj-19",
					"numinlets" : 1,
					"orientation" : 0,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Panic",
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 84.0, 22.0, 63.0, 45.0 ],
					"patching_rect" : [ 320.0, 122.0, 70.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"text" : "Panic!",
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameters",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 318.0, 24.0, 101.0, 19.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"bgcolor" : [ 0.93, 0.93, 0.93, 1.0 ],
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"id" : "obj-29",
					"numinlets" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"headercolor" : [ 0.82, 0.82, 0.82, 1.0 ],
					"numoutlets" : 1,
					"background" : 1,
					"bordercolor" : [ 0.6, 0.6, 0.6, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
