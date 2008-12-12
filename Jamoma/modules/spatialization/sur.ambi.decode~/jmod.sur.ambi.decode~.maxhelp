{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 74.0, 81.0, 1113.0, 705.0 ],
		"bglocked" : 0,
		"defrect" : [ 74.0, 81.0, 1113.0, 705.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 10.",
					"outlettype" : [ "" ],
					"id" : "obj-1",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 242.0, 514.0, 69.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "weights/preset $1",
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 10.0, 385.0, 89.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "inphase",
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 90.0, 366.0, 44.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "basic",
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 53.0, 366.0, 36.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "default",
					"outlettype" : [ "" ],
					"id" : "obj-26",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"patching_rect" : [ 10.0, 366.0, 42.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.decode.cmd",
					"outlettype" : [ "" ],
					"id" : "obj-28",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 529.0, 417.0, 87.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p demo",
					"id" : "obj-19",
					"fontsize" : 20.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 428.0, 572.0, 90.0, 31.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -132.0, 466.0, 848.0, 467.0 ],
						"bglocked" : 0,
						"defrect" : [ -132.0, 466.0, 848.0, 467.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 226.0, 136.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1",
									"outlettype" : [ "int" ],
									"id" : "obj-6",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 3.0, 255.0, 24.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s #0_start",
									"id" : "obj-2",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 3.0, 281.0, 64.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 1000",
									"outlettype" : [ "bang" ],
									"id" : "obj-1",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 32.0, 201.0, 66.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/decode~/order 1, /decode~/audio/gain 100",
									"linecount" : 2,
									"presentation_linecount" : 5,
									"presentation" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontsize" : 12.0,
									"presentation_rect" : [ 714.0, 512.0, 67.0, 73.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 348.0, 232.0, 146.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/doppler~/numSources 1, /doppler~/metersPerUnit 1., /encodeM~/order 1",
									"linecount" : 3,
									"presentation_linecount" : 8,
									"presentation" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"fontsize" : 12.0,
									"presentation_rect" : [ 699.0, 497.0, 67.0, 115.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 508.0, 232.0, 161.0, 46.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/control/audio 1, /input~/audio/gain 100. ramp 2000",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 24.0, 230.0, 191.0, 29.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/control/audio 0, /input~/source 1KHz",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 692.0, 230.0, 116.0, 29.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.send jcom.remote.module.to",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 282.0, 422.0, 184.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/setup/preset/recall 2",
									"presentation_linecount" : 2,
									"presentation" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontsize" : 12.0,
									"presentation_rect" : [ 684.0, 482.0, 67.0, 32.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 222.0, 235.0, 122.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "delay 500",
									"outlettype" : [ "bang" ],
									"id" : "obj-4",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 162.0, 159.0, 60.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"id" : "obj-13",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 162.0, 130.0, 24.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route jmod.sur.output~",
									"outlettype" : [ "", "" ],
									"id" : "obj-3",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 162.0, 87.0, 131.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route module.initialized",
									"presentation" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-5",
									"fontsize" : 12.0,
									"presentation_rect" : [ 537.0, 201.0, 133.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 162.0, 64.0, 133.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"presentation" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-14",
									"fontsize" : 12.0,
									"presentation_rect" : [ 501.0, 139.0, 56.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 162.0, 108.0, 56.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.receive notifications",
									"presentation" : 1,
									"outlettype" : [ "", "" ],
									"id" : "obj-8",
									"fontsize" : 12.0,
									"presentation_rect" : [ 499.0, 117.0, 145.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 162.0, 41.0, 145.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-4", 0 ],
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
					"maxclass" : "comment",
					"text" : "speaker setup",
					"linecount" : 2,
					"id" : "obj-20",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 368.0, 463.0, 47.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p adapt",
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontsize" : 10.0,
					"presentation_rect" : [ 553.0, 428.0, 44.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 620.0, 326.0, 44.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 854.0, 277.0, 594.0, 433.0 ],
						"bglocked" : 0,
						"defrect" : [ 854.0, 277.0, 594.0, 433.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.route @searchstring /source. @searchpositions 1 @partialmatch 1",
									"linecount" : 2,
									"outlettype" : [ "", "", "" ],
									"id" : "obj-6",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"patching_rect" : [ 230.0, 160.0, 193.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /numSources",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 160.0, 78.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.0, 334.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /numSources",
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 122.0, 148.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 101.0, 89.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"text" : "p xyz2ambi",
					"outlettype" : [ "" ],
					"id" : "obj-74",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 210.0, 635.0, 56.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 490.0, 269.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 490.0, 269.0, 600.0, 426.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/speaker.4/position -3.535534 -3.535534 0.",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 77.0, 392.0, 232.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.decode.cmd",
									"id" : "obj-1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 125.0, 347.0, 89.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 102.0, 323.0, 75.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl nth 1",
									"outlettype" : [ "", "" ],
									"id" : "obj-5",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 17.0, 103.0, 44.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 53.0, 255.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess separator",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 35.0, 284.0, 101.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 17.0, 305.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /speaker.",
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 17.0, 143.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 102.0, 349.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-12",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 161.0, 64.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 31.0, 8.0, 24.0, 24.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * $f2 @scalarmode 1",
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 133.0, 157.0, 134.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append /position",
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 17.0, 207.0, 77.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 3",
									"outlettype" : [ "", "" ],
									"id" : "obj-17",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 132.0, 105.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 2",
									"outlettype" : [ "", "" ],
									"id" : "obj-18",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 17.0, 69.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-19",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 357.0, 10.0, 23.0, 23.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-5", 0 ],
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"outlettype" : [ "", "" ],
					"id" : "obj-75",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 211.0, 534.0, 100.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 587.0, 328.0, 1056.0, 634.0 ],
						"bglocked" : 0,
						"defrect" : [ 587.0, 328.0, 1056.0, 634.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * $f2 @scalarmode 1",
									"outlettype" : [ "" ],
									"id" : "obj-35",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 598.0, 396.0, 169.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"id" : "obj-11",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 293.0, 54.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "vexpr $f1 * 0.1",
									"outlettype" : [ "" ],
									"id" : "obj-30",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 103.0, 259.0, 88.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend xyz",
									"outlettype" : [ "" ],
									"id" : "obj-29",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 315.0, 72.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0",
									"outlettype" : [ "", "" ],
									"id" : "obj-56",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 162.0, 184.0, 47.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl rev",
									"outlettype" : [ "", "" ],
									"id" : "obj-55",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 162.0, 164.0, 38.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"outlettype" : [ "", "" ],
									"id" : "obj-33",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 68.0, 216.0, 54.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /speaker/position /speaker/active",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-22",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"patching_rect" : [ 68.0, 140.0, 210.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"id" : "obj-21",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 68.0, 119.0, 71.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"id" : "obj-14",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 68.0, 96.0, 45.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscinstance",
									"outlettype" : [ "", "", "", "" ],
									"id" : "obj-3",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Verdana",
									"patching_rect" : [ 68.0, 76.0, 97.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/numSpeakers $1",
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 425.0, 145.0, 100.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.decode.cmd",
									"id" : "obj-2",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 425.0, 170.0, 89.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.1",
									"outlettype" : [ "float" ],
									"id" : "obj-46",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 717.0, 149.0, 37.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.decode.cmd",
									"id" : "obj-1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 576.0, 505.0, 89.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl join",
									"outlettype" : [ "", "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 553.0, 481.0, 75.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess separator",
									"outlettype" : [ "" ],
									"id" : "obj-40",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 486.0, 442.0, 101.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"outlettype" : [ "" ],
									"id" : "obj-8",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 468.0, 463.0, 51.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /speaker.",
									"outlettype" : [ "" ],
									"id" : "obj-9",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 468.0, 301.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 553.0, 507.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"id" : "obj-12",
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 674.0, 188.0, 44.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-13",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 725.0, 113.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append /position",
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 468.0, 365.0, 77.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 1",
									"outlettype" : [ "", "" ],
									"id" : "obj-38",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 469.0, 269.0, 54.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-34",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 198.0, 423.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend delete",
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 353.0, 214.0, 86.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"outlettype" : [ "int" ],
									"id" : "obj-26",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 353.0, 187.0, 32.5, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i",
									"outlettype" : [ "int", "int" ],
									"id" : "obj-25",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 353.0, 112.0, 32.5, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"outlettype" : [ "bang", "bang", "int" ],
									"id" : "obj-23",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"patching_rect" : [ 353.0, 159.0, 46.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 32",
									"outlettype" : [ "int" ],
									"id" : "obj-20",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 353.0, 136.0, 35.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /numSpeakers",
									"outlettype" : [ "", "" ],
									"id" : "obj-27",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 135.0, 46.0, 119.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-32",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 134.0, 14.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 144.5, 72.0, 177.0, 72.0, 177.0, 99.0, 362.5, 99.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 2 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-26", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 244.5, 68.0, 165.0, 68.0, 165.0, 68.0, 77.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 77.5, 211.0, 218.0, 211.0, 218.0, 255.0, 478.5, 255.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 171.5, 207.0, 339.0, 207.0, 339.0, 210.0, 362.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-11", 1 ],
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
					"maxclass" : "bpatcher",
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-76",
					"name" : "jmod.sur.speaker.setup.maxpat",
					"args" : [ "setup" ],
					"presentation_rect" : [ 250.0, 471.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 211.0, 442.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"hint" : "here you can position the speakers, see also the default preset of the /setup module",
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-77",
					"name" : "ambimonitor.maxpat",
					"args" : [  ],
					"presentation_rect" : [ 50.0, 464.0, 201.0, 216.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 6.0, 442.0, 201.0, 216.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 10.",
					"outlettype" : [ "" ],
					"id" : "obj-78",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 210.0, 609.0, 69.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<--- double click to see meters of the decoded signal",
					"linecount" : 2,
					"id" : "obj-72",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 922.0, 509.0, 177.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<--- double click to see  meters of the encoded signal",
					"linecount" : 2,
					"id" : "obj-71",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 922.0, 419.0, 177.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p adapt",
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-61",
					"fontsize" : 10.0,
					"presentation_rect" : [ 539.0, 504.0, 44.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 621.0, 508.0, 44.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 677.0, 485.0, 721.0, 429.0 ],
						"bglocked" : 0,
						"defrect" : [ 677.0, 485.0, 721.0, 429.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.route @searchstring /speaker. @searchpositions 1 @partialmatch 1",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-6",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"patching_rect" : [ 349.0, 267.0, 379.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-5",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 214.0, 326.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /numSpeakers",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 211.0, 268.0, 129.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /channels",
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 274.0, 104.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.0, 334.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /numSpeakers",
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 122.0, 114.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 101.0, 89.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-3", 0 ],
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
					"text" : "jmod.sur.meters~ /AudioSignals",
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-41",
					"fontsize" : 10.0,
					"presentation_rect" : [ 584.0, 505.0, 254.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 666.0, 509.0, 254.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p adapt",
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-54",
					"fontsize" : 10.0,
					"presentation_rect" : [ 538.0, 413.0, 44.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 620.0, 417.0, 44.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 629.0, 47.0, 440.0, 384.0 ],
						"bglocked" : 0,
						"defrect" : [ 629.0, 47.0, 440.0, 384.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /channels",
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 274.0, 104.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of ambisonics channels depending on the selected order",
									"linecount" : 3,
									"id" : "obj-14",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"patching_rect" : [ 240.0, 154.0, 150.0, 43.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "clip 1 32",
									"outlettype" : [ "" ],
									"id" : "obj-12",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 194.0, 54.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr pow(($i1 + 1) \\, 2)",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 165.0, 134.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.0, 334.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /order",
									"outlettype" : [ "", "" ],
									"id" : "obj-2",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 122.0, 72.0, 19.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 101.0, 89.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
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
					"text" : "jmod.sur.meters~ /AmbiSignals",
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-46",
					"fontsize" : 10.0,
					"presentation_rect" : [ 583.0, 414.0, 255.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 665.0, 418.0, 255.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.ambi.decode~",
					"id" : "obj-68",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 9.0, 8.0, 271.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "decode ambisonic audio signal",
					"id" : "obj-69",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 9.0, 34.0, 345.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Split multicable signal",
					"linecount" : 2,
					"id" : "obj-4",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 934.0, 627.0, 94.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"name" : "jmod.sur.output~.maxpat",
					"args" : [ "/output~" ],
					"presentation_rect" : [ 538.0, 606.0, 300.0, 70.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 620.0, 610.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Correct for varying speaker distances",
					"linecount" : 2,
					"id" : "obj-6",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 934.0, 552.0, 100.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic decoding",
					"id" : "obj-7",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 934.0, 461.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic encoding",
					"id" : "obj-8",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 934.0, 376.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Doppler effect",
					"id" : "obj-9",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 934.0, 285.0, 100.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multi.in~",
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"name" : "jmod.sur.multi.in~.maxpat",
					"args" : [ "/multi.in~" ],
					"presentation_rect" : [ 538.0, 172.0, 300.0, 70.0 ],
					"numinlets" : 33,
					"numoutlets" : 2,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 620.0, 180.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ellipse",
					"outlettype" : [ "", "" ],
					"id" : "obj-14",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 453.0, 27.0, 47.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 947.0, 203.0, 601.0, 531.0 ],
						"bglocked" : 0,
						"defrect" : [ 947.0, 203.0, 601.0, 531.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r #0_start",
									"outlettype" : [ "" ],
									"id" : "obj-11",
									"fontsize" : 10.0,
									"numinlets" : 0,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 10.0, 347.0, 62.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"outlettype" : [ "" ],
									"id" : "obj-5",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 36.0, 382.0, 47.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/source.1/position $2 0. $1",
									"outlettype" : [ "" ],
									"id" : "obj-28",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 64.0, 347.0, 116.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 422.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "swap",
									"outlettype" : [ "int", "int" ],
									"id" : "obj-1",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 330.0, 318.0, 74.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 330.0, 386.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 330.0, 345.0, 74.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 1.",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 64.0, 318.0, 52.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 330.0, 292.0, 34.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "round",
									"outlettype" : [ "" ],
									"id" : "obj-7",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 394.0, 292.0, 34.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"outlettype" : [ "float" ],
									"id" : "obj-8",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 394.0, 267.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 330.0, 267.0, 42.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $f1*180./3.141593",
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 96.0, 287.0, 129.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0. 20",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-12",
									"fontsize" : 9.0,
									"numinlets" : 3,
									"numoutlets" : 3,
									"fontname" : "Arial",
									"patching_rect" : [ 64.0, 153.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cartopol",
									"outlettype" : [ "float", "float" ],
									"id" : "obj-13",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 64.0, 260.0, 52.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 10.",
									"outlettype" : [ "float" ],
									"id" : "obj-14",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 106.0, 207.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sin",
									"outlettype" : [ "float" ],
									"id" : "obj-15",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 106.0, 180.0, 20.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* -8.",
									"outlettype" : [ "float" ],
									"id" : "obj-16",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 64.0, 207.0, 32.5, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cos",
									"outlettype" : [ "float" ],
									"id" : "obj-17",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 64.0, 180.0, 23.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0, 6.283185 9000",
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 64.0, 133.0, 95.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 9000",
									"outlettype" : [ "bang" ],
									"id" : "obj-19",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 63.0, 92.0, 64.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dspstate~",
									"outlettype" : [ "int", "float", "int", "int" ],
									"id" : "obj-20",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontname" : "Arial",
									"patching_rect" : [ 63.0, 68.0, 54.0, 17.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 73.5, 250.0, 339.5, 250.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 115.5, 246.0, 403.5, 246.0 ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 1 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-9", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 1 ],
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/doppler~",
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-15",
					"name" : "jmod.sur.doppler~.maxpat",
					"args" : [ "/doppler~" ],
					"presentation_rect" : [ 538.0, 258.0, 300.0, 70.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 620.0, 255.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/speaker.delay~",
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-16",
					"name" : "jmod.sur.speaker.delay~.maxpat",
					"args" : [ "/delay~" ],
					"presentation_rect" : [ 688.0, 530.0, 150.0, 70.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 770.0, 532.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loudspeaker positions are not stored as part of this module. They will be maintained by a separate module to be added in the future.",
					"linecount" : 2,
					"id" : "obj-18",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 5.0, 662.0, 278.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/third $1",
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 179.0, 402.0, 53.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-30",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"minimum" : 0.0,
					"maximum" : 2.0,
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 140.0, 402.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/second $1",
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 179.0, 383.0, 56.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-32",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"minimum" : 0.0,
					"maximum" : 2.0,
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 140.0, 383.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/first $1",
					"outlettype" : [ "" ],
					"id" : "obj-33",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 179.0, 364.0, 52.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-34",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"minimum" : 0.0,
					"maximum" : 2.0,
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 140.0, 364.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/omni $1",
					"outlettype" : [ "" ],
					"id" : "obj-35",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 179.0, 345.0, 52.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-36",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"minimum" : 0.0,
					"maximum" : 2.0,
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 140.0, 345.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/decode~",
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-42",
					"name" : "jmod.sur.ambi.decode~.maxpat",
					"args" : [ "/decode~" ],
					"presentation_rect" : [ 538.0, 433.0, 300.0, 70.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 620.0, 437.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/encodeM~",
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-43",
					"name" : "jmod.sur.ambi.encodeM~.maxpat",
					"args" : [ "/encodeM~" ],
					"presentation_rect" : [ 538.0, 341.0, 300.0, 70.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 620.0, 345.0, 300.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.decode.cmd",
					"id" : "obj-45",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 262.0, 88.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.decode.cmd",
					"id" : "obj-47",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 261.0, 339.0, 94.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "" ],
					"id" : "obj-49",
					"name" : "jmod.gain_params.maxpat",
					"args" : [  ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 4.0, 68.0, 374.0, 219.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module Specific Attributes",
					"id" : "obj-50",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 7.0, 308.0, 236.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-55",
					"name" : "jmod.control.maxpat",
					"args" : [ "/control" ],
					"presentation_rect" : [ 536.0, 528.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 618.0, 532.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"presentation" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"id" : "obj-56",
					"name" : "jmod.input~.maxpat",
					"args" : [ "/input~" ],
					"presentation_rect" : [ 538.0, 14.0, 300.0, 140.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 620.0, 18.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/order $1",
					"outlettype" : [ "" ],
					"id" : "obj-57",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 77.0, 345.0, 47.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-58",
					"fontsize" : 9.0,
					"triscale" : 0.9,
					"minimum" : 1,
					"maximum" : 3,
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 40.0, 345.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"leftmargin" : 4,
					"rightmargin" : 4,
					"outlettype" : [ "int", "int" ],
					"rightvalue" : 100,
					"bkgndpict" : "SliderDefaultBkgnd.pct",
					"id" : "obj-66",
					"topvalue" : 100,
					"imagemask" : 1,
					"bottomvalue" : -100,
					"topmargin" : 4,
					"knobpict" : "SliderDefaultKnob.pct",
					"numinlets" : 2,
					"bottommargin" : 4,
					"leftvalue" : -100,
					"numoutlets" : 2,
					"patching_rect" : [ 475.0, 49.0, 144.0, 144.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pack signal on multicable",
					"linecount" : 2,
					"id" : "obj-67",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 934.0, 197.0, 100.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation" : 1,
					"rounded" : 15,
					"id" : "obj-62",
					"presentation_rect" : [ 5.0, 4.0, 351.0, 53.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 4.0, 373.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"id" : "obj-44",
					"numinlets" : 1,
					"numoutlets" : 0,
					"background" : 1,
					"patching_rect" : [ 5.0, 334.0, 373.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 15,
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 0,
					"background" : 1,
					"patching_rect" : [ 5.0, 306.0, 373.0, 27.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-75", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 1 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 770.0, 165.0, 638.28125, 165.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 490.5, 46.0, 484.5, 46.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [ 220.5, 558.0, 208.0, 558.0, 208.0, 435.0, 15.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-74", 1 ],
					"hidden" : 0,
					"midpoints" : [ 197.5, 660.0, 268.0, 660.0, 268.0, 630.0, 256.5, 630.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 1 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 538.5, 436.0, 615.0, 436.0, 615.0, 435.0, 629.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-15", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 462.5, 252.0, 629.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-46", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 655.5, 528.0, 779.5, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
