{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 53.0, 44.0, 999.0, 693.0 ],
		"bglocked" : 0,
		"defrect" : [ 53.0, 44.0, 999.0, 693.0 ],
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
					"maxclass" : "jit.fpsgui",
					"fontsize" : 9.873845,
					"presentation_rect" : [ 405.0, 102.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 409.0, 113.0, 60.0, 35.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 517.0, 103.0, 80.0, 60.0 ],
					"id" : "obj-1",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 1000",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 61.0, 412.0, 64.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mode 1",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 61.0, 433.0, 50.0, 16.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A motiongram is a way of displaying motion (e.g. human motion) in the time-domain, somehow similar to how we are used to working with time-representations of audio (e.g. waveform displays and sono/spectrograms).\r\rThe method is based on creating a motion image, doing a matrix reduction on it and plotting the resultant 1xn or nx1 matrices over time either horizontally or vertically.",
					"linecount" : 11,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 665.0, 484.0, 240.0, 140.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more-about-motiongrams",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 704.0, 633.0, 151.0, 19.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
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
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 487.0, 325.0, 420.0, 210.0 ],
									"pic" : "dancers_t005_brcosa2.jpg",
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 487.0, 146.0, 434.0, 128.0 ],
									"pic" : "aashild_full4_lines.jpg",
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 46.0, 325.0, 414.0, 319.0 ],
									"pic" : "tri_bw2.jpg",
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 36.0, 148.0, 432.0, 178.0 ],
									"pic" : "visualization.gif",
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Motiongrams of three dancers doing free movements to the same excerpts of music repeated three times (total time displayed is approximately 40 seconds). It is easy to follow the two hands (yellow and read) and head (pink due to saturation), as well as the body (appears as blue stripes due to the blue background).",
									"linecount" : 4,
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 488.0, 271.0, 430.0, 54.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The resultant displays are useful for inspecting repetitive motion, such as this\rmotiongram of a 5 minute video of free dance movements to music. The dancer moved to 5 different musical excerpts (a-e) and each excerpt was repeated three times (1-3). Although quite rough, it is easy to see differences in quantity of motion and similarities in upward/downward patterns between the sequences. \r",
									"linecount" : 5,
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 488.0, 72.0, 418.0, 66.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Motiongrams",
									"fontsize" : 17.334082,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 36.0, 122.0, 28.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A motiongram is a way of displaying motion (e.g. human motion) in the time-domain, somehow similar to how we are used to working with time-representations of audio (e.g. waveform displays and sono/spectrograms).\r\rThe method is based on creating a motion image, doing a matrix reduction on it and plotting the resultant 1xn or nx1 matrices over time either horizontally or vertically.",
									"linecount" : 6,
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 47.0, 72.0, 433.0, 78.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Reference:\r- Jensenius, A. R. (2006). Using motiongrams in the study of musical gestures. In Proceedings of the 2006 International Computer Music Conference, 6-11 November, New Orleans. (PDF available from http://musicalgestures.uio.no)",
									"linecount" : 4,
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 488.0, 585.0, 406.0, 54.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"default_fontsize" : 10.0,
						"fontsize" : 10.0,
						"fontname" : "Verdana",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 317.0, 26.0, 300.0, 70.0 ],
					"id" : "obj-10",
					"outlettype" : [ "", "" ],
					"name" : "jmod.input%.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "jit.pwindow[3]",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 633.0, 263.0, 20.0, 180.0 ],
					"id" : "obj-13",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/motiongram-horizontal",
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 630.0, 169.0, 300.0, 70.0 ],
					"id" : "obj-14",
					"outlettype" : [ "", "", "" ],
					"name" : "jmod.motiongram%.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 657.0, 263.0, 240.0, 180.0 ],
					"id" : "obj-15",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "jit.pwindow[2]",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 385.0, 456.0, 240.0, 20.0 ],
					"id" : "obj-16",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/motiongram-vertical",
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"numoutlets" : 3,
					"patching_rect" : [ 61.0, 456.0, 300.0, 70.0 ],
					"id" : "obj-17",
					"outlettype" : [ "", "", "" ],
					"name" : "jmod.motiongram%.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 385.0, 482.0, 240.0, 180.0 ],
					"id" : "obj-18",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 61.0, 390.0, 54.0, 18.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s module",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 225.0, 54.0, 18.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"args" : [  ],
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 12.0, 74.0, 260.0, 146.0 ],
					"id" : "obj-23",
					"outlettype" : [ "" ],
					"name" : "jmod.video_params.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.motiongram%",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 20.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 8.0, 212.0, 31.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "creates motiongrams from video stream",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 39.0, 254.0, 21.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 273.0, 63.0 ],
					"id" : "obj-26",
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 385.0, 263.0, 240.0, 180.0 ],
					"id" : "obj-27",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/motion%",
					"args" : [ "/motion%" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 317.0, 169.0, 300.0, 70.0 ],
					"id" : "obj-28",
					"outlettype" : [ "", "" ],
					"name" : "jmod.motion%.maxpat"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 607.5, 96.0, 504.0, 96.0, 504.0, 108.0, 418.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 607.5, 97.0, 526.5, 97.0 ]
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 607.5, 249.0, 351.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 607.5, 249.0, 394.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 211.0, 537.0, 380.0, 537.0, 380.0, 459.0, 394.5, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 351.5, 528.0, 372.0, 528.0, 372.0, 483.0, 394.5, 483.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 780.0, 244.0, 642.5, 244.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 920.5, 249.0, 666.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 607.5, 239.0, 623.0, 239.0, 623.0, 160.0, 920.5, 160.0 ]
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
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [ 607.5, 165.0, 607.5, 165.0 ]
				}

			}
 ]
	}

}
