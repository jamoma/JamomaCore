{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 708.0, 323.0, 814.0, 635.0 ],
		"bglocked" : 0,
		"defrect" : [ 708.0, 323.0, 814.0, 635.0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 86.0, 185.0, 45.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "CueMenu",
					"presentation" : 1,
					"numoutlets" : 3,
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"items" : [  ],
					"fontname" : "Verdana",
					"types" : [  ],
					"rounded" : 15,
					"presentation_rect" : [ 147.0, 47.0, 146.0, 19.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 355.0, 353.0, 146.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p cue_menu",
					"numoutlets" : 1,
					"outlettype" : [ "clear" ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 330.0, 70.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 302.0, 84.0, 600.0, 426.0 ],
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
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 57.0, 110.0, 110.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 57.0, 239.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 57.0, 198.0, 89.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t \"Select cue\" clear",
									"numoutlets" : 2,
									"outlettype" : [ "Select cue", "clear" ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 105.0, 155.0, 103.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0__set_menu",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 0,
									"fontsize" : 9.873845,
									"patching_rect" : [ 57.0, 89.0, 92.0, 18.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 157.5, 144.0, 66.5, 144.0 ]
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
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 198.5, 231.0, 66.0, 231.0 ]
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
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-4", 0 ],
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
						"default_fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message save_script @description \"Save cue script to a file. An argument determines the path and name of the file.  No argument will bring up a file dialog (like saveas) or save the script to the existing file that is in use.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 210.0, 407.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "SaveScriptButton",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "Save Cue Script", 225, 225, 225, 68, 68, 68 ],
					"nofsaa" : 1,
					"presentation_rect" : [ 50.0, 45.0, 94.0, 19.0 ],
					"id" : "obj-7",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 187.0, 94.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "listen",
					"text" : "jcom.parameter listen @type msg_toggle @repetitions/allow 0 @description \"Listen to remote change of parameters.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 484.0, 294.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 86.0, 209.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message view @description \"View current cue script in a text window.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 295.0, 208.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "OpenButten",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "View", 225, 225, 225, 68, 68, 68 ],
					"nofsaa" : 1,
					"presentation_rect" : [ 146.0, 25.0, 54.0, 19.0 ],
					"id" : "obj-14",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 270.0, 52.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message remote @type msg_generic @description \"Wireless communication of messages to modules via the bridge.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 416.0, 341.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message cue @type msg_generic @description \"Recall cue event from cue script.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 375.0, 248.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "GetStateButton",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "Get State", 225, 225, 225, 68, 68, 68 ],
					"nofsaa" : 1,
					"presentation_rect" : [ 200.0, 25.0, 94.0, 19.0 ],
					"id" : "obj-17",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 46.0, 94.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "CueScriptButton",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "Load Cue Script", 225, 225, 225, 68, 68, 68 ],
					"nofsaa" : 1,
					"presentation_rect" : [ 50.0, 25.0, 94.0, 19.0 ],
					"id" : "obj-18",
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 107.0, 94.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 86.0, 235.0, 49.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 38.0, 89.0, 135.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message load_script @description \"Load cue script from file. <br>NOTE: jcom.cue_list will be watching the file and automatically update if the content of the file is changed. This way you can use an external editor to work on the cue script while Jamoma is running.\"",
					"linecount" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 126.0, 353.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 180.0, 90.0, 37.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.cuelist #0_",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 86.0, 264.0, 88.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.cuelist @module_type control @description \"Manage cue list in text format\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 114.0, 278.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-29",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 154.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter",
					"text" : "jcom.message get_state @description \"Poll state for all bridged modules, and display in text window.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 355.0, 66.0, 280.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "listen",
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"presentation_rect" : [ 14.0, 24.0, 47.0, 19.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 201.0, 0.0, 47.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"varname" : "ListenToggle",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 24.0, 50.0, 18.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 465.0, 54.0, 18.0 ],
					"itemtype" : 1,
					"size" : 1,
					"values" : [ 0 ],
					"disabled" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-32",
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numinlets" : 1,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 110.0, 25.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 108.0, 25.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.5, 516.0, 342.0, 516.0, 342.0, 462.0, 364.5, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.5, 405.0, 342.0, 405.0, 342.0, 348.0, 364.5, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-30", 0 ],
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
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 162.5, 259.0, 95.5, 259.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
