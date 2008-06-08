{
	"patcher" : 	{
		"rect" : [ 10.0, 46.0, 676.0, 707.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 10.0, 46.0, 676.0, 707.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxfadetime" : 200,
		"boxanimatetime" : 200,
		"scrollanimatetime" : 200,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"patching_rect" : [ 412.0, 214.0, 32.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"patching_rect" : [ 101.0, 199.0, 68.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 33.0, 219.0, 341.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"patching_rect" : [ 33.0, 199.0, 62.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "\/remote \/module\/parameter <value> ramp <ramp-time>",
					"patching_rect" : [ 342.0, 421.0, 325.0, 17.0 ],
					"fontname" : "Courier",
					"frgb" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"textcolor" : [ 0.741176, 0.035294, 0.035294, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In addition you can communicate parameters and messages to any bridged module using this syntax:",
					"linecount" : 2,
					"patching_rect" : [ 342.0, 392.0, 302.0, 30.0 ],
					"fontname" : "Verdana",
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"minimum" : 0,
					"patching_rect" : [ 496.0, 148.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"maximum" : 127,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/remote \/filter~\/filtergain $1",
					"patching_rect" : [ 496.0, 173.0, 156.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "You can poll current state of all parameters, and copy, paste and edit into the cue script.",
					"linecount" : 2,
					"patching_rect" : [ 342.0, 356.0, 247.0, 30.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The cue script can be edited in an external program (e.g. TextWrangler on Mac or Notepad on Win). jmod.cuelist is autowatching for changes to the cue script.",
					"linecount" : 4,
					"patching_rect" : [ 341.0, 299.0, 260.0, 54.0 ],
					"fontname" : "Verdana",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "audio_off",
					"patching_rect" : [ 407.0, 144.0, 52.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fade_out",
					"patching_rect" : [ 407.0, 125.0, 49.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "sweep",
					"patching_rect" : [ 407.0, 106.0, 38.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fade_in",
					"patching_rect" : [ 407.0, 87.0, 43.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "audio_on",
					"patching_rect" : [ 407.0, 68.0, 49.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "initialisation",
					"patching_rect" : [ 407.0, 49.0, 66.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/load_script jmod.demo_cuescript.txt",
					"patching_rect" : [ 162.0, 102.0, 183.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-17",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cuelist",
					"patching_rect" : [ 30.0, 15.0, 189.0, 28.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a module for remote communication to modules by means of a text format cue script.",
					"linecount" : 2,
					"patching_rect" : [ 30.0, 47.0, 335.0, 30.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bordercolor" : [ 0.501961, 0.043137, 0.039216, 1.0 ],
					"patching_rect" : [ 24.0, 9.0, 354.0, 74.0 ],
					"rounded" : 0,
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.262745, 0.254902, 0.419608, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend \/cue",
					"patching_rect" : [ 392.0, 173.0, 69.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/get_state",
					"patching_rect" : [ 101.0, 102.0, 59.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/load_script",
					"patching_rect" : [ 33.0, 102.0, 67.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-23",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/cuelist",
					"patching_rect" : [ 33.0, 125.0, 300.0, 70.0 ],
					"name" : "jmod.cuelist.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-24",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [ "\/cuescript" ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/control",
					"patching_rect" : [ 37.0, 250.0, 300.0, 70.0 ],
					"name" : "jmod.control.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-25",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [ "\/control" ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/output~",
					"patching_rect" : [ 36.0, 520.0, 302.0, 141.0 ],
					"name" : "jmod.output~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-26",
					"numinlets" : 3,
					"numoutlets" : 1,
					"args" : [ "\/output~" ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/input~",
					"patching_rect" : [ 37.0, 322.0, 301.0, 142.0 ],
					"name" : "jmod.input~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-27",
					"numinlets" : 1,
					"numoutlets" : 3,
					"args" : [ "\/input~" ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Load jmod.demo_cuescript.txt and try passing through these cues one at a time.",
					"linecount" : 3,
					"patching_rect" : [ 491.0, 50.0, 147.0, 38.0 ],
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.cuelist sets up a remote communication with the modules. For this to work an unique OSC-aware name have to be assigned to each module as an argument.",
					"linecount" : 3,
					"patching_rect" : [ 341.0, 257.0, 303.0, 42.0 ],
					"fontname" : "Verdana",
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "\/filter~",
					"patching_rect" : [ 37.0, 446.0, 300.0, 70.0 ],
					"name" : "jmod.filter~.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-30",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [ "\/filter~" ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 29.0, 243.0, 641.0, 421.0 ],
					"rounded" : 0,
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 171.5, 121.0, 42.5, 121.0 ]
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
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 505.5, 199.0, 347.0, 199.0, 347.0, 121.0, 42.5, 121.0 ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 1 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 2 ],
					"destination" : [ "obj-30", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 142.0, 401.5, 142.0 ]
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
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 104.0, 401.5, 104.0 ]
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 416.5, 66.0, 401.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0
				}

			}
 ]
	}

}
