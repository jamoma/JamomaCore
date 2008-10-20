{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 290.0, 44.0, 814.0, 780.0 ],
		"bglocked" : 0,
		"defrect" : [ 290.0, 44.0, 814.0, 780.0 ],
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
					"numinlets" : 1,
					"patching_rect" : [ 495.0, 145.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 10.970939
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 101.0, 199.0, 73.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numinlets" : 2,
					"patching_rect" : [ 33.0, 219.0, 341.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 199.0, 68.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/remote /module/parameter <value> ramp <ramp-time>",
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 342.0, 421.0, 369.0, 18.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"id" : "obj-5",
					"fontname" : "Courier",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In addition you can communicate parameters and messages to any bridged module using this syntax:",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 342.0, 392.0, 302.0, 30.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/remote /filter~/filtergain $1",
					"numinlets" : 2,
					"patching_rect" : [ 495.0, 170.0, 156.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "You can poll current state of all parameters, and copy, paste and edit into the cue script.",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 342.0, 356.0, 247.0, 30.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The cue script can be edited in an external program (e.g. TextWrangler on Mac or Notepad on Win). jmod.cuelist is autowatching for changes to the cue script.",
					"linecount" : 4,
					"numinlets" : 1,
					"patching_rect" : [ 341.0, 299.0, 263.0, 54.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "audio_off",
					"numinlets" : 2,
					"patching_rect" : [ 407.0, 144.0, 55.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fade_out",
					"numinlets" : 2,
					"patching_rect" : [ 407.0, 125.0, 52.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "sweep",
					"numinlets" : 2,
					"patching_rect" : [ 407.0, 106.0, 40.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fade_in",
					"numinlets" : 2,
					"patching_rect" : [ 407.0, 87.0, 45.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "audio_on",
					"numinlets" : 2,
					"patching_rect" : [ 407.0, 68.0, 54.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "initialisation",
					"numinlets" : 2,
					"patching_rect" : [ 407.0, 49.0, 68.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/load_script jmod.demo_cuescript.txt",
					"numinlets" : 2,
					"patching_rect" : [ 162.0, 102.0, 195.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cuelist",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 15.0, 189.0, 28.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a module for remote communication to modules by means of a text format cue script.",
					"linecount" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 47.0, 335.0, 30.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 9.0, 354.0, 74.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"rounded" : 15,
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /cue",
					"numinlets" : 1,
					"patching_rect" : [ 392.0, 173.0, 74.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/get_state",
					"numinlets" : 2,
					"patching_rect" : [ 101.0, 102.0, 60.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/load_script",
					"numinlets" : 2,
					"patching_rect" : [ 33.0, 102.0, 67.0, 16.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/cuelist",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 125.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"id" : "obj-24",
					"name" : "jmod.cuelist.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/cuescript" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 37.0, 250.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/control" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 36.0, 540.0, 300.0, 140.0 ],
					"numoutlets" : 1,
					"id" : "obj-26",
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 37.0, 322.0, 300.0, 140.0 ],
					"numoutlets" : 3,
					"id" : "obj-27",
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Load jmod.demo_cuescript.txt and try passing through these cues one at a time.",
					"linecount" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 491.0, 50.0, 163.0, 42.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cuelist sets up a remote communication with the modules. For this to work an unique OSC-aware name have to be assigned to each module as an argument.",
					"linecount" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 341.0, 257.0, 303.0, 42.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/filter~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 37.0, 466.0, 300.0, 70.0 ],
					"numoutlets" : 3,
					"id" : "obj-30",
					"name" : "jmod.filter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/filter~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 29.0, 243.0, 689.0, 444.0 ],
					"numoutlets" : 0,
					"id" : "obj-31",
					"rounded" : 15
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 66.0, 401.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 85.0, 401.5, 85.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 104.0, 401.5, 104.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 123.0, 401.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 142.0, 401.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 161.0, 401.5, 161.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 110.5, 217.0, 42.5, 217.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 401.5, 199.0, 347.0, 199.0, 347.0, 121.0, 42.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 199.0, 347.0, 199.0, 347.0, 121.0, 42.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 110.5, 121.0, 42.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 171.5, 121.0, 42.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-30", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
