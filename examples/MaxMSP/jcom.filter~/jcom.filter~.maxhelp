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
=======
					"args" : [ "@name", "jcom.filter~", "@description", "An audio filter swiss army knife" ],
					"bgmode" : 1,
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
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
=======
					"patching_rect" : [ 0.0, 0.0, 1008.0, 70.0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
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
=======
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-30",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 122.0, 156.0, 31.0 ],
					"text" : "choose a filter to use from the menu"
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
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
=======
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-29",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.0, 122.0, 210.0, 43.0 ],
					"text" : "use 'gettypes' to populate the umenu with all of the available filters in the system."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 52.0, 207.0, 50.0, 17.0 ],
					"text" : "type $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
<<<<<<< HEAD
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
=======
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 565.0, 377.0, 69.0, 19.0 ],
					"text" : "route types"
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
<<<<<<< HEAD
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-25",
					"items" : [ "bandpass.butterworth.2", ",", "bandreject.butterworth.2", ",", "dcblock", ",", "highmidlowshelf", ",", "highpass.butterworth.1", ",", "highpass.butterworth.2", ",", "highpass.butterworth.3", ",", "highpass.butterworth.4", ",", "highpass.linkwitzriley.2", ",", "highpass.linkwitzriley.4", ",", "lowpass.butterworth.1", ",", "lowpass.butterworth.2", ",", "lowpass.butterworth.3", ",", "lowpass.butterworth.4", ",", "lowpass.linkwitzriley.2", ",", "lowpass.linkwitzriley.4", ",", "lowpass.1", ",", "lowpass.2", ",", "lowpass.4", ",", "svf", ",", "bandpass.butterworth.2", ",", "bandreject.butterworth.2", ",", "dcblock", ",", "highmidlowshelf", ",", "highpass.butterworth.1", ",", "highpass.butterworth.2", ",", "highpass.butterworth.3", ",", "highpass.butterworth.4", ",", "highpass.linkwitzriley.2", ",", "highpass.linkwitzriley.4", ",", "lowpass.butterworth.1", ",", "lowpass.butterworth.2", ",", "lowpass.butterworth.3", ",", "lowpass.butterworth.4", ",", "lowpass.linkwitzriley.2", ",", "lowpass.linkwitzriley.4", ",", "lowpass.1", ",", "lowpass.2", ",", "lowpass.4", ",", "svf" ],
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "umenu",
					"id" : "obj-25",
=======
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-25",
					"items" : [ "allpass", ",", "average", ",", "bandpass.butterworth.2", ",", "bandreject.butterworth.2", ",", "dcblock", ",", "highpass.butterworth.1", ",", "highpass.butterworth.2", ",", "highpass.butterworth.3", ",", "highpass.butterworth.4", ",", "highpass.linkwitzriley.2", ",", "highpass.linkwitzriley.4", ",", "lowpass.butterworth.1", ",", "lowpass.butterworth.2", ",", "lowpass.butterworth.3", ",", "lowpass.butterworth.4", ",", "lowpass.linkwitzriley.2", ",", "lowpass.linkwitzriley.4", ",", "lowpass.1", ",", "lowpass.2", ",", "lowpass.4", ",", "svf" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 57.0, 177.0, 158.0, 19.0 ],
					"types" : "appe"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 217.0, 177.0, 52.0, 17.0 ],
					"text" : "gettypes"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-22",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 427.0, 172.0, 51.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
<<<<<<< HEAD
<<<<<<< HEAD
					"outlettype" : [ "" ],
					"patching_rect" : [ 915.0, 315.0, 147.0, 67.0 ]
=======
					"outlettype" : [ "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"outlettype" : [ "" ],
					"patching_rect" : [ 820.0, 315.0, 147.0, 67.0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
<<<<<<< HEAD
<<<<<<< HEAD
					"outlettype" : [ "" ],
					"patching_rect" : [ 917.0, 482.0, 147.0, 67.0 ]
=======
					"outlettype" : [ "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"outlettype" : [ "" ],
					"patching_rect" : [ 822.0, 442.0, 147.0, 67.0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
<<<<<<< HEAD
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
=======
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 560.0, 262.0, 86.0, 19.0 ],
					"text" : "phasor~ 1000."
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 277.0, 207.0, 63.0, 17.0 ],
					"text" : "bypass $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 277.0, 176.0, 18.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 347.0, 172.0, 51.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
<<<<<<< HEAD
<<<<<<< HEAD
					"outlettype" : [ "" ],
					"patching_rect" : [ 765.0, 315.0, 147.0, 67.0 ]
=======
					"outlettype" : [ "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"outlettype" : [ "" ],
					"patching_rect" : [ 670.0, 315.0, 147.0, 67.0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
<<<<<<< HEAD
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
=======
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 510.0, 262.0, 46.0, 19.0 ],
					"text" : "noise~"
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
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
=======
					"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"fontname" : "Verdana",
					"fontsize" : 10.0,
<<<<<<< HEAD
					"outlettype" : [ "", "", "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 510.0, 352.0, 70.0, 19.0 ],
					"text" : "jcom.filter~"
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
<<<<<<< HEAD
<<<<<<< HEAD
					"outlettype" : [ "" ],
					"patching_rect" : [ 767.0, 482.0, 147.0, 67.0 ]
=======
					"outlettype" : [ "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.0, 442.0, 147.0, 67.0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 347.0, 207.0, 77.0, 17.0 ],
					"text" : "frequency $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
<<<<<<< HEAD
<<<<<<< HEAD
					"numoutlets" : 0,
					"patching_rect" : [ 605.0, 542.0, 45.0, 45.0 ]
=======
					"patching_rect" : [ 510.0, 502.0, 45.0, 45.0 ],
					"numoutlets" : 0
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 502.0, 45.0, 45.0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "gain~",
					"numinlets" : 2,
					"numoutlets" : 2,
<<<<<<< HEAD
<<<<<<< HEAD
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 605.0, 507.0, 95.0, 16.0 ]
=======
					"outlettype" : [ "signal", "int" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 510.0, 467.0, 95.0, 16.0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 427.0, 207.0, 51.0, 17.0 ],
					"text" : "q $1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
<<<<<<< HEAD
					"midpoints" : [ 640.0, 469.0, 926.5, 469.0 ],
					"source" : [ "obj-1", 1 ]
=======
					"midpoints" : [  ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"midpoints" : [ 545.0, 422.0, 831.5, 422.0 ],
					"source" : [ "obj-1", 1 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
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
=======
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 519.5, 430.0, 681.5, 430.0 ],
					"source" : [ "obj-1", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
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
=======
					"midpoints" : [ 286.5, 339.0, 519.5, 339.0 ],
					"source" : [ "obj-10", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
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
=======
					"destination" : [ "obj-1", 1 ],
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
<<<<<<< HEAD
					"midpoints" : [ 664.5, 298.0, 924.5, 298.0 ],
					"source" : [ "obj-13", 0 ]
=======
					"midpoints" : [  ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"midpoints" : [ 569.5, 298.0, 829.5, 298.0 ],
					"source" : [ "obj-13", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
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
=======
					"midpoints" : [ 436.5, 339.0, 519.5, 339.0 ],
					"source" : [ "obj-21", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
<<<<<<< HEAD
					"midpoints" : [ 61.5, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-23", 0 ]
=======
					"midpoints" : [ 61.5, 339.0, 519.5, 339.0 ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"midpoints" : [ 61.5, 339.0, 519.5, 339.0 ],
					"source" : [ "obj-23", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
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
=======
					"destination" : [ "obj-23", 0 ],
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"hidden" : 0,
					"midpoints" : [ 136.0, 203.0, 61.5, 203.0 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
<<<<<<< HEAD
					"midpoints" : [ 226.5, 339.0, 614.5, 339.0 ],
					"source" : [ "obj-27", 0 ]
=======
					"midpoints" : [ 436.5, 339.0, 519.5, 339.0 ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"midpoints" : [ 226.5, 339.0, 519.5, 339.0 ],
					"source" : [ "obj-27", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
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
=======
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
<<<<<<< HEAD
					"midpoints" : [ 614.5, 305.0, 774.5, 305.0 ],
					"source" : [ "obj-3", 0 ]
=======
					"midpoints" : [  ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"midpoints" : [ 519.5, 305.0, 679.5, 305.0 ],
					"source" : [ "obj-3", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
<<<<<<< HEAD
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
=======
					"midpoints" : [ 356.5, 339.0, 519.5, 339.0 ],
					"source" : [ "obj-5", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ]
	}

}
