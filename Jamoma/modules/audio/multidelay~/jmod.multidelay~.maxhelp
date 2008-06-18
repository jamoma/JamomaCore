{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 45.0, 50.0, 713.0, 613.0 ],
		"bglocked" : 0,
		"defrect" : [ 45.0, 50.0, 713.0, 613.0 ],
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
					"maxclass" : "flonum",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-1",
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 9.0, 392.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "feedback for all delay lines (0.-1.)",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 158.0, 395.0, 177.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback $1",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 71.0, 393.0, 73.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"id" : "obj-4",
					"numinlets" : 3,
					"name" : "jmod.output~.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 403.0, 439.0, 302.0, 145.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/output~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "max delay in milliseconds for both channels",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 158.0, 374.0, 226.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-6",
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 9.0, 372.0, 58.0, 18.0 ],
					"fontsize" : 9.873845,
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 10000
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/maxdelay $1",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 71.0, 372.0, 77.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.delay.cmd",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 266.0, 343.0, 96.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Module specific messages",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 340.0, 236.0, 28.0 ],
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 338.0, 373.0, 27.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 366.0, 373.0, 48.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.multidelay~",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 19.0, 202.0, 28.0 ],
					"fontsize" : 17.334082,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sample-accurate delay module with 5 delay lines per channel",
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 45.0, 312.0, 18.0 ],
					"fontsize" : 9.873845,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.0, 3.0, 657.0, 66.0 ],
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.delay.cmd",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 261.0, 87.0, 96.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.delay.cmd",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 262.0, 234.0, 96.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.delay.cmd",
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 401.0, 301.0, 95.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/save_settings",
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 117.0, 309.0, 81.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/load_settings",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 117.0, 291.0, 79.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/restore_defaults",
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 117.0, 272.0, 94.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 309.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/bypass $1",
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 27.0, 309.0, 63.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 10.0, 291.0, 15.0, 15.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/mute $1",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 27.0, 291.0, 55.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sr $1",
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 47.0, 272.0, 41.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontname" : "Verdana",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-26",
					"triscale" : 0.9,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 10.0, 272.0, 35.0, 18.0 ],
					"fontsize" : 9.873845,
					"minimum" : -2,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-27",
					"numinlets" : 0,
					"name" : "jmod.gain_params.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 4.0, 83.0, 376.0, 139.0 ],
					"outlettype" : [ "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "These two can have an optional argument",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 202.0, 295.0, 115.0, 30.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 257.0, 373.0, 75.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DSP control",
					"fontname" : "Verdana",
					"id" : "obj-30",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 231.0, 111.0, 28.0 ],
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 229.0, 373.0, 27.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"id" : "obj-32",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 466.0, 397.0, 73.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/feedback 0.",
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 401.0, 420.0, 270.0, 16.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 401.0, 397.0, 68.0, 18.0 ],
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"id" : "obj-35",
					"numinlets" : 1,
					"name" : "jmod.control.maxpat",
					"numoutlets" : 1,
					"patching_rect" : [ 401.0, 83.0, 302.0, 72.0 ],
					"outlettype" : [ "" ],
					"args" : [ "/control" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"id" : "obj-36",
					"numinlets" : 1,
					"name" : "jmod.input~.maxpat",
					"numoutlets" : 3,
					"patching_rect" : [ 401.0, 157.0, 304.0, 143.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multidelay~",
					"id" : "obj-37",
					"numinlets" : 3,
					"name" : "jmod.multidelay~.maxpat",
					"numoutlets" : 3,
					"patching_rect" : [ 401.0, 319.0, 304.0, 73.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/multidelay~" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-37", 2 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-37", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-25", 0 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-16", 0 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [ 475.5, 417.0, 410.5, 417.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
