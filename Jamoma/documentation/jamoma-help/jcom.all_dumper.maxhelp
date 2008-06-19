{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 172.0, 189.0, 1232.0, 707.0 ],
		"bglocked" : 0,
		"defrect" : [ 172.0, 189.0, 1232.0, 707.0 ],
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
					"fontname" : "Verdana",
					"id" : "obj-38",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 980.0, 415.0, 35.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "presentation_rect 354 121 $1 $2",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-46",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 960.0, 170.0, 113.0, 31.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"id" : "obj-45",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 980.0, 5.0, 100.0, 20.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "returns :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 680.0, 195.0, 84.0, 19.0 ],
					"id" : "obj-44",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 755.0, 315.0, 55.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "messages :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 520.0, 195.0, 84.0, 19.0 ],
					"id" : "obj-43",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 555.0, 315.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "parameters :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 360.0, 195.0, 84.0, 19.0 ],
					"id" : "obj-42",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 390.0, 315.0, 76.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "modules",
					"fontname" : "Verdana",
					"presentation_rect" : [ 500.0, 120.0, 84.0, 19.0 ],
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 498.0, 121.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 980.0, 85.0, 35.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out",
					"fontname" : "Verdana",
					"presentation_rect" : [ 354.0, 121.0, 138.0, 19.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 354.0, 121.0, 91.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "/input", ",", "/output", ",", "/control", ",", "/echo", ",", "/limiter", ",", "/mouse", ",", "/limiter.2", ",", "/limiter.1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~/2",
					"presentation_rect" : [ 32.0, 396.0, 303.0, 73.0 ],
					"id" : "obj-2",
					"numinlets" : 3,
					"name" : "jmod.limiter~.maxpat",
					"numoutlets" : 3,
					"patching_rect" : [ 32.0, 396.0, 303.0, 73.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "control",
					"presentation_rect" : [ 32.0, 173.0, 149.0, 72.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"name" : "jmod.control.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 32.0, 173.0, 149.0, 72.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/control" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mouse/1",
					"presentation_rect" : [ 32.0, 247.0, 300.0, 73.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"name" : "jmod.mouse.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 32.0, 247.0, 300.0, 73.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"args" : [ "/mouse" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/limiter~/1",
					"presentation_rect" : [ 32.0, 322.0, 303.0, 73.0 ],
					"id" : "obj-5",
					"numinlets" : 3,
					"name" : "jmod.limiter~.maxpat",
					"numoutlets" : 3,
					"patching_rect" : [ 32.0, 322.0, 303.0, 73.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/limiter.1" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "can be used for namespace discovery",
					"fontname" : "Verdana",
					"presentation_rect" : [ 35.0, 110.0, 232.0, 19.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 35.0, 110.0, 232.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(according to the JIG, the instance number should be indicated in the form \".n\")",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 565.0, 85.0, 246.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t s set",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 780.0, 365.0, 60.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "set" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t s set",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 615.0, 365.0, 60.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "set" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p format",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 355.0, 430.0, 55.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
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
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 31.0, 51.0, 15.0, 15.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "append \\;",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 31.0, 69.0, 58.0, 17.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 90.0, 70.0, 90.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 102.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 31.0, 31.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
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
					"text" : "t s set",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 455.0, 365.0, 62.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "set" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 735.0, 269.0, 90.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 560.0, 269.0, 90.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 390.0, 269.0, 90.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"description \\\"Store a preset by number in memory.  All presets present in memory will be written to disk when you send a save_settings message to the module.\\\"\";\r\"value 3\";\r\"type msg_list\";\r\"ramp/drive none\";\r\"ramp/function linear\";\r\"range/bounds 0. 1.\";\r\"range/clipmode none\";\r\"repetitions 1\";\r\"dataspace none\";\r\"dataspace/unit/native none\";\r\"dataspace/unit/active none\";\r\"ui/freeze 0\";\r\"priority 0\";\r",
					"linecount" : 16,
					"presentation_linecount" : 16,
					"fontname" : "Verdana",
					"presentation_rect" : [ 355.0, 280.0, 314.0, 199.0 ],
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 355.0, 475.0, 314.0, 199.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.attributes_dumper",
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 675.0, 395.0, 149.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.attributes_dumper",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 514.0, 395.0, 149.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"presentation_rect" : [ 670.0, 215.0, 120.0, 19.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 705.0, 335.0, 120.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "audio/amplitude.1", ",", "audio/amplitude.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"presentation_rect" : [ 515.0, 213.0, 120.0, 19.0 ],
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 535.0, 335.0, 120.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "documentation/generate", ",", "filtergraph", ",", "init", ",", "module/view_internals", ",", "panel/open", ",", "preset/clear", ",", "preset/copy", ",", "preset/default", ",", "preset/dump", ",", "preset/interpolate", ",", "preset/post", ",", "preset/read", ",", "preset/recall", ",", "preset/store", ",", "preset/storenext", ",", "preset/write", ",", "ui/refresh" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"presentation_rect" : [ 355.0, 215.0, 125.0, 19.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 370.0, 335.0, 125.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "audio/bypass", ",", "audio/gain", ",", "audio/mix", ",", "audio/mute", ",", "cf", ",", "feedback", ",", "filtergain", ",", "filtertype", ",", "left", ",", "q", ",", "right", ",", "ui/freeze" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"presentation_rect" : [ 454.0, 121.0, 37.0, 19.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"maximum" : 2,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"patching_rect" : [ 454.0, 121.0, 37.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"presentation_rect" : [ 442.0, 121.0, 13.0, 19.0 ],
					"id" : "obj-23",
					"arrow" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 442.0, 121.0, 13.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : "."
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 355.0, 90.0, 90.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "get the module names here",
					"fontname" : "Verdana",
					"presentation_rect" : [ 355.0, 55.0, 158.0, 17.0 ],
					"id" : "obj-25",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 355.0, 40.0, 158.0, 17.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.modules_dumper",
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 65.0, 196.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "clear" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.returns_dumper",
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 735.0, 235.0, 135.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.messages_dumper",
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 560.0, 235.0, 142.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameters_dumper",
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 390.0, 235.0, 152.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.attributes_dumper",
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 355.0, 395.0, 149.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "put some modules to have a namespace :",
					"fontname" : "Verdana",
					"presentation_rect" : [ 34.0, 155.0, 236.0, 19.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 34.0, 155.0, 236.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.all_dumper",
					"fontname" : "Verdana",
					"presentation_rect" : [ 37.0, 41.0, 251.0, 28.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 37.0, 41.0, 251.0, 28.0 ],
					"fontsize" : 17.553501,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "utilities to analyze the whole Jamoma namespace",
					"fontname" : "Verdana",
					"presentation_rect" : [ 38.0, 71.0, 295.0, 19.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 38.0, 71.0, 295.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 31.0, 29.0, 298.0, 65.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 29.0, 298.0, 65.0 ],
					"presentation" : 1,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p instances",
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 2,
					"numoutlets" : 4,
					"patching_rect" : [ 875.0, 145.0, 104.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "clear", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 694.0, 405.0, 480.0, 416.0 ],
						"bglocked" : 0,
						"defrect" : [ 694.0, 405.0, 480.0, 416.0 ],
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
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 413.0, 183.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p script",
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 413.0, 158.0, 46.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
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
													"fontname" : "Verdana",
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 69.0, 45.0, 54.0, 19.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-2",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "91 19",
													"fontname" : "Verdana",
													"id" : "obj-3",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 218.0, 63.0, 234.0, 17.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-4",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-5",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "138 19",
													"fontname" : "Verdana",
													"id" : "obj-6",
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 28.0, 67.0, 161.0, 17.0 ],
													"fontsize" : 10.0,
													"outlettype" : [ "" ]
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
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 413.0, 131.0, 44.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 401.0, 325.0, 16.0, 16.0 ],
									"comment" : "connect to menus to clear them when a new module is chosen"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s clear",
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 14.0, 301.0, 397.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 302.0, 232.0, 68.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess -1",
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 220.0, 105.0, 70.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 302.0, 130.0, 39.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 190.0, 127.0, 45.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 265.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend max",
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 331.0, 200.0, 75.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 331.0, 174.0, 25.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 14.0, 202.0, 96.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend symbol",
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 190.0, 58.0, 89.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll jcom.modules_instances 1",
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 190.0, 80.0, 162.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "" ],
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
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 14.0, 281.0, 96.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 190.0, 152.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s",
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 14.0, 237.0, 60.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 134.0, 202.0, 42.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "> 0",
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 190.0, 105.0, 27.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %s.%s",
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 236.0, 80.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-22",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 134.0, 184.0, 13.0, 13.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 b",
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 302.0, 153.0, 39.0, 19.0 ],
									"fontsize" : 10.0,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-24",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 326.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-25",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 24.0, 15.0, 15.0 ],
									"outlettype" : [ "" ],
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
					"maxclass" : "comment",
					"text" : "also analyzes the number of instantiated modules of the same type",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"patching_rect" : [ 565.0, 55.0, 243.0, 31.0 ],
					"fontsize" : 10.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
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
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 989.5, 35.0, 364.5, 35.0 ]
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
