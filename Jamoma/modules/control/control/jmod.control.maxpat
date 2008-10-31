{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 608.0, 73.0, 1280.0, 726.0 ],
		"bglocked" : 0,
		"defrect" : [ 608.0, 73.0, 1280.0, 726.0 ],
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
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"linecount" : 2,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-4",
					"patching_rect" : [ 120.0, 135.0, 139.0, 29.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "DSP_Status",
					"numinlets" : 1,
					"texton" : "DSP",
					"numoutlets" : 3,
					"id" : "obj-82",
					"patching_rect" : [ 320.0, 206.0, 50.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "DSP Status",
					"fontname" : "Verdana",
					"presentation_rect" : [ 2.0, 46.0, 80.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message dspStatus @type msg_none @description \"Open DSP Status window.\"",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-24",
					"patching_rect" : [ 320.0, 225.0, 440.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP settings",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-39",
					"patching_rect" : [ 320.0, 185.0, 185.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"textcolor" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "CPU",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-20",
					"patching_rect" : [ 186.0, 316.0, 33.0, 19.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 91.0, 0.0, 33.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "audio",
					"numinlets" : 1,
					"texton" : "Audio (On)",
					"numoutlets" : 3,
					"id" : "obj-26",
					"patching_rect" : [ 318.0, 51.0, 82.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "int" ],
					"mode" : 1,
					"text" : "Audio (Off)",
					"fontname" : "Verdana",
					"presentation_rect" : [ 2.0, 22.0, 80.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"patching_rect" : [ 90.0, 255.0, 46.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-2",
					"patching_rect" : [ 120.0, 95.0, 137.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return cpu @enable 0 @description \"reports the cpu usage of the dsp processing\"",
					"linecount" : 3,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-3",
					"patching_rect" : [ 91.0, 342.0, 184.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r #0_xxx_audio",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"patching_rect" : [ 406.0, 51.0, 89.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p Control_Components",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-11",
					"patching_rect" : [ 91.0, 284.0, 124.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t open",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-31",
									"patching_rect" : [ 440.0, 70.0, 43.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "open" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dac~ 1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-30",
									"patching_rect" : [ 440.0, 95.0, 46.0, 19.0 ],
									"fontsize" : 10.0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-1",
									"patching_rect" : [ 185.0, 189.0, 30.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"patching_rect" : [ 247.0, 217.0, 22.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-3",
									"patching_rect" : [ 376.0, 77.0, 32.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "bang" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 l",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-4",
									"patching_rect" : [ 185.0, 274.0, 31.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-5",
									"patching_rect" : [ 165.0, 300.0, 50.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i 0",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-6",
									"patching_rect" : [ 185.0, 72.0, 31.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /audio /panic /dspStatus",
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-7",
									"patching_rect" : [ 185.0, 45.0, 401.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 15",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-8",
									"patching_rect" : [ 247.0, 157.0, 40.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_xxx_audio",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-9",
									"patching_rect" : [ 165.0, 357.0, 92.0, 19.0 ],
									"fontsize" : 10.0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route set",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-10",
									"patching_rect" : [ 165.0, 333.0, 54.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-11",
									"patching_rect" : [ 247.0, 191.0, 30.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jcom.audio.off",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-12",
									"patching_rect" : [ 289.0, 157.0, 89.0, 19.0 ],
									"fontsize" : 10.0,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus switch",
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-13",
									"patching_rect" : [ 185.0, 241.0, 87.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 stop",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-14",
									"patching_rect" : [ 185.0, 129.0, 47.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int", "stop" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-15",
									"patching_rect" : [ 185.0, 108.0, 134.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Panic kill audio instantly",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-17",
									"patching_rect" : [ 425.0, 231.0, 134.0, 19.0 ],
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio off is delayed briefly for a quick fade out.",
									"linecount" : 2,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-18",
									"patching_rect" : [ 425.0, 184.0, 146.0, 31.0 ],
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Smootth fade in when audio is turned on (this is handled in the audio modules).",
									"linecount" : 3,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-19",
									"patching_rect" : [ 425.0, 125.0, 154.0, 43.0 ],
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-22",
									"patching_rect" : [ 35.0, 440.0, 28.0, 28.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-24",
									"patching_rect" : [ 185.0, 5.0, 28.0, 28.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-25",
									"patching_rect" : [ 35.0, 360.0, 59.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int", "float", "int", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qmetro 250",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-26",
									"patching_rect" : [ 35.0, 385.0, 67.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "bang" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus cpu",
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-27",
									"patching_rect" : [ 35.0, 410.0, 73.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "int" ],
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This gate prevents audio from being turned on or of twice if audio state is changed using the Audio button or an /audio message.",
									"linecount" : 3,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-28",
									"patching_rect" : [ 223.0, 278.0, 238.0, 43.0 ],
									"fontsize" : 10.0,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
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
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Verdana",
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
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-12",
					"patching_rect" : [ 25.0, 180.0, 220.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "audio[1]",
					"text" : "jcom.parameter audio @type msg_toggle @description \"Toggle audio on and off.\"",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-13",
					"patching_rect" : [ 318.0, 77.0, 422.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter",
					"text" : "jcom.message panic @description \"Stop audio immediately.\"",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-14",
					"patching_rect" : [ 320.0, 145.0, 316.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-15",
					"patching_rect" : [ 25.0, 230.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-16",
					"patching_rect" : [ 25.0, 80.0, 26.0, 26.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "cpu",
					"numinlets" : 1,
					"ghostbar" : 30,
					"ignoreclick" : 1,
					"numoutlets" : 2,
					"id" : "obj-19",
					"patching_rect" : [ 110.0, 315.0, 75.0, 13.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"orientation" : 0,
					"setminmax" : [ 0.0, 100.0 ],
					"presentation_rect" : [ 86.0, 3.0, 54.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "Panic",
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-25",
					"patching_rect" : [ 320.0, 122.0, 70.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "int" ],
					"text" : "Panic!",
					"fontname" : "Verdana",
					"presentation_rect" : [ 84.0, 22.0, 63.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameters",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-27",
					"patching_rect" : [ 318.0, 24.0, 101.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-29",
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"background" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
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
 ]
	}

}
