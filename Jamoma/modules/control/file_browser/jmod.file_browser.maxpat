{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ -8.0, 44.0, 1423.0, 728.0 ],
		"bglocked" : 0,
		"defrect" : [ -8.0, 44.0, 1423.0, 728.0 ],
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
					"text" : "obviouly, saving a list of types in preset would be great, but it is quite some work...",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"frgb" : [ 0.0, 0.662211, 0.126284, 1.0 ],
					"patching_rect" : [ 1003.0, 224.0, 455.0, 19.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.0, 0.662211, 0.126284, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 334.0, 326.0, 60.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 661.0, 30.0, 141.0, 20.0 ],
					"fontsize" : 10.970939,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"id" : "obj-57",
					"fontname" : "Verdana",
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 865.0, 435.0, 129.0, 19.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "type[2]",
					"text" : "jcom.parameter type @type msg_int @range/bounds 0 4 @range/clipmode low @priority 4 @repetitions/allow 1 @description \"File types to display\"",
					"linecount" : 2,
					"id" : "obj-36",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 888.0, 243.0, 574.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "depth[1]",
					"text" : "jcom.parameter depth @type msg_int @range/bounds 0 9 @range/clipmode low @priority 6 @repetitions/allow 1 @description \"Numbers of levels of folders below the chosen one to look into\"",
					"linecount" : 2,
					"id" : "obj-35",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 676.0, 128.0, 581.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "folder",
					"text" : "jcom.parameter folder @type msg_symbol @description \"Path of folder to browse\"",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 661.0, 61.0, 422.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p add-types",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1169.0, 281.0, 68.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 854.0, 44.0, 506.0, 430.0 ],
						"bglocked" : 0,
						"defrect" : [ 854.0, 44.0, 506.0, 430.0 ],
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
									"id" : "obj-12",
									"patching_rect" : [ 55.0, 354.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strangely, file type Sd2f is not recognised",
									"linecount" : 2,
									"id" : "obj-11",
									"fontname" : "Verdana",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 208.0, 112.0, 150.0, 31.0 ],
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "types",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 1.0, 185.0, 37.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "SDIF",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.0, 257.0, 33.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l clear",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "", "clear" ],
									"patching_rect" : [ 59.0, 317.0, 58.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"patching_rect" : [ 104.0, 355.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-4",
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 40.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1 2 3 4",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 59.0, 70.0, 79.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "JPEG \"GIF \" GIFf \"PNG \" PNGf 8BPS TIFF PICT \"SWF \" BMPf \"BMP \" qtif \"SGI \" TPIC PNTG qdgx PFix PICS PICS",
									"linecount" : 2,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 98.0, 224.0, 287.0, 28.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"MOV \" \"AVI \" MooV \"VfW \" dvc! MPEG MPGa MPGv MPGx SWFL \"SWF \"",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 194.0, 363.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"MP3 \" \"Mp3 \" PLAY MPG3 SwaT MPEG AIFF AIFC \"SD2 \" Sd2f .WAV WAVE ULAW sfil",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 153.0, 429.0, 16.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"MP3 \" \"Mp3 \" PLAY MPG3 SwaT MPEG AIFF AIFC \"SD2 \" Sd2f .WAV WAVE ULAW sfil MooV \"VfW \" dvc! MPEG MPGa MPGv MPGx SWFL \"SWF \" JPEG \"GIF \" GIFf \"PNG \" PNGf 8BPS TIFF PICT \"SWF \" BMPf \"BMP \" qtif \"SGI \" TPIC PNTG qdgx PFix PICS PICS MIDI TEXT 3DMF \"M4A \"",
									"linecount" : 4,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 161.0, 24.0, 447.0, 52.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend types",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 289.0, 82.0, 18.0 ],
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-9", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-12", 0 ],
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
					"varname" : "file",
					"text" : "jcom.message file @type msg_symbol @repetitions/allow 1 @description \"Selected file name\"",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 865.0, 457.0, 479.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return number_items @repetitions/allow 1 @type msg_int @description \"Number of matching items in folder (not updated when changing depth)\"",
					"linecount" : 2,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 925.0, 527.0, 584.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 516.0, 189.0, 54.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jcom.init",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 453.0, 189.0, 59.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "onebang 1",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 453.0, 212.0, 61.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "Type",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"presentation_rect" : [ 4.0, 42.0, 59.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"pattrmode" : 1,
					"types" : [  ],
					"patching_rect" : [ 889.0, 223.0, 53.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"items" : [ "all", ",", "audio", ",", "video", ",", "pictures", ",", "sdif" ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t clear set",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"outlettype" : [ "clear", "set" ],
					"patching_rect" : [ 453.0, 233.0, 58.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"varname" : "bt_opendialog",
					"id" : "obj-16",
					"presentation_rect" : [ 7.0, 23.0, 15.0, 15.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 336.0, 18.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog fold",
					"id" : "obj-17",
					"fontname" : "Verdana",
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 334.0, 36.0, 84.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"id" : "obj-18",
					"presentation_rect" : [ 25.0, 21.0, 268.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"types" : [ "fold" ],
					"patching_rect" : [ 424.0, 37.0, 228.0, 18.0 ],
					"presentation" : 1,
					"border" : 0.0,
					"rounded" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"id" : "obj-19",
					"fontname" : "Verdana",
					"presentation_rect" : [ 23.0, 21.0, 269.0, 18.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 334.0, 301.0, 252.0, 20.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "menu",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"presentation_rect" : [ 112.0, 42.0, 179.0, 19.0 ],
					"outlettype" : [ "int", "", "" ],
					"pattrmode" : 1,
					"types" : [  ],
					"patching_rect" : [ 805.0, 406.0, 139.0, 19.0 ],
					"prefix" : "bang",
					"fontsize" : 10.0,
					"presentation" : 1,
					"autopopulate" : 1,
					"items" : [  ],
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "folderDepth",
					"id" : "obj-21",
					"fontname" : "Verdana",
					"presentation_rect" : [ 97.0, 42.0, 18.0, 19.0 ],
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"patching_rect" : [ 649.0, 133.0, 18.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"triangle" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "depth $1",
					"id" : "obj-22",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 957.0, 164.0, 53.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route populate",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 925.0, 505.0, 81.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend prefix",
					"id" : "obj-24",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 805.0, 370.0, 81.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-25",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 302.0, 173.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-26",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.0, 116.0, 68.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out",
					"id" : "obj-27",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 119.0, 319.0, 52.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-28",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 119.0, 267.0, 45.0, 18.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-29",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 162.0, 135.0, 16.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Browsing and selecting files\"",
					"linecount" : 2,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 16.0, 203.0, 245.0, 30.0 ],
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 163.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-32",
					"patching_rect" : [ 16.0, 316.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "depth",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"presentation_rect" : [ 63.0, 43.0, 37.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 70.0, 44.0, 37.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-34",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 897.5, 276.0, 856.0, 276.0, 856.0, 220.0, 898.5, 220.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 898.5, 241.0, 897.5, 241.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 872.0, 85.0, 343.5, 85.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 197.0, 25.5, 197.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 874.5, 489.0, 853.0, 489.0, 853.0, 489.0, 802.0, 489.0, 802.0, 403.0, 814.5, 403.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-22", 0 ],
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
					"midpoints" : [ 525.5, 209.0, 462.5, 209.0 ]
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
					"midpoints" : [ 433.5, 111.0, 343.5, 111.0 ]
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
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"midpoints" : [ 966.5, 210.0, 669.0, 210.0, 669.0, 313.0, 814.5, 313.0 ]
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 433.5, 57.0, 420.0, 57.0, 420.0, 12.0, 670.5, 12.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 343.5, 357.0, 814.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1178.5, 300.0, 597.0, 300.0, 597.0, 288.0, 343.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 656.0, 153.0, 672.0, 153.0, 672.0, 123.0, 685.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 685.5, 159.0, 669.0, 159.0, 669.0, 129.0, 658.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 343.5, 54.0, 321.0, 54.0, 321.0, 0.0, 670.5, 0.0 ]
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
 ]
	}

}
