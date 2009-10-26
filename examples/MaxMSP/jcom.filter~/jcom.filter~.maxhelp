{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 46.0, 1087.0, 618.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 46.0, 1087.0, 618.0 ],
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
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.0, 400.0, 76.0, 19.0 ],
					"text" : "loadmess set"
=======
					"maxclass" : "bpatcher",
					"id" : "obj-12",
					"numinlets" : 1,
					"patching_rect" : [ 3.0, 2.0, 1008.0, 70.0 ],
					"numoutlets" : 0,
					"name" : "jcom.maxhelpui.maxpat",
					"args" : [ "@name", "jcom.filter~", "@description", "An audio filter swiss army knife" ],
					"bgmode" : 1
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 775.0, 400.0, 145.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.0, 425.0, 70.0, 19.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 250.0, 61.0, 17.0 ],
					"text" : "getbypass"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 225.0, 33.0, 17.0 ],
					"text" : "getq"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 200.0, 76.0, 17.0 ],
					"text" : "getfrequency"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 100.0, 163.0, 17.0 ],
					"text" : "symbol lowpass.butterworth.2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 175.0, 49.0, 17.0 ],
					"text" : "gettype"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 430.0, 100.0, 53.0, 19.0 ],
					"text" : "t 2000 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 430.0, 75.0, 56.0, 19.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@name", "jcom.filter~", "@description", "a audio filter swiss army knife" ],
					"bgmode" : 1,
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 1087.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 1197.0, 68.0 ],
					"prototypename" : "bphelp",
					"varname" : "maxhelpui"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-30",
=======
					"maxclass" : "comment",
					"text" : "choose a filter to use from the menu",
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"linecount" : 2,
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 57.0, 122.0, 156.0, 31.0 ],
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
					"linecount" : 3,
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "comment",
					"text" : "use 'gettypes' to populate the umenu with all of the available filters in the system.",
					"linecount" : 3,
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 122.0, 210.0, 43.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "type $1",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 52.0, 207.0, 50.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route types",
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
<<<<<<< HEAD
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 656.0, 402.0, 93.0, 19.0 ],
					"text" : "route types type"
=======
					"patching_rect" : [ 565.0, 377.0, 69.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-25",
					"items" : [ "bandpass.butterworth.2", ",", "bandreject.butterworth.2", ",", "dcblock", ",", "highmidlowshelf", ",", "highpass.butterworth.1", ",", "highpass.butterworth.2", ",", "highpass.butterworth.3", ",", "highpass.butterworth.4", ",", "highpass.linkwitzriley.2", ",", "highpass.linkwitzriley.4", ",", "lowpass.butterworth.1", ",", "lowpass.butterworth.2", ",", "lowpass.butterworth.3", ",", "lowpass.butterworth.4", ",", "lowpass.linkwitzriley.2", ",", "lowpass.linkwitzriley.4", ",", "lowpass.1", ",", "lowpass.2", ",", "lowpass.4", ",", "svf", ",", "bandpass.butterworth.2", ",", "bandreject.butterworth.2", ",", "dcblock", ",", "highmidlowshelf", ",", "highpass.butterworth.1", ",", "highpass.butterworth.2", ",", "highpass.butterworth.3", ",", "highpass.butterworth.4", ",", "highpass.linkwitzriley.2", ",", "highpass.linkwitzriley.4", ",", "lowpass.butterworth.1", ",", "lowpass.butterworth.2", ",", "lowpass.butterworth.3", ",", "lowpass.butterworth.4", ",", "lowpass.linkwitzriley.2", ",", "lowpass.linkwitzriley.4", ",", "lowpass.1", ",", "lowpass.2", ",", "lowpass.4", ",", "svf" ],
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "umenu",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 57.0, 177.0, 158.0, 19.0 ],
					"numoutlets" : 3,
					"types" : "appe",
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "allpass", ",", "average", ",", "bandpass.butterworth.2", ",", "bandreject.butterworth.2", ",", "dcblock", ",", "highpass.butterworth.1", ",", "highpass.butterworth.2", ",", "highpass.butterworth.3", ",", "highpass.butterworth.4", ",", "highpass.linkwitzriley.2", ",", "highpass.linkwitzriley.4", ",", "lowpass.butterworth.1", ",", "lowpass.butterworth.2", ",", "lowpass.butterworth.3", ",", "lowpass.butterworth.4", ",", "lowpass.linkwitzriley.2", ",", "lowpass.linkwitzriley.4", ",", "lowpass.1", ",", "lowpass.2", ",", "lowpass.4", ",", "svf" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gettypes",
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 217.0, 177.0, 52.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 427.0, 172.0, 51.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"id" : "obj-14",
					"numinlets" : 2,
					"patching_rect" : [ 820.0, 315.0, 147.0, 67.0 ],
					"numoutlets" : 1,
<<<<<<< HEAD
					"outlettype" : [ "" ],
					"patching_rect" : [ 915.0, 315.0, 147.0, 67.0 ]
=======
					"outlettype" : [ "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"id" : "obj-15",
					"numinlets" : 2,
					"patching_rect" : [ 822.0, 442.0, 147.0, 67.0 ],
					"numoutlets" : 1,
<<<<<<< HEAD
					"outlettype" : [ "" ],
					"patching_rect" : [ 917.0, 482.0, 147.0, 67.0 ]
=======
					"outlettype" : [ "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "phasor~ 1000.",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 2,
<<<<<<< HEAD
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 655.0, 262.0, 86.0, 19.0 ],
					"text" : "phasor~ 1000."
=======
					"patching_rect" : [ 560.0, 262.0, 86.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "bypass $1",
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 277.0, 207.0, 63.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-9",
					"numinlets" : 1,
					"patching_rect" : [ 277.0, 176.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 347.0, 172.0, 51.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"id" : "obj-4",
					"numinlets" : 2,
					"patching_rect" : [ 670.0, 315.0, 147.0, 67.0 ],
					"numoutlets" : 1,
<<<<<<< HEAD
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.0, 315.0, 147.0, 67.0 ]
=======
					"outlettype" : [ "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noise~",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
<<<<<<< HEAD
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 605.0, 262.0, 46.0, 19.0 ],
					"text" : "noise~"
=======
					"patching_rect" : [ 510.0, 262.0, 46.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "signal" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 605.0, 352.0, 70.0, 19.0 ],
					"text" : "jcom.filter~"
=======
					"maxclass" : "newobj",
					"text" : "jcom.filter~",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 510.0, 352.0, 70.0, 19.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "spectroscope~",
					"id" : "obj-2",
					"numinlets" : 2,
					"patching_rect" : [ 672.0, 442.0, 147.0, 67.0 ],
					"numoutlets" : 1,
<<<<<<< HEAD
					"outlettype" : [ "" ],
					"patching_rect" : [ 767.0, 482.0, 147.0, 67.0 ]
=======
					"outlettype" : [ "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "frequency $1",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 347.0, 207.0, 77.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-7",
					"numinlets" : 2,
<<<<<<< HEAD
					"numoutlets" : 0,
					"patching_rect" : [ 605.0, 542.0, 45.0, 45.0 ]
=======
					"patching_rect" : [ 510.0, 502.0, 45.0, 45.0 ],
					"numoutlets" : 0
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"id" : "obj-8",
					"numinlets" : 2,
					"patching_rect" : [ 510.0, 467.0, 95.0, 16.0 ],
					"numoutlets" : 2,
<<<<<<< HEAD
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 605.0, 507.0, 95.0, 16.0 ]
=======
					"outlettype" : [ "signal", "int" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "q $1",
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 427.0, 207.0, 51.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 640.0, 469.0, 926.5, 469.0 ],
					"source" : [ "obj-1", 1 ]
=======
					"midpoints" : [  ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"midpoints" : [ 665.5, 394.0, 910.5, 394.0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 614.5, 475.0, 776.5, 475.0 ],
					"source" : [ "obj-1", 0 ]
=======
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 286.5, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-10", 0 ]
=======
					"midpoints" : [ 356.5, 339.0, 519.5, 339.0 ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
=======
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"hidden" : 0,
					"midpoints" : [ 519.5, 305.0, 679.5, 305.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 664.5, 298.0, 924.5, 298.0 ],
					"source" : [ "obj-13", 0 ]
=======
					"midpoints" : [  ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 504.5, 195.0, 481.0, 195.0, 481.0, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 436.5, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-21", 0 ]
=======
					"midpoints" : [ 226.5, 339.0, 519.5, 339.0 ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 136.0, 203.0, 61.5, 203.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 61.5, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-23", 0 ]
=======
					"midpoints" : [ 61.5, 339.0, 519.5, 339.0 ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 665.5, 449.0, 45.0, 449.0, 45.0, 166.0, 66.5, 166.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
=======
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 226.5, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-27", 0 ]
=======
					"midpoints" : [ 436.5, 339.0, 519.5, 339.0 ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 504.5, 221.0, 481.0, 221.0, 481.0, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
=======
					"midpoints" : [ 569.5, 298.0, 829.5, 298.0 ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 614.5, 305.0, 774.5, 305.0 ],
					"source" : [ "obj-3", 0 ]
=======
					"midpoints" : [  ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
					"midpoints" : [ 504.5, 246.0, 481.0, 246.0, 481.0, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 274.0, 481.0, 274.0, 481.0, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 704.5, 449.0, 35.0, 449.0, 35.0, 161.0, 66.5, 161.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 356.5, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-5", 0 ]
=======
					"midpoints" : [ 286.5, 339.0, 519.5, 339.0 ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 519.5, 430.0, 681.5, 430.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 570.5, 422.0, 831.5, 422.0 ]
				}

			}
 ]
	}

}
