{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 130.0, 136.0, 1162.0, 681.0 ],
		"bglocked" : 0,
		"defrect" : [ 130.0, 136.0, 1162.0, 681.0 ],
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
					"maxclass" : "message",
					"text" : "jcom.out",
					"presentation_rect" : [ 395.0, 628.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-36",
					"numinlets" : 2,
					"patching_rect" : [ 395.0, 630.0, 55.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.in",
					"presentation_rect" : [ 335.0, 628.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-37",
					"numinlets" : 2,
					"patching_rect" : [ 335.0, 630.0, 48.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.out~",
					"presentation_rect" : [ 344.0, 579.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 2,
					"patching_rect" : [ 395.0, 600.0, 63.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.in~",
					"presentation_rect" : [ 344.0, 559.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 2,
					"patching_rect" : [ 335.0, 600.0, 56.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"presentation_rect" : [ 439.0, 594.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1,
					"patching_rect" : [ 335.0, 655.0, 76.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"presentation_rect" : [ 439.0, 619.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"patching_rect" : [ 415.0, 655.0, 51.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See :",
					"presentation_rect" : [ 339.0, 539.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-35",
					"numinlets" : 1,
					"patching_rect" : [ 395.0, 570.0, 52.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "for video modules, use jcom.in and jcom.out",
					"presentation_rect" : [ 43.0, 623.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 625.0, 276.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.970939,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"patching_rect" : [ 555.0, 540.0, 56.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 555.0, 590.0, 55.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"patching_rect" : [ 555.0, 565.0, 95.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p your_algorithm",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 1,
					"patching_rect" : [ 555.0, 625.0, 112.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 585.0, 154.0, 549.0, 562.0 ],
						"bglocked" : 0,
						"defrect" : [ 585.0, 154.0, 549.0, 562.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
									"text" : "jcom.oscroute /param_a /message_b",
									"fontname" : "Arial",
									"id" : "obj-1",
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 90.0, 180.0, 17.0 ],
									"numoutlets" : 3,
									"fontsize" : 9.0,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 474.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-3",
									"numinlets" : 0,
									"patching_rect" : [ 70.0, 50.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Substitute this patch for your algorithm",
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 155.0, 398.0, 27.0 ],
									"numoutlets" : 0,
									"fontsize" : 18.0,
									"textcolor" : [ 0.392157, 0.403922, 0.901961, 1.0 ],
									"frgb" : [ 0.392157, 0.403922, 0.901961, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"fontname" : "Arial",
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
					"maxclass" : "comment",
					"text" : "for audio modules, use jcom.in~ and jcom.out~",
					"presentation_rect" : [ 44.0, 596.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 595.0, 276.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.970939,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "communication with the algorithm uses jcom.in ",
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 565.0, 277.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.970939,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Communication with the algortithm",
					"presentation_rect" : [ 19.0, 526.0, 0.0, 0.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 525.0, 260.0, 24.0 ],
					"numoutlets" : 0,
					"fontsize" : 14.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p openReference",
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 1,
					"patching_rect" : [ 315.0, 65.0, 95.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"hidden" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 75.0, 119.0, 262.0, 204.0 ],
						"bglocked" : 0,
						"defrect" : [ 75.0, 119.0, 262.0, 204.0 ],
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
									"text" : "zl nth 2",
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2,
									"patching_rect" : [ 55.0, 70.0, 48.0, 19.0 ],
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf load %s.maxref.xml",
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 95.0, 147.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 1,
									"patching_rect" : [ 55.0, 120.0, 51.0, 19.0 ],
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-24",
									"numinlets" : 0,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-21", 0 ],
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
					"maxclass" : "message",
					"text" : "open jcom.hub reference",
					"fontname" : "Verdana",
					"gradient" : 0,
					"id" : "obj-18",
					"numinlets" : 2,
					"patching_rect" : [ 315.0, 40.0, 162.0, 19.0 ],
					"numoutlets" : 1,
					"fontface" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"bgcolor2" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"bgcolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"frozen_box_attributes" : [ "gradient" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.ui",
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 2,
					"patching_rect" : [ 890.0, 505.0, 53.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.return",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 2,
					"patching_rect" : [ 890.0, 485.0, 69.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.message",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 2,
					"patching_rect" : [ 890.0, 465.0, 82.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- Leftmost inlet of module is connected to left inlet of jcom.hub.",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"patching_rect" : [ 160.0, 420.0, 331.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- Left outlet of jcom.hub connected to leftmost outlet of module.",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"patching_rect" : [ 160.0, 451.0, 334.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Outlets:",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 1,
					"patching_rect" : [ 44.0, 451.0, 51.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inlets:",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 44.0, 420.0, 43.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Standard connections:",
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 392.0, 183.0, 24.0 ],
					"numoutlets" : 0,
					"fontsize" : 14.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Attributes:",
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 180.0, 89.0, 24.0 ],
					"numoutlets" : 0,
					"fontsize" : 14.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- text describing the parameter for html auto-documenting modules",
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 1,
					"patching_rect" : [ 151.0, 309.0, 351.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@description",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 1,
					"patching_rect" : [ 41.0, 297.0, 100.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(text)",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 1,
					"patching_rect" : [ 57.0, 309.0, 39.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- what kind of module is this? Possible values: control, audio, audio.ambisonic,  video",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"patching_rect" : [ 155.0, 235.0, 326.0, 31.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontname" : "Verdana",
					"id" : "obj-31",
					"numinlets" : 1,
					"patching_rect" : [ 55.0, 247.0, 100.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "@module_type",
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 1,
					"patching_rect" : [ 39.0, 235.0, 100.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 1,
					"patching_rect" : [ 55.0, 259.0, 100.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jcom.parameter",
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numinlets" : 2,
					"patching_rect" : [ 890.0, 445.0, 90.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"fontname" : "Verdana",
					"id" : "obj-42",
					"numinlets" : 1,
					"patching_rect" : [ 985.0, 480.0, 76.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-43",
					"numinlets" : 1,
					"patching_rect" : [ 985.0, 505.0, 51.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s incoming",
					"fontname" : "Verdana",
					"id" : "obj-45",
					"numinlets" : 1,
					"patching_rect" : [ 890.0, 370.0, 74.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mymessage So Long",
					"fontname" : "Verdana",
					"id" : "obj-46",
					"numinlets" : 2,
					"patching_rect" : [ 890.0, 320.0, 118.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mymessage And thanks for all the fish!",
					"fontname" : "Verdana",
					"id" : "obj-47",
					"numinlets" : 2,
					"patching_rect" : [ 905.0, 345.0, 210.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"id" : "obj-48",
					"numinlets" : 1,
					"patching_rect" : [ 595.0, 430.0, 75.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message mymessage @type msg_generic",
					"fontname" : "Verdana",
					"id" : "obj-49",
					"numinlets" : 1,
					"patching_rect" : [ 885.0, 245.0, 247.0, 19.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar MyMessage",
					"fontname" : "Verdana",
					"id" : "obj-50",
					"numinlets" : 1,
					"patching_rect" : [ 885.0, 220.0, 93.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"varname" : "MyMessage",
					"fontname" : "Verdana",
					"id" : "obj-51",
					"numinlets" : 2,
					"patching_rect" : [ 645.0, 255.0, 187.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r incoming",
					"fontname" : "Verdana",
					"id" : "obj-52",
					"numinlets" : 0,
					"patching_rect" : [ 695.0, 345.0, 73.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"id" : "obj-54",
					"numinlets" : 2,
					"patching_rect" : [ 595.0, 450.0, 202.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.hub",
					"fontname" : "Verdana",
					"id" : "obj-58",
					"numinlets" : 1,
					"patching_rect" : [ 550.0, 320.0, 84.0, 23.0 ],
					"numoutlets" : 0,
					"fontsize" : 13.482065,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control",
					"fontname" : "Verdana",
					"id" : "obj-59",
					"numinlets" : 1,
					"patching_rect" : [ 555.0, 385.0, 220.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"fontname" : "Verdana",
					"id" : "obj-60",
					"numinlets" : 1,
					"patching_rect" : [ 590.0, 345.0, 88.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-61",
					"numinlets" : 0,
					"patching_rect" : [ 555.0, 345.0, 26.0, 26.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-62",
					"numinlets" : 1,
					"patching_rect" : [ 555.0, 450.0, 26.0, 26.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "my_message",
					"fontname" : "Verdana",
					"id" : "obj-63",
					"numinlets" : 1,
					"patching_rect" : [ 565.0, 255.0, 75.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.ui",
					"fontname" : "Verdana",
					"id" : "obj-64",
					"numinlets" : 1,
					"patching_rect" : [ 550.0, 195.0, 82.0, 24.0 ],
					"numoutlets" : 0,
					"fontsize" : 14.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Reporting to the rest of the world",
					"fontname" : "Verdana",
					"id" : "obj-65",
					"numinlets" : 1,
					"patching_rect" : [ 555.0, 485.0, 177.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For information on configuring the attributes to the jcom.hub object, please refer to the Jamoma tutorials. These are the best source for getting familiar with the steps involved in building modules.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-67",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 117.0, 596.0, 31.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.hub",
					"fontname" : "Verdana",
					"id" : "obj-68",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 30.0, 196.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the central nervous system of a jamoma module",
					"fontname" : "Verdana",
					"id" : "obj-69",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 55.0, 253.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.hub is the central brain in a jamoma module. It parses input, distributes messaging to parameters, manages the pattrstorage object, generates documentation, configures the jcom.gui object, etc.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-71",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 80.0, 583.0, 31.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See also",
					"fontname" : "Verdana",
					"id" : "obj-72",
					"numinlets" : 1,
					"patching_rect" : [ 885.0, 425.0, 52.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-70",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 20.0, 515.0, 57.0 ],
					"numoutlets" : 0,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-8",
					"numinlets" : 1,
					"patching_rect" : [ 545.0, 220.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 538.0, 428.0, 0.0, 0.0 ],
					"border" : 2,
					"id" : "obj-4",
					"numinlets" : 1,
					"patching_rect" : [ 535.0, 530.0, 326.0, 126.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"rounded" : 15,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 2,
					"id" : "obj-75",
					"numinlets" : 1,
					"patching_rect" : [ 535.0, 182.0, 323.0, 120.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"rounded" : 15,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 2,
					"id" : "obj-66",
					"numinlets" : 1,
					"patching_rect" : [ 535.0, 310.0, 325.0, 210.0 ],
					"numoutlets" : 0,
					"background" : 1,
					"rounded" : 15,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 0.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 704.5, 377.0, 564.5, 377.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 640.5, 614.0, 564.5, 614.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-54", 1 ],
					"hidden" : 0,
					"midpoints" : [ 564.5, 426.0, 787.5, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 894.5, 271.0, 877.0, 271.0, 877.0, 211.0, 894.5, 211.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
