{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 233.0, 88.0, 636.0, 460.0 ],
		"bglocked" : 0,
		"defrect" : [ 233.0, 88.0, 636.0, 460.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 170.0, 85.0, 150.0, 70.0 ],
					"id" : "obj-3",
					"name" : "jmod.bufferpool.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 15.0, 15.0, 150.0, 70.0 ],
					"args" : [ "/bufferpool" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Modes: \n\nnormalized: from 0...1, based on selected part \nloop_time: time in [ms], based on selected part\nsample_time: time in [ms], based on entire loaded sample\n   ",
					"linecount" : 6,
					"patching_rect" : [ 344.0, 209.0, 271.0, 75.0 ],
					"id" : "obj-13",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loopsync",
					"patching_rect" : [ 305.0, 353.0, 51.0, 18.0 ],
					"id" : "obj-9",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"patching_rect" : [ 303.0, 331.0, 86.0, 20.0 ],
					"id" : "obj-17",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"interval" : 250.0,
					"sig" : 0.0,
					"mode" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r cmd",
					"patching_rect" : [ 22.0, 157.0, 35.0, 18.0 ],
					"id" : "obj-12",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/loopsync/active $1",
					"patching_rect" : [ 404.0, 167.0, 96.0, 16.0 ],
					"id" : "obj-11",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 377.0, 165.0, 20.0, 20.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s cmd",
					"patching_rect" : [ 524.0, 176.0, 37.0, 18.0 ],
					"id" : "obj-7",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/loopsync/mode $1",
					"patching_rect" : [ 483.0, 193.0, 94.0, 16.0 ],
					"id" : "obj-4",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 380.0, 192.0, 100.0, 18.0 ],
					"id" : "obj-2",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "normalized", ",", "loop_time", ",", "sample_time" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.buffer-tester~",
					"patching_rect" : [ 8.0, 7.0, 271.0, 28.0 ],
					"id" : "obj-38",
					"fontsize" : 17.334082,
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A simple sampleplayer based on buffer~ and groove~",
					"patching_rect" : [ 8.0, 33.0, 345.0, 19.0 ],
					"id" : "obj-39",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 3.0, 3.0, 351.0, 53.0 ],
					"id" : "obj-40",
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"patching_rect" : [ 116.0, 330.0, 113.0, 17.0 ],
					"id" : "obj-1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control.mxt",
					"patching_rect" : [ 21.0, 85.0, 150.0, 70.0 ],
					"id" : "obj-5",
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"args" : [ "control" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sample/displaylength 748.888916",
					"patching_rect" : [ 23.0, 419.0, 299.0, 15.0 ],
					"id" : "obj-6",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.buffer-tester~",
					"patching_rect" : [ 22.0, 178.0, 300.0, 140.0 ],
					"id" : "obj-8",
					"name" : "jmod.buffer-tester~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "signal", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"args" : [ "buffer-tester" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [ 31.5, 403.0, 312.5, 403.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 3 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.5, 186.0, 400.0, 186.0, 400.0, 162.0, 413.5, 162.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 430.0, 212.0, 376.0, 212.0, 376.0, 188.0, 492.5, 188.0 ]
				}

			}
 ]
	}

}
