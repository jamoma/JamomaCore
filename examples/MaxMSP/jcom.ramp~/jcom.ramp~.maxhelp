{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 75.0, 113.0, 556.0, 432.0 ],
		"bglocked" : 0,
		"defrect" : [ 75.0, 113.0, 556.0, 432.0 ],
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
<<<<<<< HEAD
					"args" : [ "@name", "jcom.ramp~", "@description", "generate ramping signals" ],
					"bgmode" : 1,
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 556.0, 70.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 1197.0, 68.0 ],
					"prototypename" : "bphelp",
					"varname" : "maxhelpui"
=======
					"maxclass" : "bpatcher",
=======
					"args" : [ "@name", "jcom.ramp~", "@description", "Generate ramping signal" ],
					"bgmode" : 1,
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"id" : "obj-21",
					"maxclass" : "bpatcher",
					"name" : "jcom.maxhelpui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"name" : "jcom.maxhelpui.maxpat",
					"args" : [ "@name", "jcom.ramp~", "@description", "Generate ramping signal" ],
					"bgmode" : 1
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"patching_rect" : [ 0.0, 0.0, 556.0, 70.0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
<<<<<<< HEAD
					"id" : "obj-7",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "scope~",
=======
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"id" : "obj-7",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 260.0, 130.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 260.0, 130.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-1",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
<<<<<<< HEAD
					"patching_rect" : [ 320.0, 245.0, 165.0, 79.0 ],
<<<<<<< HEAD
					"text" : "jcom.ramp~ can be used as an alternative to msp's line~ object. The two objects are very similar, though jcom.ramp~ has some extra options available.",
=======
					"numoutlets" : 0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 10.0,
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"numoutlets" : 0,
					"patching_rect" : [ 320.0, 245.0, 165.0, 79.0 ],
					"text" : "tap.ramp~ can be used as an alternative to msp's line~ object. The two objects are very similar, though tap.ramp~ has some extra options available.",
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 160.0, 190.0, 81.0, 17.0 ],
					"text" : "0., 1. 10000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.0, 190.0, 69.0, 17.0 ],
					"text" : "-0.5 5000"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 190.0, 29.0, 17.0 ],
					"text" : "0.7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 180.0, 230.0, 39.0, 19.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
<<<<<<< HEAD
					"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-8",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "newobj",
					"text" : "jcom.ramp~",
					"id" : "obj-8",
=======
					"color" : [ 0.619608, 0.0, 0.360784, 0.701961 ],
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 45.0, 230.0, 73.0, 19.0 ],
					"text" : "jcom.ramp~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 165.0, 232.0, 19.0 ],
					"text" : "Example",
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
<<<<<<< HEAD
<<<<<<< HEAD
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 109.0, 134.0, 17.0 ],
					"text" : "mode vector_accurate"
=======
					"patching_rect" : [ 45.0, 110.0, 134.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 110.0, 134.0, 17.0 ],
					"text" : "mode vector_accurate"
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 130.0, 134.0, 17.0 ],
					"text" : "mode sample_accurate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 330.0, 40.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"maxclass" : "comment",
					"text" : "Type of envelope-following operation to use.",
<<<<<<< HEAD
=======
					"linecount" : 2,
					"id" : "obj-16",
=======
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"fontname" : "Verdana",
					"fontsize" : 10.0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 10.0,
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
=======
					"patching_rect" : [ 318.0, 161.0, 167.0, 31.0 ],
					"text" : "Type of envelope-following operation to use.",
>>>>>>> ee5f4f7... colorized objects in maxhelps
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
<<<<<<< HEAD
=======
				"patchline" : 				{
<<<<<<< HEAD
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
=======
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-12", 0 ]
>>>>>>> ee5f4f7... colorized objects in maxhelps
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ]
	}

}
