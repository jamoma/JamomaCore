{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 12.0, 52.0, 796.0, 508.0 ],
		"bglocked" : 0,
		"defrect" : [ 12.0, 52.0, 796.0, 508.0 ],
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
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-53",
					"fontsize" : 10.970939,
					"patching_rect" : [ 370.0, 230.0, 50.0, 20.0 ],
					"minimum" : 1.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The basic idea of dbap is that the sum of all intensities is constant.",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 150.0, 346.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontsize" : 10.0,
					"patching_rect" : [ 701.0, 385.0, 27.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontsize" : 10.0,
					"patching_rect" : [ 701.0, 357.0, 27.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "-48",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontsize" : 10.0,
					"patching_rect" : [ 701.0, 460.0, 27.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"setstyle" : 1,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ -48.0, 0.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"size" : 16,
					"candycane" : 4,
					"numoutlets" : 2,
					"candicane4" : [ 0.623529, 0.623529, 0.623529, 1.0 ],
					"id" : "obj-5",
					"patching_rect" : [ 480.0, 430.0, 220.0, 50.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "volume (dB)",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 480.0, 149.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p display",
					"hidden" : 1,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-7",
					"fontsize" : 10.0,
					"patching_rect" : [ 520.0, 310.0, 60.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"patching_rect" : [ 210.0, 210.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "atodb",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 261.0, 130.0, 37.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontsize" : 10.0,
									"patching_rect" : [ 210.0, 162.0, 61.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-4",
									"fontsize" : 10.0,
									"patching_rect" : [ 210.0, 130.0, 27.0, 19.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-5",
									"fontsize" : 10.0,
									"patching_rect" : [ 175.0, 100.0, 80.0, 19.0 ],
									"outlettype" : [ "int", "int", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-6",
									"fontsize" : 10.0,
									"patching_rect" : [ 210.0, 185.0, 68.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-7",
									"fontsize" : 10.0,
									"patching_rect" : [ 85.0, 162.0, 61.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-8",
									"fontsize" : 10.0,
									"patching_rect" : [ 85.0, 130.0, 27.0, 19.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-9",
									"fontsize" : 10.0,
									"patching_rect" : [ 52.0, 103.0, 80.0, 19.0 ],
									"outlettype" : [ "int", "int", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"fontsize" : 10.0,
									"patching_rect" : [ 85.0, 185.0, 68.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-11",
									"patching_rect" : [ 50.0, 30.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-12",
									"patching_rect" : [ 85.0, 210.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 2 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"setstyle" : 1,
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"numinlets" : 1,
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"size" : 16,
					"candycane" : 4,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"numoutlets" : 2,
					"candicane4" : [ 0.615686, 0.615686, 0.615686, 1.0 ],
					"id" : "obj-8",
					"patching_rect" : [ 480.0, 355.0, 220.0, 50.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "src_position 0 9.1 8.1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-9",
					"fontsize" : 10.0,
					"patching_rect" : [ 550.0, 245.0, 129.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dump all pseaker positions from right outlet",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontsize" : 10.0,
					"patching_rect" : [ 100.0, 119.0, 230.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dump:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontsize" : 10.0,
					"patching_rect" : [ 38.0, 119.0, 70.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "position of sound source",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontsize" : 10.0,
					"patching_rect" : [ 100.0, 105.0, 132.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "xyz:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-18",
					"fontsize" : 10.0,
					"patching_rect" : [ 38.0, 105.0, 69.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "list of positions as cartecian coordinates",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-19",
					"fontsize" : 10.0,
					"patching_rect" : [ 100.0, 91.0, 210.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p setup",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 2,
					"id" : "obj-21",
					"fontsize" : 10.0,
					"patching_rect" : [ 452.0, 25.0, 50.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 248.0, 127.0, 295.0, 438.0 ],
						"bglocked" : 0,
						"defrect" : [ 248.0, 127.0, 295.0, 438.0 ],
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
									"numinlets" : 1,
									"presentation_rect" : [ 102.0, 368.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"id" : "obj-18",
									"patching_rect" : [ 205.0, 370.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-17",
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 105.0, 34.0, 19.0 ],
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "dst_position 0 0.5 8.5, dst_position 1 0.5 14.5, dst_position 2 12.5 14.5, dst_position 3 12.5 8.5, dst_position 4 17. 6., dst_position 5 21.5 4.5, dst_position 6 21.5 0.5, dst_position 7 16.5 0.5, dst_position 8 11.5 0.5, dst_position 9 11.5 4.5, dst_position 10 10.5 4.5, dst_position 11 10.5 0.5, dst_position 12 5.5 0.5, dst_position 13 0.5 0.5, dst_position 14 0.5 4.5, dst_position 15 5. 7.5",
									"linecount" : 16,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-16",
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 140.0, 142.0, 199.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 75.0, 51.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontsize" : 10.0,
									"patching_rect" : [ 50.0, 50.0, 54.0, 19.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"patching_rect" : [ 50.0, 370.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 357.0, 214.5, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 74.5, 126.0, 214.5, 126.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
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
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jcom.dbap",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-22",
					"fontsize" : 18.0,
					"patching_rect" : [ 15.0, 16.0, 164.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "distance based amplitude panning",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-23",
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 41.0, 352.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"id" : "obj-24",
					"patching_rect" : [ 10.0, 11.0, 400.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p scaler",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-25",
					"fontsize" : 10.0,
					"patching_rect" : [ 485.0, 245.0, 52.0, 19.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 40.0, 55.0, 220.0, 308.0 ],
						"bglocked" : 0,
						"defrect" : [ 40.0, 55.0, 220.0, 308.0 ],
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
									"text" : "prepend src_position 0",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontsize" : 10.0,
									"patching_rect" : [ 59.0, 181.0, 125.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 59.0, 153.0, 61.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 15.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontsize" : 10.0,
									"patching_rect" : [ 107.0, 127.0, 37.0, 19.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* -0.1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-4",
									"fontsize" : 10.0,
									"patching_rect" : [ 107.0, 105.0, 40.0, 19.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-5",
									"fontsize" : 10.0,
									"patching_rect" : [ 59.0, 105.0, 35.0, 19.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-6",
									"fontsize" : 10.0,
									"patching_rect" : [ 59.0, 77.0, 64.0, 19.0 ],
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-7",
									"patching_rect" : [ 59.0, 215.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-8",
									"patching_rect" : [ 59.0, 58.0, 15.0, 15.0 ],
									"outlettype" : [ "list" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Verdana",
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
					"text" : "p DrawLCD",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-26",
					"fontsize" : 10.0,
					"patching_rect" : [ 485.0, 50.0, 64.0, 19.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 114.0, 248.0, 867.0, 419.0 ],
						"bglocked" : 0,
						"defrect" : [ 114.0, 248.0, 867.0, 419.0 ],
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
									"text" : "route dst_position bang",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-21",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 60.0, 130.0, 19.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess -3 -3 3 3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontsize" : 10.0,
									"patching_rect" : [ 155.0, 274.0, 104.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1+$f2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-2",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 278.0, 81.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0 150",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontsize" : 10.0,
									"patching_rect" : [ 155.0, 223.0, 88.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1+$f2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-4",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 227.0, 81.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 10. -10.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-5",
									"fontsize" : 10.0,
									"patching_rect" : [ 155.0, 195.0, 100.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1*$f2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-6",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 199.0, 79.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim 20",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-7",
									"fontsize" : 10.0,
									"patching_rect" : [ 680.0, 90.0, 46.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend drawsprite position",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-8",
									"fontsize" : 10.0,
									"patching_rect" : [ 680.0, 130.0, 149.0, 19.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"patching_rect" : [ 680.0, 25.0, 25.0, 25.0 ],
									"outlettype" : [ "list" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enablesprites 1, recordsprite, paintoval -5 -5 5 5 28, closesprite position",
									"linecount" : 5,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-10",
									"fontsize" : 10.0,
									"patching_rect" : [ 269.0, 184.0, 96.0, 65.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-11",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 130.0, 54.0, 19.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-15",
									"patching_rect" : [ 65.0, 25.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "paintrect 135 0 250 65 0 0 0, paintrect 0 98 60 100 0 0 0, paintrect 45 68 105 70 0 0 0, paintrect 109 100 111 150 0 0 0, paintrect 109 98 170 100, local 0",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-16",
									"fontsize" : 10.0,
									"patching_rect" : [ 370.0, 185.0, 210.0, 53.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear, local 0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-17",
									"fontsize" : 10.0,
									"patching_rect" : [ 585.0, 185.0, 71.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-18",
									"patching_rect" : [ 65.0, 355.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "paintoval $1 $2 $3 $4 74 105 182",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-19",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 316.0, 183.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1 $2 $1 $2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-20",
									"fontsize" : 10.0,
									"patching_rect" : [ 65.0, 255.0, 70.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 594.5, 342.0, 74.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 379.5, 342.0, 74.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 278.5, 342.0, 74.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 689.5, 342.0, 74.5, 342.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-27",
					"fontsize" : 10.0,
					"patching_rect" : [ 55.0, 345.0, 33.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-28",
					"fontsize" : 10.0,
					"patching_rect" : [ 10.0, 320.0, 80.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16",
					"fontname" : "Verdana",
					"numinlets" : 16,
					"numoutlets" : 0,
					"id" : "obj-29",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 380.0, 267.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "matrix~ 1 16 0.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 17,
					"id" : "obj-30",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 315.0, 284.0, 19.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "list" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-31",
					"fontsize" : 10.0,
					"patching_rect" : [ 450.0, 310.0, 63.0, 19.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "lcd",
					"numinlets" : 1,
					"enablesprites" : 1,
					"numoutlets" : 4,
					"id" : "obj-32",
					"local" : 0,
					"patching_rect" : [ 485.0, 75.0, 220.0, 150.0 ],
					"outlettype" : [ "list", "list", "int", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-33",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 260.0, 50.0, 19.0 ],
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.dbap @dimensions 2 @num_destinations 16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-34",
					"fontsize" : 10.0,
					"patching_rect" : [ 450.0, 285.0, 262.0, 19.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click in LCD display to position source",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-35",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 205.0, 221.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~ 440",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-36",
					"fontsize" : 10.0,
					"patching_rect" : [ 95.0, 230.0, 80.0, 19.0 ],
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Input:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 72.0, 130.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "speakers:",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-38",
					"fontsize" : 10.0,
					"patching_rect" : [ 38.0, 91.0, 69.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The dbap technique only depends on the relative positions of the speakers, so you can define origin of the coordinate system anywhere you find convinient.",
					"linecount" : 2,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-40",
					"fontsize" : 10.0,
					"patching_rect" : [ 15.0, 167.0, 413.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "volume (linear)",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontsize" : 10.0,
					"patching_rect" : [ 480.0, 405.0, 153.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-42",
					"fontsize" : 10.0,
					"patching_rect" : [ 701.0, 429.0, 27.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "rolloff $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-55",
					"fontsize" : 10.970939,
					"patching_rect" : [ 370.0, 255.0, 58.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 459.5, 306.0, 529.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 379.5, 282.0, 447.0, 282.0, 447.0, 282.0, 459.5, 282.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 270.0, 685.0, 270.0, 685.0, 241.0, 669.5, 241.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 233.0, 718.0, 233.0, 718.0, 42.0, 539.5, 42.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 336.0, 382.0, 336.0, 382.0, 308.0, 104.5, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 19.5, 370.0, 104.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 370.0, 104.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-29", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 3 ],
					"destination" : [ "obj-29", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 4 ],
					"destination" : [ "obj-29", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 5 ],
					"destination" : [ "obj-29", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 6 ],
					"destination" : [ "obj-29", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 7 ],
					"destination" : [ "obj-29", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 8 ],
					"destination" : [ "obj-29", 8 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 9 ],
					"destination" : [ "obj-29", 9 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 10 ],
					"destination" : [ "obj-29", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 11 ],
					"destination" : [ "obj-29", 11 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 12 ],
					"destination" : [ "obj-29", 12 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 13 ],
					"destination" : [ "obj-29", 13 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 14 ],
					"destination" : [ "obj-29", 14 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 15 ],
					"destination" : [ "obj-29", 15 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [ 529.5, 346.0, 489.5, 346.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
