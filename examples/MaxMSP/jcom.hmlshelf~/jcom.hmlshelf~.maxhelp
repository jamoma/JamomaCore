{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 139.0, 95.0, 688.0, 594.0 ],
		"bglocked" : 0,
		"defrect" : [ 139.0, 95.0, 688.0, 594.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
<<<<<<< HEAD
					"args" : [ "@name", "jcom.hmlshelf~", "@description", "high mid low shelf-filter implementation using one biquad-filter" ],
					"bgmode" : 1,
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 688.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 1197.0, 68.0 ],
					"prototypename" : "bphelp",
					"varname" : "maxhelpui"
=======
					"maxclass" : "bpatcher",
					"id" : "obj-3",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 984.0, 70.0 ],
					"numoutlets" : 0,
					"name" : "jcom.maxhelpui.maxpat",
					"args" : [ "@name", "jcom.hmlshelf~", "@description", "High mid low shelf-filter implementation using one biquad filter" ],
					"bgmode" : 1
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"id" : "obj-32",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "ezdac~",
					"id" : "obj-32",
					"numinlets" : 2,
					"patching_rect" : [ 107.0, 435.0, 45.0, 45.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"id" : "obj-33",
					"numinlets" : 2,
					"patching_rect" : [ 107.0, 400.0, 95.0, 16.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~ 1000.",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 2,
<<<<<<< HEAD
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 564.0, 299.0, 85.0, 19.0 ],
					"text" : "phasor~ 1000."
=======
					"patching_rect" : [ 548.0, 299.0, 85.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"id" : "obj-15",
					"numinlets" : 2,
					"logfreq" : 1,
					"patching_rect" : [ 413.0, 435.0, 147.0, 67.0 ],
					"numoutlets" : 1,
					"sono" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"id" : "obj-22",
					"numinlets" : 2,
					"patching_rect" : [ 414.0, 362.0, 147.0, 67.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"id" : "obj-18",
					"numinlets" : 2,
					"logfreq" : 1,
					"patching_rect" : [ 218.0, 435.0, 147.0, 67.0 ],
					"numoutlets" : 1,
					"sono" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-31",
					"linecount" : 2,
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "X-over frequency",
					"linecount" : 2,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 440.0, 126.0, 64.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-30",
					"linecount" : 2,
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "X-over frequency",
					"linecount" : 2,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 275.0, 125.0, 64.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-29",
					"linecount" : 2,
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "gain HighBand",
					"linecount" : 2,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 524.0, 158.0, 63.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-28",
					"linecount" : 2,
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "gain MidBand",
					"linecount" : 2,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 360.0, 156.0, 56.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-23",
					"linecount" : 2,
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "gain LowBand",
					"linecount" : 2,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 201.0, 154.0, 56.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-19",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "frequencyLm < frequencyMh",
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 312.0, 95.0, 161.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 440.0, 159.0, 50.0, 19.0 ],
					"minimum" : 10.0,
					"numoutlets" : 2,
					"maximum" : 20000.0,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.827451, 0.737255, 0.835294, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 277.0, 158.0, 50.0, 19.0 ],
					"minimum" : 10.0,
					"numoutlets" : 2,
					"maximum" : 10000.0,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.827451, 0.737255, 0.835294, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 204.0, 187.0, 50.0, 19.0 ],
					"minimum" : -60.0,
					"numoutlets" : 2,
					"maximum" : 3.16,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dbtoa",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 204.0, 209.0, 39.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 361.0, 186.0, 50.0, 19.0 ],
					"minimum" : -60.0,
					"numoutlets" : 2,
					"maximum" : 3.16,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dbtoa",
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 361.0, 208.0, 39.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 525.0, 186.0, 50.0, 19.0 ],
					"minimum" : -60.0,
					"numoutlets" : 2,
					"maximum" : 3.16,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 0.945098, 0.913725, 0.407843, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dbtoa",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 525.0, 208.0, 39.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"id" : "obj-2",
					"numinlets" : 2,
					"patching_rect" : [ 218.0, 363.0, 147.0, 67.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.thru",
					"id" : "obj-48",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 203.0, 267.0, 59.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "frequencyMh $1",
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 423.0, 235.0, 91.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "frequencyLm $1",
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 265.0, 234.0, 92.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gainH $1",
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 525.0, 233.0, 56.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gainM $1",
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 361.0, 233.0, 56.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gainL $1",
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 204.0, 233.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-10",
					"numinlets" : 1,
					"patching_rect" : [ 126.0, 212.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mute $1",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 126.0, 242.0, 53.0, 17.0 ],
					"numoutlets" : 1,
<<<<<<< HEAD
					"outlettype" : [ "int" ],
					"patching_rect" : [ 51.0, 212.0, 20.0, 20.0 ]
=======
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 51.0, 212.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-20",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "message",
					"text" : "bypass $1",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 51.0, 242.0, 67.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 4.0, 243.0, 39.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise~",
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 230.0, 293.0, 45.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-26",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "newobj",
					"text" : "jcom.hmlshelf~ 2",
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 202.0, 331.0, 381.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 432.5, 265.0, 212.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 264.0, 212.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 534.5, 265.0, 212.5, 265.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 370.5, 264.5, 212.5, 264.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 211.5, 354.5, 116.5, 354.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 355.5, 116.5, 355.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 211.5, 357.5, 227.5, 357.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 211.5, 430.0, 227.5, 430.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 573.5, 431.0, 422.5, 431.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 239.5, 320.0, 211.5, 320.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 13.5, 263.0, 212.5, 263.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 60.5, 262.5, 212.5, 262.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 449.5, 230.0, 432.5, 230.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [ 286.5, 230.0, 274.5, 230.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 135.5, 262.5, 212.5, 262.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
