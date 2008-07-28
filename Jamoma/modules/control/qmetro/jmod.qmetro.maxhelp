{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 126.0, 56.0, 762.0, 500.0 ],
		"bglocked" : 0,
		"defrect" : [ 126.0, 56.0, 762.0, 500.0 ],
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
					"maxclass" : "comment",
					"text" : "really it is just setting the active unit, and then sending the value",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 250.0, 275.0, 31.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time:/unit/active millisecond",
					"numoutlets" : 1,
					"patching_rect" : [ 480.0, 220.0, 159.0, 17.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time:/unit/active second",
					"numoutlets" : 1,
					"patching_rect" : [ 480.0, 195.0, 139.0, 17.0 ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "doing this is shorthand for sending the following",
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 170.0, 275.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "currently: native units are always going to both the ui and to the algorithm -- will this always be so?",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 395.0, 275.0, 31.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 40.0, 100.0, 50.0, 19.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time 300 ms",
					"numoutlets" : 1,
					"patching_rect" : [ 660.0, 125.0, 78.0, 17.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Demonstrating the unit lib",
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 105.0, 141.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 435.0, 365.0, 49.0, 19.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"patching_rect" : [ 435.0, 315.0, 49.0, 19.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time 2 s ramp 2000",
					"numoutlets" : 1,
					"patching_rect" : [ 540.0, 125.0, 116.0, 17.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time 4 s",
					"numoutlets" : 1,
					"patching_rect" : [ 480.0, 125.0, 57.0, 17.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.dataspace @dataspace time @input s @output ms",
					"numoutlets" : 2,
					"patching_rect" : [ 435.0, 340.0, 293.0, 19.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"numoutlets" : 1,
					"patching_rect" : [ 160.0, 335.0, 30.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"numoutlets" : 1,
					"patching_rect" : [ 85.0, 335.0, 70.0, 17.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 370.0, 34.0, 19.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~ 0.2",
					"numoutlets" : 1,
					"patching_rect" : [ 40.0, 335.0, 43.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "click~",
					"numoutlets" : 1,
					"patching_rect" : [ 40.0, 310.0, 39.0, 19.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "signal" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time 300 ramp 5000",
					"numoutlets" : 1,
					"patching_rect" : [ 330.0, 124.0, 117.0, 17.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time 40 ramp 4000",
					"numoutlets" : 1,
					"patching_rect" : [ 217.0, 124.0, 110.0, 17.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numoutlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 190.0, 250.0, 74.0, 19.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 100.0, 20.0, 20.0 ],
					"id" : "obj-11",
					"outlettype" : [ "int" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/toggle $1",
					"numoutlets" : 1,
					"patching_rect" : [ 105.0, 124.0, 60.0, 17.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time $1",
					"numoutlets" : 1,
					"patching_rect" : [ 40.0, 125.0, 52.0, 17.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/time 40",
					"numoutlets" : 1,
					"patching_rect" : [ 65.0, 280.0, 118.0, 17.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"patching_rect" : [ 40.0, 280.0, 20.0, 20.0 ],
					"id" : "obj-16",
					"outlettype" : [ "bang" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /trigger",
					"numoutlets" : 2,
					"patching_rect" : [ 40.0, 250.0, 143.0, 19.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.qmetro",
					"numoutlets" : 1,
					"patching_rect" : [ 40.0, 170.0, 301.0, 71.0 ],
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"name" : "jmod.qmetro.maxpat",
					"args" : [ "/qmetro" ],
					"numinlets" : 1,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.qmetro",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 196.0, 28.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 18.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a qmetro module (like metro, but can drop frames)",
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 45.0, 267.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"patching_rect" : [ 9.0, 9.0, 326.0, 61.0 ],
					"id" : "obj-21",
					"rounded" : 15,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The making of this module is described in detail in tutorial 2a of the Jamoma html documentation.",
					"linecount" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 450.0, 324.0, 31.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ramping to new value",
					"numoutlets" : 0,
					"patching_rect" : [ 243.0, 103.0, 141.0, 19.0 ],
					"frgb" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 669.5, 157.0, 49.5, 157.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 215.0, 351.0, 215.0, 351.0, 160.0, 49.5, 160.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 241.0, 348.0, 241.0, 348.0, 163.0, 49.5, 163.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 145.0, 49.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 226.5, 145.0, 49.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 339.5, 148.0, 49.5, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 151.0, 49.5, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 549.5, 154.0, 49.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 199.5, 274.0, 74.5, 274.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 362.0, 49.5, 362.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.5, 359.0, 49.5, 359.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
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
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
