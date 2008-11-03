{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 140.0, 51.0, 814.0, 635.0 ],
		"bglocked" : 0,
		"defrect" : [ 140.0, 51.0, 814.0, 635.0 ],
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
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 270.0, 36.0, 21.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"texton" : "View",
					"id" : "obj-21",
					"fontname" : "Verdana",
					"border" : 1,
					"text" : "View",
					"presentation_rect" : [ 148.166489, 22.48205, 72.374352, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 186.0, 100.0, 20.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"texton" : "Save Cue Script",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"border" : 1,
					"text" : "Save Cue Script",
					"presentation_rect" : [ 52.0, 44.0, 93.215401, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"patching_rect" : [ 356.0, 41.0, 100.0, 20.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"texton" : "Get State",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"border" : 1,
					"text" : "Get State",
					"presentation_rect" : [ 222.245789, 22.48205, 72.664474, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numoutlets" : 2,
					"patching_rect" : [ 85.0, 235.0, 45.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "CueMenu",
					"items" : [  ],
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 355.0, 353.0, 146.0, 19.0 ],
					"labelclick" : 1,
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"presentation_rect" : [ 147.446152, 44.0, 148.589752, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p cue_menu",
					"numoutlets" : 1,
					"patching_rect" : [ 355.0, 330.0, 70.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 9.873845,
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
									"patching_rect" : [ 57.0, 110.0, 110.0, 18.0 ],
									"outlettype" : [ "bang", "bang", "" ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 239.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"numoutlets" : 1,
									"patching_rect" : [ 57.0, 198.0, 89.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t \"Select cue\" clear",
									"numoutlets" : 2,
									"patching_rect" : [ 105.0, 155.0, 103.0, 18.0 ],
									"outlettype" : [ "Select cue", "clear" ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0__set_menu",
									"numoutlets" : 1,
									"patching_rect" : [ 57.0, 89.0, 92.0, 18.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"fontsize" : 9.873845
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
									"midpoints" : [ 157.5, 144.0, 66.5, 144.0 ]
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
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message save_script @description \"Save cue script to a file. An argument determines the path and name of the file.  No argument will bring up a file dialog (like saveas) or save the script to the existing file that is in use.\"",
					"linecount" : 3,
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 210.0, 407.0, 42.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "listen",
					"text" : "jcom.parameter listen @type msg_toggle @repetitions/allow 0 @description \"Listen to remote change of parameters.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 487.0, 314.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message view @description \"View current cue script in a text window.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 295.0, 208.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message remote @type msg_generic @description \"Wireless communication of messages to modules via the bridge.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 416.0, 341.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message cue @repetitions/allow 1 @type msg_generic @description \"Recall cue event from cue script.\"",
					"linecount" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 375.0, 316.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numoutlets" : 1,
					"patching_rect" : [ 38.0, 89.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message load_script @description \"Load cue script from file. <br>NOTE: jcom.cue_list will be watching the file and automatically update if the content of the file is changed. This way you can use an external editor to work on the cue script while Jamoma is running.\"",
					"linecount" : 4,
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 126.0, 353.0, 54.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numoutlets" : 1,
					"patching_rect" : [ 180.0, 90.0, 37.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.cuelist #0_",
					"numoutlets" : 1,
					"patching_rect" : [ 86.0, 264.0, 88.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Manage cue list in text format\"",
					"linecount" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 16.0, 114.0, 278.0, 30.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 90.0, 13.0, 13.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 154.0, 13.0, 13.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
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
					"patching_rect" : [ 355.0, 66.0, 280.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 465.0, 100.0, 20.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"texton" : "Listen (On)",
					"id" : "obj-10",
					"fontname" : "Verdana",
					"mode" : 1,
					"border" : 1,
					"truncate" : 0,
					"text" : "Listen (Off)",
					"presentation_rect" : [ 3.0, 22.48205, 47.215401, 42.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"numoutlets" : 3,
					"patching_rect" : [ 355.0, 103.0, 100.0, 20.0 ],
					"presentation" : 1,
					"rounded" : 8.0,
					"outlettype" : [ "", "", "int" ],
					"texton" : "Load Cue Script",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"border" : 1,
					"text" : "Load Cue Script",
					"presentation_rect" : [ 51.9641, 22.0, 94.215401, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-32",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.5, 405.0, 342.0, 405.0, 342.0, 348.0, 364.5, 348.0 ]
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.5, 519.0, 342.0, 519.0, 342.0, 462.0, 364.5, 462.0 ]
				}

			}
, 			{
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
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
