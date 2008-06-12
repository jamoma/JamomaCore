{
	"patcher" : 	{
		"rect" : [ 316.0, 44.0, 911.0, 733.0 ],
		"bglocked" : 0,
		"defrect" : [ 316.0, 44.0, 911.0, 733.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module Controls",
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 243.0, 206.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999,
					"fontname" : "Verdana",
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Specific module messages",
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 273.0, 252.0, 21.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.533333,
					"fontname" : "Verdana",
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"patching_rect" : [ 555.0, 542.0, 60.0, 30.533276 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 1000",
					"numinlets" : 2,
					"patching_rect" : [ 19.0, 441.0, 61.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/mode 1",
					"numinlets" : 2,
					"patching_rect" : [ 19.0, 462.0, 48.0, 15.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A motiongram is a way of displaying motion (e.g. human motion) in the time-domain, somehow similar to how we are used to working with time-representations of audio (e.g. waveform displays and sono\/spectrograms).\r\rThe method is based on creating a motion image, doing a matrix reduction on it and plotting the resultant 1xn or nx1 matrices over time either horizontally or vertically.",
					"linecount" : 10,
					"numinlets" : 1,
					"patching_rect" : [ 639.0, 28.0, 206.0, 112.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p more-information",
					"numinlets" : 0,
					"patching_rect" : [ 735.0, 169.0, 98.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-7",
					"patcher" : 					{
						"rect" : [ 57.0, 44.0, 955.0, 711.0 ],
										"bglocked" : 0,
						"defrect" : [ 57.0, 44.0, 955.0, 711.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxfadetime" : 200,
						"boxanimatetime" : 200,
						"scrollanimatetime" : 200,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"patching_rect" : [ 487.0, 325.0, 420.0, 210.0 ],
									"numoutlets" : 0,
									"id" : "obj-1",
									"pic" : "dancers_t005_brcosa2.jpg"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"patching_rect" : [ 487.0, 146.0, 434.0, 128.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"pic" : "aashild_full4_lines.jpg"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"patching_rect" : [ 46.0, 325.0, 414.0, 319.0 ],
									"numoutlets" : 0,
									"id" : "obj-3",
									"pic" : "tri_bw2.jpg"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"numinlets" : 1,
									"patching_rect" : [ 36.0, 148.0, 432.0, 178.0 ],
									"numoutlets" : 0,
									"id" : "obj-4",
									"pic" : "visualization.gif"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Motiongrams of three dancers doing free movements to the same excerpts of music repeated three times (total time displayed is approximately 40 seconds). It is easy to follow the two hands (yellow and read) and head (pink due to saturation), as well as the body (appears as blue stripes due to the blue background).",
									"linecount" : 4,
									"numinlets" : 1,
									"patching_rect" : [ 488.0, 271.0, 407.0, 49.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The resultant displays are useful for inspecting repetitive motion, such as this\rmotiongram of a 5 minute video of free dance movements to music. The dancer moved to 5 different musical excerpts (a-e) and each excerpt was repeated three times (1-3). Although quite rough, it is easy to see differences in quantity of motion and similarities in upward\/downward patterns between the sequences. \r",
									"linecount" : 5,
									"numinlets" : 1,
									"patching_rect" : [ 488.0, 72.0, 401.0, 59.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Motiongrams",
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 36.0, 122.0, 28.0 ],
									"numoutlets" : 0,
									"fontsize" : 15.799999,
									"fontname" : "Verdana",
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A motiongram is a way of displaying motion (e.g. human motion) in the time-domain, somehow similar to how we are used to working with time-representations of audio (e.g. waveform displays and sono\/spectrograms).\r\rThe method is based on creating a motion image, doing a matrix reduction on it and plotting the resultant 1xn or nx1 matrices over time either horizontally or vertically.",
									"linecount" : 6,
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 72.0, 399.0, 70.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Reference:\r- Jensenius, A. R. (2006). Using motiongrams in the study of musical gestures. In Proceedings of the 2006 International Computer Music Conference, 6-11 November, New Orleans. (PDF available from http:\/\/musicalgestures.uio.no)",
									"linecount" : 4,
									"numinlets" : 1,
									"patching_rect" : [ 488.0, 585.0, 404.0, 49.0 ],
									"numoutlets" : 0,
									"fontsize" : 9.0,
									"fontname" : "Verdana",
									"id" : "obj-9"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontsize" : 10.0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"patching_rect" : [ 461.0, 229.0, 100.0, 17.0 ],
					"types" : [  ],
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-8",
					"items" : [ "source", ",", "motion", "image", ",", "regular", "image" ],
					"labelclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 1",
					"numinlets" : 2,
					"patching_rect" : [ 569.0, 229.0, 47.0, 17.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input%",
					"name" : "jmod.input%.maxpat",
					"numinlets" : 1,
					"patching_rect" : [ 287.0, 1.0, 301.0, 72.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/orsize%",
					"name" : "jmod.orsize%",
					"numinlets" : 2,
					"patching_rect" : [ 287.0, 75.0, 301.0, 72.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-11",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/brcosa%",
					"name" : "jmod.brcosa%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 287.0, 150.0, 301.0, 72.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"args" : [ "\/brcosa%" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "jit.pwindow[3]",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 530.0, 333.0, 20.0, 180.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/motiongram%[1]",
					"name" : "jmod.motiongram%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 589.0, 248.0, 301.0, 72.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-14",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 554.0, 333.0, 240.0, 180.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"varname" : "jit.pwindow[2]",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 284.0, 519.0, 240.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/motiongram%[2]",
					"name" : "jmod.motiongram%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 19.0, 483.0, 255.0, 60.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-17",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 284.0, 544.0, 240.0, 180.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh;\rjcom.init bang",
					"linecount" : 3,
					"numinlets" : 2,
					"patching_rect" : [ 88.0, 427.0, 73.0, 36.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 1000",
					"numinlets" : 2,
					"patching_rect" : [ 19.0, 419.0, 61.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 397.0, 46.0, 17.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s module",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 225.0, 49.0, 17.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.video_params.maxpat",
					"numinlets" : 0,
					"patching_rect" : [ 12.0, 74.0, 260.0, 146.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"args" : [  ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.motiongram%",
					"numinlets" : 1,
					"patching_rect" : [ 28.0, 16.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-24",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "creates motiongrams from video stream",
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 42.0, 242.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-25",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"patching_rect" : [ 0.0, 0.0, 273.0, 63.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"depthbuffer" : 0,
					"patching_rect" : [ 284.0, 333.0, 240.0, 180.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/motion%",
					"name" : "jmod.motion%.maxpat",
					"numinlets" : 2,
					"patching_rect" : [ 287.0, 248.0, 301.0, 72.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-28",
					"args" : [ "\/motion%" ],
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"background" : 1,
					"numinlets" : 1,
					"bgcolor" : [ 0.901961, 0.839216, 0.564706, 1.0 ],
					"patching_rect" : [ 11.0, 242.0, 265.0, 27.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"background" : 1,
					"numinlets" : 1,
					"bgcolor" : [ 0.996078, 0.945098, 0.705882, 1.0 ],
					"patching_rect" : [ 11.0, 273.0, 264.0, 123.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-30"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 578.5, 327.0, 293.5, 327.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 1
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 1
				}

			}
 ]
	}

}
