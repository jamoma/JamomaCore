{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 71.0, 69.0, 543.0, 382.0 ],
		"bglocked" : 0,
		"defrect" : [ 71.0, 69.0, 543.0, 382.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 230.0, 10.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "frequency $1",
					"patching_rect" : [ 230.0, 35.0, 76.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 232.0, 34.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Did you know?\nThe out≈ object has a master gain control built-in.",
					"linecount" : 3,
					"patching_rect" : [ 350.0, 75.0, 150.0, 43.0 ],
					"numinlets" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"floatoutput" : 1,
					"patching_rect" : [ 350.0, 120.0, 114.0, 17.0 ],
					"numinlets" : 1,
					"id" : "obj-14",
					"mult" : 0.01,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 350.0, 140.0, 50.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gain $1",
					"patching_rect" : [ 350.0, 160.0, 48.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 227.0, 34.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "waveform $1",
					"patching_rect" : [ 110.0, 35.0, 76.0, 17.0 ],
					"numinlets" : 2,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"patching_rect" : [ 110.0, 10.0, 100.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"rounded" : 15,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 10.0,
					"items" : [ "sine", ",", "triangle", ",", "sawtooth" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "oscil≈ produces a single-channel signal.",
					"linecount" : 2,
					"patching_rect" : [ 120.0, 110.0, 150.0, 31.0 ],
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"patching_rect" : [ 180.0, 220.0, 130.0, 130.0 ],
					"numinlets" : 2,
					"id" : "obj-2",
					"numoutlets" : 0,
					"calccount" : 8,
					"trigger" : 1,
					"bufsize" : 64
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"patching_rect" : [ 110.0, 220.0, 56.0, 19.0 ],
					"numinlets" : 2,
					"sig" : 0.0,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"mode" : 2,
					"outlettype" : [ "signal", "float" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out≈ 1",
					"patching_rect" : [ 110.0, 185.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "oscil≈ @waveform sine @interpolation linear @frequency 220.",
					"linecount" : 3,
					"patching_rect" : [ 110.0, 65.0, 141.0, 43.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 30.0, 255.0, 45.0, 45.0 ],
					"numinlets" : 2,
					"id" : "obj-12",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 239.5, 58.0, 119.5, 58.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 180.0, 119.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 160.0, 31.0, 119.5, 31.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
