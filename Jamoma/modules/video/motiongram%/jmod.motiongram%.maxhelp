{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 47.0, 44.0, 1226.0, 649.0 ],
		"bglocked" : 0,
		"defrect" : [ 47.0, 44.0, 1226.0, 649.0 ],
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
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"presentation_rect" : [ 352.0, 186.0, 0.0, 0.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 288.0, 164.0, 240.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module Controls",
					"fontsize" : 17.334082,
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 243.0, 206.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Specific module messages",
					"fontsize" : 11.556055,
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 273.0, 252.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"patching_rect" : [ 941.0, 366.0, 60.0, 34.092003 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 1000",
					"outlettype" : [ "bang" ],
					"fontsize" : 9.873845,
					"hidden" : 1,
					"id" : "obj-4",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 281.0, 384.0, 64.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mode 1",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"hidden" : 1,
					"id" : "obj-5",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 281.0, 405.0, 50.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A motiongram is a way of displaying motion (e.g. human motion) in the time-domain, somehow similar to how we are used to working with time-representations of audio (e.g. waveform displays and sono/spectrograms).\r\rThe method is based on creating a motion image, doing a matrix reduction on it and plotting the resultant 1xn or nx1 matrices over time either horizontally or vertically.",
					"linecount" : 10,
					"fontsize" : 12.0,
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 306.0, 457.0, 302.0, 152.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more-about-motiongrams",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 382.0, 613.0, 179.0, 21.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 57.0, 44.0, 955.0, 711.0 ],
						"bglocked" : 0,
						"defrect" : [ 57.0, 44.0, 955.0, 711.0 ],
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
									"maxclass" : "fpic",
									"id" : "obj-1",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 487.0, 325.0, 420.0, 210.0 ],
									"pic" : "dancers_t005_brcosa2.jpg"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 487.0, 146.0, 434.0, 128.0 ],
									"pic" : "aashild_full4_lines.jpg"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"id" : "obj-3",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 46.0, 325.0, 414.0, 319.0 ],
									"pic" : "tri_bw2.jpg"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"id" : "obj-4",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 36.0, 148.0, 432.0, 178.0 ],
									"pic" : "visualization.gif"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Motiongrams of three dancers doing free movements to the same excerpts of music repeated three times (total time displayed is approximately 40 seconds). It is easy to follow the two hands (yellow and read) and head (pink due to saturation), as well as the body (appears as blue stripes due to the blue background).",
									"linecount" : 4,
									"fontsize" : 9.873845,
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 488.0, 271.0, 426.0, 54.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The resultant displays are useful for inspecting repetitive motion, such as this\rmotiongram of a 5 minute video of free dance movements to music. The dancer moved to 5 different musical excerpts (a-e) and each excerpt was repeated three times (1-3). Although quite rough, it is easy to see differences in quantity of motion and similarities in upward/downward patterns between the sequences. \r",
									"linecount" : 5,
									"fontsize" : 9.873845,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 488.0, 72.0, 411.0, 66.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Motiongrams",
									"fontsize" : 17.334082,
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 36.0, 122.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A motiongram is a way of displaying motion (e.g. human motion) in the time-domain, somehow similar to how we are used to working with time-representations of audio (e.g. waveform displays and sono/spectrograms).\r\rThe method is based on creating a motion image, doing a matrix reduction on it and plotting the resultant 1xn or nx1 matrices over time either horizontally or vertically.",
									"linecount" : 6,
									"fontsize" : 9.873845,
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 72.0, 429.0, 78.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Reference:\r- Jensenius, A. R. (2006). Using motiongrams in the study of musical gestures. In Proceedings of the 2006 International Computer Music Conference, 6-11 November, New Orleans. (PDF available from http://musicalgestures.uio.no)",
									"linecount" : 4,
									"fontsize" : 9.873845,
									"id" : "obj-9",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 488.0, 585.0, 406.0, 54.0 ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"outlettype" : [ "", "" ],
					"name" : "jmod.input%.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 288.0, 70.0, 300.0, 70.0 ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "jit.pwindow[3]",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 917.0, 164.0, 20.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/motiongram-horizontal",
					"outlettype" : [ "", "", "" ],
					"name" : "jmod.motiongram%.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-14",
					"numinlets" : 2,
					"lockeddragscroll" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 914.0, 70.0, 300.0, 70.0 ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 941.0, 164.0, 240.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "jit.pwindow[2]",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 669.0, 357.0, 240.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/motiongram-vertical",
					"outlettype" : [ "", "", "" ],
					"name" : "jmod.motiongram%.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-17",
					"numinlets" : 2,
					"lockeddragscroll" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 345.0, 357.0, 300.0, 70.0 ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 669.0, 383.0, 240.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontsize" : 9.873845,
					"hidden" : 1,
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"patching_rect" : [ 281.0, 362.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s module",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 225.0, 54.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "" ],
					"name" : "jmod.video_params.maxpat",
					"id" : "obj-23",
					"numinlets" : 0,
					"lockeddragscroll" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 12.0, 74.0, 260.0, 146.0 ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.motiongram%",
					"fontsize" : 20.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 8.0, 212.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "creates motiongrams from video stream",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 39.0, 254.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 273.0, 63.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0,
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 669.0, 164.0, 240.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/motion%",
					"outlettype" : [ "", "" ],
					"name" : "jmod.motion%.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-28",
					"numinlets" : 2,
					"lockeddragscroll" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 601.0, 70.0, 300.0, 70.0 ],
					"args" : [ "/motion%" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.901961, 0.839216, 0.564706, 1.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 242.0, 265.0, 27.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.996078, 0.945098, 0.705882, 1.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 273.0, 264.0, 123.0 ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [ 578.5, 141.0, 597.0, 141.0, 597.0, 57.0, 891.5, 57.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 578.5, 150.0, 297.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 891.5, 140.0, 909.0, 140.0, 909.0, 56.0, 1204.5, 56.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1204.5, 150.0, 950.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1064.0, 150.0, 926.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 635.5, 429.0, 666.0, 429.0, 666.0, 384.0, 678.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 495.0, 438.0, 666.0, 438.0, 666.0, 360.0, 678.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 891.5, 150.0, 678.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 891.5, 150.0, 635.5, 150.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
