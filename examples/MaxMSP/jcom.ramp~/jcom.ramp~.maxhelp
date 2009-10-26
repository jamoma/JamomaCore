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
					"id" : "obj-21",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 556.0, 70.0 ],
					"numoutlets" : 0,
					"name" : "jcom.maxhelpui.maxpat",
					"args" : [ "@name", "jcom.ramp~", "@description", "Generate ramping signal" ],
					"bgmode" : 1
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"id" : "obj-7",
=======
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"maxclass" : "scope~",
					"id" : "obj-7",
					"numinlets" : 2,
					"patching_rect" : [ 180.0, 260.0, 130.0, 55.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"id" : "obj-5",
					"numinlets" : 2,
					"patching_rect" : [ 45.0, 260.0, 130.0, 55.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tap.ramp~ can be used as an alternative to msp's line~ object. The two objects are very similar, though tap.ramp~ has some extra options available.",
					"linecount" : 6,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 320.0, 245.0, 165.0, 79.0 ],
<<<<<<< HEAD
					"text" : "jcom.ramp~ can be used as an alternative to msp's line~ object. The two objects are very similar, though jcom.ramp~ has some extra options available.",
=======
					"numoutlets" : 0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 10.0,
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0., 1. 10000",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 160.0, 190.0, 81.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "-0.5 5000",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 80.0, 190.0, 69.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.7",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 45.0, 190.0, 29.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 180.0, 230.0, 39.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "signal", "bang" ]
				}

			}
, 			{
				"box" : 				{
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
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 230.0, 73.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Example",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 80.0, 165.0, 232.0, 19.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 10.0,
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode vector_accurate",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 2,
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
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode sample_accurate",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 45.0, 130.0, 134.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"id" : "obj-15",
					"numinlets" : 2,
					"patching_rect" : [ 45.0, 330.0, 40.0, 40.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Type of envelope-following operation to use.",
<<<<<<< HEAD
=======
					"linecount" : 2,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 318.0, 161.0, 167.0, 31.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.003922, 0.003922, 0.003922, 1.0 ],
					"fontsize" : 10.0,
>>>>>>> 24589e7... Updated help patch with maxhelpui. Still have to colorize objects.
					"textcolor" : [ 0.003922, 0.003922, 0.003922, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
<<<<<<< HEAD
=======
				"patchline" : 				{
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
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
