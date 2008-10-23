{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 55.0, 71.0, 960.0, 458.0 ],
		"bglocked" : 0,
		"defrect" : [ 55.0, 71.0, 960.0, 458.0 ],
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
					"text" : "file/open",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 288.0, 54.0, 16.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 13.0, 344.0, 15.0, 15.0 ],
					"id" : "obj-2",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "file/audio $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 344.0, 73.0, 16.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 13.0, 324.0, 15.0, 15.0 ],
					"id" : "obj-4",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "file/loop $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 324.0, 67.0, 16.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 13.0, 306.0, 15.0, 15.0 ],
					"id" : "obj-6",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "file/on $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 306.0, 58.0, 16.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.input%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 421.0, 106.0, 18.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.input%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 290.0, 63.0, 105.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.input%.cmd",
					"fontsize" : 9.873845,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 230.0, 106.0, 18.0 ],
					"id" : "obj-10",
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
					"patching_rect" : [ 4.0, 82.0, 273.0, 146.0 ],
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"name" : "jmod.video_params.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 13.0, 364.0, 15.0, 15.0 ],
					"id" : "obj-12",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "file/framedump $1",
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 30.0, 364.0, 103.0, 16.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 601.0, 124.0, 60.0, 35.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.input%",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 17.334082,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 16.0, 189.0, 28.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Video input module: camera, file, synthesis",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.873845,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 29.0, 42.0, 242.0, 18.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 298.0, 20.0, 80.0, 28.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 289.0, 161.0, 320.0, 240.0 ],
					"id" : "obj-19",
					"outlettype" : [ "", "" ],
					"depthbuffer" : 0
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
					"patching_rect" : [ 290.0, 83.0, 300.0, 70.0 ],
					"id" : "obj-20",
					"outlettype" : [ "", "" ],
					"name" : "jmod.input%.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The module has three different modes, which can be selected from the top menu:\r\r- Camera: this can be used with any web/DV camera connected to the system. Choose device in the list, and click the on/off button to start sampling. The size of the video can be changed on the fly, allowing to reduce the size to get better performance.\r\r- Video file: this is for playing back any QuickTime compatible video file. Looping can be turned on or off, and the looping section can be defined in the upper scroll bar. The file can be scrubbed in the lower scroll bar. Audio playback can be turned on or off, and the playback rate can be changed by dragging on the number (notice that negative values will play the file backwards. The size of the video can be changed on the fly to improve performance.\r\r- Synthesis: this is mainly for testing purposes in case you have no camera or video files around, but still want to send some video. It generates white noise in either 1 or 4 planes.",
					"linecount" : 27,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 687.0, 67.0, 232.0, 330.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Play video file as quickly as possible (without dropping frames)",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 383.0, 183.0, 30.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module Controls",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 239.0, 206.0, 28.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Specific module messages",
					"fontsize" : 11.556055,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 269.0, 252.0, 21.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 9.0, 273.0, 63.0 ],
					"id" : "obj-17",
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.901961, 0.839216, 0.564706, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 238.0, 265.0, 27.0 ],
					"id" : "obj-25",
					"rounded" : 0,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.996078, 0.945098, 0.705882, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 269.0, 264.0, 142.0 ],
					"id" : "obj-26",
					"rounded" : 0,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 580.5, 157.0, 595.0, 157.0, 595.0, 119.0, 610.5, 119.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 580.5, 157.0, 298.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
