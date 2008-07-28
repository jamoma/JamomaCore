{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 182.0, 288.0, 1034.0, 552.0 ],
		"bglocked" : 0,
		"defrect" : [ 182.0, 288.0, 1034.0, 552.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more-about-motion-images",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-1",
					"fontsize" : 9.0,
					"patching_rect" : [ 745.0, 35.0, 141.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 80.0, 166.0, 1042.0, 408.0 ],
						"bglocked" : 0,
						"defrect" : [ 80.0, 166.0, 1042.0, 408.0 ],
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
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-1",
									"patching_rect" : [ 35.0, 91.0, 947.0, 222.0 ],
									"pic" : "aashild_strip.jpg"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Motion Images",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-2",
									"fontsize" : 18.0,
									"patching_rect" : [ 36.0, 24.0, 136.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Added to original",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-3",
									"fontsize" : 9.0,
									"patching_rect" : [ 857.0, 332.0, 86.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "with trails (motion history image)",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontsize" : 9.0,
									"patching_rect" : [ 634.0, 332.0, 164.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "with edge detection",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-5",
									"fontsize" : 9.0,
									"patching_rect" : [ 423.0, 332.0, 101.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "with noise reduction",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 230.0, 332.0, 101.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Raw motion image",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 52.0, 332.0, 91.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Some different flavours of motion images, and how they can be used to display motion qualities in a video sequence, here of dance improvisation.",
									"linecount" : 2,
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 36.0, 58.0, 350.0, 27.0 ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%[1]",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ],
					"name" : "jmod.input%.maxpat",
					"patching_rect" : [ 312.0, 32.0, 301.0, 71.0 ],
					"args" : [ "/input%" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"patching_rect" : [ 674.0, 257.0, 320.0, 240.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p analysis-data",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontsize" : 9.0,
					"patching_rect" : [ 312.0, 216.0, 79.0, 17.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 157.0, 44.0, 604.0, 357.0 ],
						"bglocked" : 0,
						"defrect" : [ 157.0, 44.0, 604.0, 357.0 ],
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
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 27.0, 25.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 27.0, 49.0, 29.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"setminmax" : [ 0.0, 1.0 ],
									"numinlets" : 1,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-3",
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"setstyle" : 5,
									"outlettype" : [ "", "" ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"patching_rect" : [ 379.0, 204.0, 160.0, 87.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"setminmax" : [ 0.0, 1.0 ],
									"numinlets" : 1,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-4",
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"setstyle" : 5,
									"outlettype" : [ "", "" ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"patching_rect" : [ 205.0, 204.0, 160.0, 87.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/clear",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 39.0, 163.0, 39.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Motion location - y",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-6",
									"fontsize" : 9.0,
									"patching_rect" : [ 384.0, 146.0, 95.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Motion location - x",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontsize" : 9.0,
									"patching_rect" : [ 214.0, 146.0, 95.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Quantity of Motion (QoM)",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-8",
									"fontsize" : 9.0,
									"patching_rect" : [ 46.0, 146.0, 123.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-9",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 379.0, 129.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-10",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 205.0, 129.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.autoscale @mode 3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "float", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 27.0, 183.0, 120.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"id" : "obj-12",
									"triscale" : 0.9,
									"outlettype" : [ "float", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"patching_rect" : [ 44.0, 129.0, 53.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /quantity /x /y",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 4,
									"id" : "obj-13",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 27.0, 98.0, 150.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"setminmax" : [ 0.0, 1.0 ],
									"numinlets" : 1,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-14",
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"setstyle" : 5,
									"outlettype" : [ "", "" ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"patching_rect" : [ 27.0, 204.0, 160.0, 87.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /motion /contraction",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3,
									"id" : "obj-15",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 9.0,
									"patching_rect" : [ 27.0, 71.0, 173.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.0, 25.0, 15.0, 15.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "For these to work, the relevant streams need to be turned on in the inspector.",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"id" : "obj-17",
									"fontsize" : 9.0,
									"patching_rect" : [ 223.0, 71.0, 361.0, 17.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 123.833336, 122.0, 388.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 80.166664, 122.0, 214.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 36.5, 125.0, 53.5, 125.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 0.",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-5",
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 312.0, 521.0, 46.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 0.",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-6",
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 605.0, 238.0, 46.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setminmax" : [ 0.0, 1.0 ],
					"numinlets" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-7",
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"patching_rect" : [ 631.0, 258.0, 20.0, 240.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setminmax" : [ 0.0, 1.0 ],
					"orientation" : 0,
					"numinlets" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-8",
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"patching_rect" : [ 312.0, 498.0, 320.0, 20.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 88.0, 385.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/color $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 385.0, 54.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"fontname" : "Arial",
					"types" : [  ],
					"numoutlets" : 3,
					"id" : "obj-11",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 48.0, 315.0, 55.0, 17.0 ],
					"pattrmode" : 1,
					"items" : [ "none", ",", "Sobel", ",", "Prewitt", ",", "Robcross", ",", "Binedge" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 88.0, 367.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/trails $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 367.0, 56.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-14",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 68.0, 333.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/edge_thresh $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 333.0, 86.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/algorithm $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 315.0, 74.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module Controls",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontsize" : 18.0,
					"patching_rect" : [ 15.0, 228.0, 206.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Specific module messages",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-18",
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 258.0, 252.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 88.0, 350.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-20",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 68.0, 298.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/slide $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 298.0, 52.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"id" : "obj-22",
					"triscale" : 0.9,
					"outlettype" : [ "float", "bang" ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 68.0, 281.0, 35.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/threshold $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 281.0, 73.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/noise $1",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 350.0, 54.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.motion%.cmd",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-25",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 106.0, 404.0, 103.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.motion%.cmd",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 312.0, 113.0, 103.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.motion%.cmd",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-27",
					"hidden" : 1,
					"fontsize" : 9.0,
					"patching_rect" : [ 12.0, 225.0, 103.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "" ],
					"name" : "jmod.video_params.maxpat",
					"patching_rect" : [ 12.0, 77.0, 260.0, 146.0 ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.motion%",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-29",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 18.0,
					"patching_rect" : [ 28.0, 16.0, 189.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "change orientation and size of video",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-30",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"patching_rect" : [ 29.0, 42.0, 242.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-31",
					"patching_rect" : [ 0.0, 0.0, 273.0, 63.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-32",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"patching_rect" : [ 311.0, 257.0, 320.0, 240.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/motion%",
					"numinlets" : 2,
					"lockeddragscroll" : 1,
					"numoutlets" : 2,
					"id" : "obj-33",
					"outlettype" : [ "", "" ],
					"name" : "jmod.motion2%.maxpat",
					"patching_rect" : [ 312.0, 133.0, 301.0, 72.0 ],
					"args" : [ "/motion%" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"background" : 1,
					"numinlets" : 1,
					"bgcolor" : [ 0.901961, 0.839216, 0.564706, 1.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-34",
					"patching_rect" : [ 12.0, 227.0, 260.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"background" : 1,
					"numinlets" : 1,
					"bgcolor" : [ 0.996078, 0.945098, 0.705882, 1.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-35",
					"patching_rect" : [ 12.0, 258.0, 260.0, 148.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /motion/x /motion/y",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 3,
					"id" : "obj-36",
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.0,
					"patching_rect" : [ 395.0, 216.0, 176.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Usually, better results are obtained if the video is pre-processed before the motion image is calculated. Try for example: \r\r- Zoom and offset the video so that only the area of interest is visible (even better to do this by optimizing the position of the camera, but this is not always possible).\r\r- Turn up the brightness and contrast, and turn down the saturation (the success of this is highly dependant on the camera used). ",
					"linecount" : 11,
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"id" : "obj-37",
					"fontsize" : 9.0,
					"patching_rect" : [ 714.0, 64.0, 241.0, 120.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 404.5, 243.0, 297.0, 243.0, 297.0, 516.0, 321.5, 516.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 603.5, 118.0, 683.5, 118.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 483.0, 243.0, 591.0, 243.0, 591.0, 234.0, 614.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-33", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [ 321.5, 209.0, 404.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 603.5, 248.0, 320.5, 248.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 321.5, 213.0, 321.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
 ]
	}

}
