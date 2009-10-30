{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 201.0, 82.0, 508.0, 531.0 ],
		"bglocked" : 0,
		"defrect" : [ 201.0, 82.0, 508.0, 531.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 358.0, 308.0, 0.0, 0.0 ],
					"patching_rect" : [ 360.0, 310.0, 35.0, 17.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This dumps a list of types via the dumpout outlet.  It is required (at least for the moment) that you pass an argument to this message.",
					"linecount" : 5,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 300.0, 140.0, 160.0, 67.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"items" : [ "allpass", ",", "average", ",", "bandpass.butterworth.2", ",", "bandreject.butterworth.2", ",", "dcblock", ",", "highpass.butterworth.1", ",", "highpass.butterworth.2", ",", "highpass.butterworth.3", ",", "highpass.butterworth.4", ",", "highpass.linkwitzriley.2", ",", "highpass.linkwitzriley.4", ",", "lowpass.butterworth.1", ",", "lowpass.butterworth.2", ",", "lowpass.butterworth.3", ",", "lowpass.butterworth.4", ",", "lowpass.linkwitzriley.2", ",", "lowpass.linkwitzriley.4", ",", "lowpass.1", ",", "lowpass.2", ",", "lowpass.4", ",", "svf" ],
					"types" : [  ],
					"patching_rect" : [ 290.0, 335.0, 100.0, 19.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "append $1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 310.0, 64.0, 17.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.0, 285.0, 27.0, 19.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l clear",
					"outlettype" : [ "", "clear" ],
					"patching_rect" : [ 290.0, 260.0, 76.0, 19.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route getTypes",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 290.0, 235.0, 99.0, 19.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getTypes 1",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 318.0, 165.0, 0.0, 0.0 ],
					"patching_rect" : [ 230.0, 155.0, 65.0, 17.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gettype",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 264.0, 165.0, 0.0, 0.0 ],
					"patching_rect" : [ 110.0, 115.0, 49.0, 17.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"patching_rect" : [ 370.0, 260.0, 34.0, 19.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 230.0, 70.0, 60.0, 19.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "type lowpass.1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 55.0, 86.0, 17.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "type lowpass.4",
					"outlettype" : [ "" ],
					"patching_rect" : [ 95.0, 95.0, 86.0, 17.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "filter≈",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 200.0, 42.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"patching_rect" : [ 80.0, 380.0, 300.0, 100.0 ],
					"id" : "obj-2",
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"patching_rect" : [ 55.0, 275.0, 125.0, 17.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"patching_rect" : [ 30.0, 380.0, 45.0, 45.0 ],
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "midiGain $1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 55.0, 295.0, 71.0, 17.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "out≈ 1",
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 30.0, 350.0, 45.0, 19.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gain≈",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 325.0, 40.0, 19.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise≈",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 30.0, 25.0, 45.0, 19.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "type lowpass.2",
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.0, 75.0, 86.0, 17.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "frequency $1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 230.0, 95.0, 74.0, 17.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 10.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 369.5, 332.0, 299.5, 332.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 356.5, 330.0, 299.5, 330.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 226.0, 299.5, 226.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 317.0, 39.5, 317.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
