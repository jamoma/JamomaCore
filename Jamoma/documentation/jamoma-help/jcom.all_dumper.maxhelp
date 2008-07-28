{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 94.0, 45.0, 828.0, 423.0 ],
		"bglocked" : 0,
		"defrect" : [ 94.0, 45.0, 828.0, 423.0 ],
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
					"text" : "set",
					"patching_rect" : [ 980.0, 415.0, 35.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "presentation_rect 354 85 $1 $2",
					"linecount" : 2,
					"patching_rect" : [ 960.0, 170.0, 113.0, 31.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-46",
					"fontname" : "Verdana",
					"fontsize" : 10.970939
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"patching_rect" : [ 980.0, 5.0, 100.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"fontsize" : 10.970939
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "returns :",
					"patching_rect" : [ 755.0, 315.0, 55.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"presentation_rect" : [ 680.0, 140.0, 84.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "messages :",
					"patching_rect" : [ 555.0, 315.0, 68.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"presentation_rect" : [ 520.0, 140.0, 84.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "parameters :",
					"patching_rect" : [ 390.0, 315.0, 76.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"presentation_rect" : [ 360.0, 140.0, 84.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "modules",
					"patching_rect" : [ 498.0, 121.0, 53.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"presentation_rect" : [ 505.0, 85.0, 84.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"patching_rect" : [ 980.0, 85.0, 35.0, 17.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out",
					"patching_rect" : [ 354.0, 121.0, 91.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"items" : [ "/sur.speaker", ",", "/limiter", ",", "/control", ",", "/mouse", ",", "/speaker_setup" ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"presentation_rect" : [ 354.0, 85.0, 91.0, 19.0 ],
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~/2",
					"patching_rect" : [ 32.0, 396.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"presentation" : 1,
					"name" : "jmod.limiter~.maxpat",
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-2",
					"presentation_rect" : [ 35.0, 330.0, 300.0, 70.0 ],
					"args" : [ "/limiter.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "control",
					"patching_rect" : [ 32.0, 173.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"name" : "jmod.control.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"presentation_rect" : [ 33.0, 179.0, 150.0, 70.0 ],
					"args" : [ "/control" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mouse/1",
					"patching_rect" : [ 32.0, 247.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"name" : "jmod.mouse.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"presentation_rect" : [ 186.0, 179.0, 150.0, 70.0 ],
					"args" : [ "/mouse" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~/1",
					"patching_rect" : [ 32.0, 322.0, 300.0, 70.0 ],
					"numinlets" : 3,
					"presentation" : 1,
					"name" : "jmod.limiter~.maxpat",
					"numoutlets" : 3,
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-5",
					"presentation_rect" : [ 35.0, 256.0, 300.0, 70.0 ],
					"args" : [ "/limiter.1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "can be used for namespace discovery",
					"patching_rect" : [ 35.0, 110.0, 232.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"presentation_rect" : [ 35.0, 110.0, 232.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(according to the JIG, the instance number should be indicated in the form \".n\")",
					"linecount" : 2,
					"patching_rect" : [ 565.0, 85.0, 246.0, 31.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"presentation_rect" : [ 360.0, 60.0, 415.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t s set",
					"patching_rect" : [ 780.0, 365.0, 60.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "set" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t s set",
					"patching_rect" : [ 615.0, 365.0, 60.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "set" ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p format",
					"patching_rect" : [ 355.0, 430.0, 55.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 205.0, 198.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 205.0, 198.0 ],
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
									"maxclass" : "button",
									"patching_rect" : [ 31.0, 51.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "append \\;",
									"patching_rect" : [ 31.0, 69.0, 58.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"patching_rect" : [ 90.0, 70.0, 90.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 31.0, 102.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 31.0, 31.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 40.0, 48.0, 99.5, 48.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 99.5, 92.0, 40.0, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 40.5, 92.0, 40.0, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t s set",
					"patching_rect" : [ 455.0, 365.0, 62.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "set" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"patching_rect" : [ 735.0, 269.0, 90.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"patching_rect" : [ 560.0, 269.0, 90.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"patching_rect" : [ 390.0, 269.0, 90.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/description \"Position of 14th voice as xyz coodinate.\";\r/value 1.2;\r/type msg_list;\r/ramp/drive none;\r/ramp/function linear;\r/range/bounds 0. 1.;\r/range/clipmode none;\r/repetitions/allow 1;\r/dataspace none;\r/dataspace/unit/native none;\r/dataspace/unit/active none;\r/ui/freeze 0;\r/priority 4;\r",
					"linecount" : 13,
					"presentation_linecount" : 13,
					"patching_rect" : [ 355.0, 475.0, 289.0, 162.0 ],
					"numinlets" : 2,
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"presentation_rect" : [ 355.0, 225.0, 289.0, 162.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.attributes_dumper",
					"patching_rect" : [ 675.0, 395.0, 149.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.attributes_dumper",
					"patching_rect" : [ 514.0, 395.0, 149.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 705.0, 335.0, 120.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"items" : [ "audio/amplitude.1", ",", "audio/amplitude.2" ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"presentation_rect" : [ 670.0, 160.0, 120.0, 19.0 ],
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 535.0, 335.0, 120.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"items" : [ "documentation/generate", ",", "init", ",", "module/view_internals", ",", "panel/open", ",", "preset/clear", ",", "preset/copy", ",", "preset/default", ",", "preset/dump", ",", "preset/interpolate", ",", "preset/post", ",", "preset/read", ",", "preset/recall", ",", "preset/store", ",", "preset/storenext", ",", "preset/write", ",", "ui/refresh" ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"presentation_rect" : [ 515.0, 158.0, 120.0, 19.0 ],
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 370.0, 335.0, 125.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"items" : [ "audio/bypass", ",", "audio/gain", ",", "audio/mix", ",", "audio/mute", ",", "lookahead", ",", "mode", ",", "postamp", ",", "preamp", ",", "release", ",", "threshold", ",", "ui/freeze" ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"presentation_rect" : [ 355.0, 160.0, 125.0, 19.0 ],
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 454.0, 121.0, 37.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 2,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"presentation_rect" : [ 459.0, 85.0, 37.0, 19.0 ],
					"maximum" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 442.0, 121.0, 13.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"items" : ".",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"presentation_rect" : [ 446.0, 85.0, 13.0, 19.0 ],
					"arrow" : 0,
					"types" : [  ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"patching_rect" : [ 355.0, 90.0, 90.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.modules_dumper",
					"patching_rect" : [ 355.0, 65.0, 196.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "clear" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.returns_dumper",
					"patching_rect" : [ 735.0, 235.0, 135.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.messages_dumper",
					"patching_rect" : [ 560.0, 235.0, 142.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameters_dumper",
					"patching_rect" : [ 390.0, 235.0, 152.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.attributes_dumper",
					"patching_rect" : [ 355.0, 395.0, 149.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "put some modules to have a namespace :",
					"patching_rect" : [ 34.0, 155.0, 236.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"presentation_rect" : [ 34.0, 155.0, 236.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.all_dumper",
					"patching_rect" : [ 37.0, 41.0, 251.0, 28.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"presentation_rect" : [ 37.0, 41.0, 251.0, 28.0 ],
					"fontsize" : 17.553501
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "utilities to analyze the whole Jamoma namespace",
					"patching_rect" : [ 38.0, 71.0, 295.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"presentation_rect" : [ 38.0, 71.0, 295.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 31.0, 29.0, 298.0, 65.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"id" : "obj-34",
					"presentation_rect" : [ 31.0, 29.0, 298.0, 65.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p instances",
					"patching_rect" : [ 875.0, 145.0, 104.0, 19.0 ],
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "clear", "" ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 498.0, 367.0, 480.0, 416.0 ],
						"bglocked" : 0,
						"defrect" : [ 498.0, 367.0, 480.0, 416.0 ],
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
									"maxclass" : "outlet",
									"patching_rect" : [ 413.0, 183.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p script",
									"patching_rect" : [ 413.0, 158.0, 46.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 142.0, 607.0, 496.0, 199.0 ],
										"bglocked" : 0,
										"defrect" : [ 142.0, 607.0, 496.0, 199.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"patching_rect" : [ 69.0, 45.0, 54.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"id" : "obj-1",
													"fontname" : "Verdana",
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "91 19",
													"patching_rect" : [ 218.0, 63.0, 234.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontname" : "Verdana",
													"fontsize" : 10.0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"id" : "obj-4",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"id" : "obj-5",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "142 19",
													"patching_rect" : [ 28.0, 67.0, 161.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"fontname" : "Verdana",
													"fontsize" : 10.0
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 227.5, 100.0, 37.0, 100.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"fontname" : "Verdana",
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 10.0,
										"fontface" : 0,
										"fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"patching_rect" : [ 413.0, 131.0, 44.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 401.0, 325.0, 16.0, 16.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"comment" : "connect to menus to clear them when a new module is chosen"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s clear",
									"patching_rect" : [ 14.0, 301.0, 397.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "clear" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"patching_rect" : [ 302.0, 232.0, 68.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess -1",
									"patching_rect" : [ 220.0, 105.0, 70.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"patching_rect" : [ 302.0, 130.0, 39.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"patching_rect" : [ 190.0, 127.0, 45.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 302.0, 265.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-10",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend max",
									"patching_rect" : [ 331.0, 200.0, 75.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"patching_rect" : [ 331.0, 174.0, 25.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"patching_rect" : [ 14.0, 202.0, 96.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"patching_rect" : [ 190.0, 58.0, 89.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_instances 1",
									"patching_rect" : [ 190.0, 80.0, 162.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"fontsize" : 10.0,
									"save" : [ "#N", "coll", "jcom.modules_instances", 1, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "switch 2 1",
									"patching_rect" : [ 14.0, 281.0, 96.0, 19.0 ],
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"patching_rect" : [ 190.0, 152.0, 27.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s",
									"patching_rect" : [ 14.0, 237.0, 60.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"patching_rect" : [ 134.0, 202.0, 42.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "> 0",
									"patching_rect" : [ 190.0, 105.0, 27.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s.%s",
									"patching_rect" : [ 100.0, 236.0, 80.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 134.0, 184.0, 13.0, 13.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"id" : "obj-22",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 b",
									"patching_rect" : [ 302.0, 153.0, 39.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 14.0, 326.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-24",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 100.0, 24.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.5, 125.0, 422.5, 125.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 199.5, 101.0, 346.5, 101.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 340.5, 255.0, 311.0, 255.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.5, 125.0, 311.5, 125.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 229.5, 124.0, 199.5, 124.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [ 311.5, 225.0, 170.5, 225.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-16", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.5, 270.0, 23.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "also analyzes the number of instantiated modules of the same type",
					"linecount" : 2,
					"patching_rect" : [ 565.0, 55.0, 243.0, 31.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"presentation_rect" : [ 360.0, 40.0, 350.0, 19.0 ],
					"fontsize" : 10.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 541.5, 115.0, 363.5, 115.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 989.5, 459.0, 364.5, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 765.0, 360.0, 789.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 2 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 941.166687, 193.0, 714.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 884.5, 167.0, 744.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 595.0, 360.0, 624.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 2 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 941.166687, 214.0, 544.5, 214.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 884.5, 167.0, 569.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 144.0, 850.0, 144.0, 850.0, 136.0, 969.5, 136.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 912.833313, 180.0, 492.0, 180.0, 492.0, 117.0, 463.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 399.5, 149.0, 857.0, 149.0, 857.0, 142.0, 884.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 830.5, 459.0, 364.5, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 665.5, 459.0, 364.5, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 507.5, 459.0, 364.5, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 432.5, 360.0, 464.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 2 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 941.166687, 193.0, 379.5, 193.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 884.5, 167.0, 399.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 989.5, 115.0, 561.0, 115.0, 561.0, 115.0, 447.0, 115.0, 447.0, 114.0, 363.5, 114.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 989.5, 297.0, 379.5, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 989.5, 297.0, 544.5, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 989.5, 297.0, 714.5, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 989.5, 30.0, 989.5, 42.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [ 884.5, 297.0, 517.0, 297.0, 517.0, 390.0, 494.5, 390.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 884.5, 167.0, 364.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 464.5, 388.0, 364.5, 388.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [ 884.5, 297.0, 677.0, 297.0, 677.0, 387.0, 653.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 884.5, 167.0, 523.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 624.5, 388.0, 523.5, 388.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 523.5, 420.0, 364.5, 420.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 884.5, 390.0, 814.5, 390.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 884.5, 167.0, 684.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 789.5, 387.0, 684.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 684.5, 421.0, 364.5, 421.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 3 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 969.5, 210.0, 1091.0, 210.0, 1091.0, 76.0, 559.0, 76.0, 559.0, 116.0, 363.5, 116.0 ]
				}

			}
 ]
	}

}
