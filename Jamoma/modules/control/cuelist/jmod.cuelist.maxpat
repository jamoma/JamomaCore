{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 174.0, 139.0, 814.0, 635.0 ],
		"bglocked" : 0,
		"defrect" : [ 174.0, 139.0, 814.0, 635.0 ],
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
					"text" : "jcom.in",
					"patching_rect" : [ 86.0, 185.0, 45.0, 18.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar CueMenu 2",
					"patching_rect" : [ 355.0, 354.0, 89.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "CueMenu",
					"types" : [  ],
					"patching_rect" : [ 129.0, 47.0, 146.0, 18.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"rounded" : 15,
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"items" : [  ],
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"bgcolor" : [ 0.266667, 0.266667, 0.266667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p cue_menu",
					"patching_rect" : [ 355.0, 330.0, 70.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 302.0, 84.0, 600.0, 426.0 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 302.0, 84.0, 600.0, 426.0 ],
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
									"text" : "sel ---END ---START",
									"patching_rect" : [ 57.0, 110.0, 109.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 57.0, 239.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"patching_rect" : [ 57.0, 198.0, 89.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t \"Select cue\" clear",
									"patching_rect" : [ 105.0, 155.0, 103.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"numoutlets" : 2,
									"outlettype" : [ "Select cue", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0__set_menu",
									"patching_rect" : [ 57.0, 89.0, 92.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"fontsize" : 9.873845,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 198.5, 231.0, 66.0, 231.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 156.5, 144.0, 66.5, 144.0 ]
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
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar SaveScriptButton",
					"patching_rect" : [ 355.0, 183.0, 120.0, 18.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message save_script @description \"Save cue script to a file. An argument determines the path and name of the file.  No argument will bring up a file dialog (like saveas) or save the script to the existing file that is in use.\"",
					"linecount" : 3,
					"patching_rect" : [ 355.0, 204.0, 404.0, 42.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "SaveScriptButton",
					"patching_rect" : [ 32.0, 45.0, 94.0, 19.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 1,
					"filename" : "jsui_textbutton.js",
					"outlettype" : [ "" ],
					"nofsaa" : 1,
					"jsarguments" : [ "Save Cue Script", 225, 225, 225, 68, 68, 68 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "listen",
					"text" : "jcom.parameter listen @type msg_toggle @repetitions 0 @description \"Listen to remote change of parameters.\"",
					"linecount" : 2,
					"patching_rect" : [ 355.0, 484.0, 290.0, 30.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ListenToggle",
					"patching_rect" : [ 355.0, 464.0, 95.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "ListenToggle",
					"patching_rect" : [ 183.0, 1.0, 54.0, 18.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"patching_rect" : [ 86.0, 209.0, 86.0, 18.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message view @description \"View current cue script in a text window.\"",
					"linecount" : 2,
					"patching_rect" : [ 355.0, 289.0, 208.0, 30.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar OpenButten",
					"patching_rect" : [ 355.0, 267.0, 93.0, 18.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "OpenButten",
					"patching_rect" : [ 128.0, 25.0, 52.0, 19.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 1,
					"filename" : "jsui_textbutton.js",
					"outlettype" : [ "" ],
					"nofsaa" : 1,
					"jsarguments" : [ "View", 225, 225, 225, 68, 68, 68 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message remote @type msg_generic @description \"Wireless communication of messages to modules via the bridge.\"",
					"linecount" : 2,
					"patching_rect" : [ 355.0, 416.0, 338.0, 30.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message cue @type msg_generic @description \"Recall cue event from cue script.\"",
					"linecount" : 2,
					"patching_rect" : [ 355.0, 375.0, 248.0, 30.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "GetStateButton",
					"patching_rect" : [ 182.0, 25.0, 94.0, 19.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"numoutlets" : 1,
					"filename" : "jsui_textbutton.js",
					"outlettype" : [ "" ],
					"nofsaa" : 1,
					"jsarguments" : [ "Get State", 225, 225, 225, 68, 68, 68 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "CueScriptButton",
					"patching_rect" : [ 32.0, 25.0, 94.0, 19.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 1,
					"filename" : "jsui_textbutton.js",
					"outlettype" : [ "" ],
					"nofsaa" : 1,
					"jsarguments" : [ "Load Cue Script", 225, 225, 225, 68, 68, 68 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 86.0, 235.0, 49.0, 18.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"patching_rect" : [ 38.0, 89.0, 135.0, 16.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar CueScriptButton",
					"patching_rect" : [ 355.0, 99.0, 115.0, 18.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message load_script @description \"Load cue script from file. <br>NOTE: jcom.cue_list will be watching the file and automatically update if the content of the file is changed. This way you can use an external editor to work on the cue script while Jamoma is running.\"",
					"linecount" : 4,
					"patching_rect" : [ 355.0, 120.0, 349.0, 54.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"patching_rect" : [ 180.0, 90.0, 37.0, 16.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.cuelist #0_",
					"patching_rect" : [ 86.0, 264.0, 88.0, 18.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar GetStateButton",
					"patching_rect" : [ 355.0, 40.0, 111.0, 18.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.cuelist @size 1U-half @module_type control @description \"Manage cue list in text format\"",
					"linecount" : 2,
					"patching_rect" : [ 16.0, 114.0, 272.0, 30.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
					"id" : "obj-28",
					"numinlets" : 0,
					"hidden" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 16.0, 154.0, 13.0, 13.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter",
					"text" : "jcom.message get_state @description \"Poll state for all bridged modules, and display in text window.\"",
					"linecount" : 2,
					"patching_rect" : [ 355.0, 60.0, 280.0, 30.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.873845,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "listen",
					"patching_rect" : [ 201.0, 0.0, 47.0, 18.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"textcolor" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"frgb" : [ 0.882353, 0.882353, 0.882353, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-32",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 12.068032,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 162.5, 259.0, 95.5, 259.0 ]
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [ 364.5, 518.0, 347.0, 518.0, 347.0, 460.0, 364.5, 460.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 434.5, 373.0, 364.5, 373.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 364.5, 410.0, 345.0, 410.0, 345.0, 351.0, 364.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 189.5, 110.0, 25.5, 110.0 ]
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
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 47.5, 108.0, 25.5, 108.0 ]
				}

			}
 ]
	}

}
