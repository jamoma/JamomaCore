{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 75.0, 279.0, 1134.0, 411.0 ],
		"bglocked" : 0,
		"defrect" : [ 75.0, 279.0, 1134.0, 411.0 ],
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
					"text" : "conformpath slash boot",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 630.0, 290.0, 129.0, 19.0 ],
					"numoutlets" : 2,
					"id" : "obj-57",
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "type[2]",
					"text" : "jcom.parameter type @type msg_list @description \"Choose between different file types\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 761.0, 194.0, 264.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-36",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "depth[1]",
					"text" : "jcom.parameter depth @type msg_int @range/bounds 0 9 @range/clipmode low @description \"Numbers of levels of folders below the chosen one to look into\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 676.0, 140.0, 416.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-35",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 648.0, 234.0, 33.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "add_types",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 572.0, 232.0, 69.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "folder",
					"text" : "jcom.parameter folder @type msg_symbol @description \"Folder to browse\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 445.0, 40.0, 269.0, 30.0 ],
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p add-types",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 745.0, 232.0, 68.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 696.0, 281.0, 506.0, 430.0 ],
						"bglocked" : 0,
						"defrect" : [ 696.0, 281.0, 506.0, 430.0 ],
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
									"maxclass" : "message",
									"text" : "SDIF",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 111.0, 257.0, 33.0, 16.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l clear",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 59.0, 317.0, 46.0, 18.0 ],
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 59.0, 352.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-3",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 59.0, 40.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 59.0, 70.0, 79.0, 18.0 ],
									"numoutlets" : 6,
									"id" : "obj-5",
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "JPEG \"GIF \" GIFf \"PNG \" PNGf 8BPS TIFF PICT \"SWF \" BMPf \"BMP \" qtif \"SGI \" TPIC PNTG qdgx PFix PICS PICS",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 98.0, 224.0, 287.0, 28.0 ],
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"MOV \" \"AVI \" MooV \"VfW \" dvc! MPEG MPGa MPGv MPGx SWFL \"SWF \"",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 85.0, 194.0, 363.0, 16.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"MP3 \" \"Mp3 \" PLAY MPG3 SwaT MPEG AIFF AIFC \"SD2 \" Sd2f .WAV WAVE ULAW sfil",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 72.0, 160.0, 429.0, 16.0 ],
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"MP3 \" \"Mp3 \" PLAY MPG3 SwaT MPEG AIFF AIFC \"SD2 \" Sd2f .WAV WAVE ULAW sfil MooV \"VfW \" dvc! MPEG MPGa MPGv MPGx SWFL \"SWF \" JPEG \"GIF \" GIFf \"PNG \" PNGf 8BPS TIFF PICT \"SWF \" BMPf \"BMP \" qtif \"SGI \" TPIC PNTG qdgx PFix PICS PICS MIDI TEXT 3DMF",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 9.873845,
									"patching_rect" : [ 59.0, 100.0, 349.0, 52.0 ],
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add_types",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 9.873845,
									"patching_rect" : [ 59.0, 289.0, 104.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 4 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 3 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "file",
					"text" : "jcom.parameter file @type msg_list @description \"Selected file name\"",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 630.0, 314.0, 360.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message number_items @type msg_int",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 690.0, 360.0, 234.0, 18.0 ],
					"numoutlets" : 3,
					"id" : "obj-10",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 469.0, 139.0, 54.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jcom.init",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 139.0, 59.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "onebang 1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 162.0, 61.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-13",
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Type",
					"fontname" : "Verdana",
					"presentation_rect" : [ 8.0, 42.0, 53.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "all", ",", "audio", ",", "video", ",", "pictures", ",", "sdif" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 745.0, 173.0, 53.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"pattrmode" : 1,
					"id" : "obj-14",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t clear set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 406.0, 183.0, 58.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "clear", "set" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"varname" : "bt_opendialog",
					"presentation_rect" : [ 7.0, 23.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 336.0, 18.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog fold",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 334.0, 36.0, 84.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-17",
					"outlettype" : [ "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"presentation_rect" : [ 25.0, 21.0, 268.0, 18.0 ],
					"numinlets" : 1,
					"border" : 0.0,
					"patching_rect" : [ 596.0, 80.0, 228.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"rounded" : 0.0,
					"types" : [ "fold" ],
					"id" : "obj-18",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"fontname" : "Verdana",
					"presentation_rect" : [ 23.0, 21.0, 269.0, 18.0 ],
					"frgb" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 332.0, 225.0, 230.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "int", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "menu",
					"fontname" : "Verdana",
					"presentation_rect" : [ 112.0, 42.0, 179.0, 19.0 ],
					"autopopulate" : 1,
					"numinlets" : 1,
					"items" : [  ],
					"fontsize" : 10.0,
					"patching_rect" : [ 571.0, 261.0, 139.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"types" : [  ],
					"pattrmode" : 1,
					"depth" : 4,
					"id" : "obj-20",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "folderDepth",
					"fontname" : "Verdana",
					"triangle" : 0,
					"minimum" : 0,
					"presentation_rect" : [ 97.0, 42.0, 18.0, 19.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 658.0, 117.0, 18.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-21",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "depth $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 656.0, 212.0, 53.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route populate",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 690.0, 338.0, 81.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-23",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend prefix",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 572.0, 122.0, 81.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 333.0, 139.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 332.0, 118.0, 68.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 119.0, 319.0, 52.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-27",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 119.0, 267.0, 45.0, 18.0 ],
					"numoutlets" : 2,
					"id" : "obj-28",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 38.0, 178.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Browsing and selecting files to send to audio or video players\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 203.0, 284.0, 42.0 ],
					"numoutlets" : 2,
					"id" : "obj-30",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 179.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 316.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"id" : "obj-32",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "depth",
					"fontname" : "Verdana",
					"presentation_rect" : [ 63.0, 43.0, 37.0, 19.0 ],
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 44.0, 37.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module.1",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 579.5, 85.0, 341.5, 85.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 685.5, 171.0, 672.0, 171.0, 672.0, 135.0, 675.0, 135.0, 675.0, 114.0, 667.5, 114.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 665.0, 137.0, 685.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 197.0, 25.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 639.5, 344.0, 619.0, 344.0, 619.0, 344.0, 568.0, 344.0, 568.0, 258.0, 580.5, 258.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 605.5, 112.0, 584.0, 112.0, 584.0, 118.0, 581.5, 118.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 343.5, 105.0, 581.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 478.5, 159.0, 415.5, 159.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 605.5, 110.0, 341.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 754.5, 261.0, 711.0, 261.0, 711.0, 258.0, 580.5, 258.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [ 665.5, 228.0, 642.0, 228.0, 642.0, 249.0, 580.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 657.5, 252.0, 645.0, 252.0, 645.0, 249.0, 580.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 754.5, 192.0, 770.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 770.5, 227.0, 729.0, 227.0, 729.0, 171.0, 754.5, 171.0 ]
				}

			}
 ]
	}

}
