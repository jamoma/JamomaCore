{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 519.0, 44.0, 641.0, 516.0 ],
		"bglocked" : 0,
		"defrect" : [ 519.0, 44.0, 641.0, 516.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Modes: \n\nnormalized: from 0...1, based on selected part \nloop_time: time in [ms], based on selected part\nsample_time: time in [ms], based on entire loaded sample\n   ",
					"linecount" : 6,
					"patching_rect" : [ 344.0, 209.0, 271.0, 75.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loopsync",
					"patching_rect" : [ 305.0, 310.0, 51.0, 18.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"sig" : 0.0,
					"patching_rect" : [ 303.0, 288.0, 86.0, 20.0 ],
					"interval" : 250.0,
					"numoutlets" : 2,
					"fontsize" : 11.595187,
					"outlettype" : [ "signal", "float" ],
					"mode" : 2,
					"fontname" : "Arial",
					"id" : "obj-17",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r cmd",
					"patching_rect" : [ 22.0, 157.0, 35.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/loopsync/active $1",
					"patching_rect" : [ 404.0, 167.0, 96.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-11",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 377.0, 165.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s cmd",
					"patching_rect" : [ 524.0, 176.0, 37.0, 18.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/loopsync/mode $1",
					"patching_rect" : [ 483.0, 193.0, 94.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"patching_rect" : [ 380.0, 192.0, 100.0, 18.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "normalized", ",", "loop_time", ",", "sample_time" ],
					"types" : [  ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sampleplayer~",
					"patching_rect" : [ 8.0, 7.0, 271.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-38",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A simple sampleplayer based on buffer~ and groove~",
					"patching_rect" : [ 8.0, 33.0, 345.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana",
					"id" : "obj-39",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 3.0, 3.0, 351.0, 53.0 ],
					"numoutlets" : 0,
					"rounded" : 15,
					"id" : "obj-40",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"patching_rect" : [ 116.0, 288.0, 113.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"fontname" : "Arial",
					"id" : "obj-1",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control.mxt",
					"name" : "jmod.control.maxpat",
					"patching_rect" : [ 21.0, 85.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"args" : [ "control" ],
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sample/displaystart 6305.895996",
					"patching_rect" : [ 24.0, 352.0, 288.0, 15.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sampleplayer~.mxt",
					"name" : "jmod.sampleplayer~.maxpat",
					"patching_rect" : [ 22.0, 178.0, 300.0, 105.0 ],
					"numoutlets" : 4,
					"args" : [ "sampleplayer" ],
					"outlettype" : [ "", "signal", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 105.0 ],
					"id" : "obj-8",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 3 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [ 31.5, 346.0, 302.5, 346.0 ]
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
