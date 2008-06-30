{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 628.0, 44.0, 651.0, 617.0 ],
		"bgcolor" : [ 0.137255, 0.137255, 0.137255, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 628.0, 44.0, 651.0, 617.0 ],
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
					"maxclass" : "comment",
					"text" : "control the /gain of all modules (which have one)",
					"presentation_rect" : [ 68.0, 142.0, 0.0, 0.0 ],
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 70.0, 140.0, 256.0, 18.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"presentation_rect" : [ 30.0, 140.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 140.0, 35.0, 18.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/*/audio/gain $1",
					"presentation_rect" : [ 30.0, 158.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 35.0, 158.0, 117.0, 16.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[7]",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 493.0, 150.0, 70.0 ],
					"id" : "obj-1",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/control" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "NOTE: This does not work yet!",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 50.0, 300.0, 197.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control the two degrade modules together",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 76.0, 265.0, 218.0, 18.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 39.0, 264.0, 35.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/degrade.*/sr_ratio $1",
					"numinlets" : 2,
					"patching_rect" : [ 39.0, 282.0, 122.0, 16.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control the /audio/mute of all modules, the understand it",
					"linecount" : 2,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 56.0, 203.0, 187.0, 30.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/*/audio/mute $1",
					"numinlets" : 2,
					"patching_rect" : [ 39.0, 231.0, 97.0, 16.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 39.0, 208.0, 15.0, 15.0 ],
					"id" : "obj-8",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control the /gain of one module, as usual",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 59.0, 100.0, 214.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 98.0, 35.0, 18.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/filter~/audio/gain $1",
					"numinlets" : 2,
					"patching_rect" : [ 21.0, 116.0, 117.0, 16.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /remote",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 394.0, 93.0, 18.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[6]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 327.0, 460.0, 300.0, 140.0 ],
					"id" : "obj-13",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/output~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[5]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 325.0, 20.0, 300.0, 140.0 ],
					"id" : "obj-14",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "addressing modules using wildcards",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 57.0, 226.0, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "wildcard demo",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 35.0, 30.0, 200.0, 28.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"fontsize" : 17.334082
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.180392, 0.180392, 0.180392, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 19.0, 255.0, 60.0 ],
					"id" : "obj-18",
					"rounded" : 7,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[4]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 420.0, 300.0, 70.0 ],
					"id" : "obj-19",
					"numoutlets" : 1,
					"name" : "jmod.cuelist.maxpat",
					"outlettype" : [ "" ],
					"args" : [ "/cuelist" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[3]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 326.0, 386.0, 300.0, 70.0 ],
					"id" : "obj-20",
					"numoutlets" : 3,
					"name" : "jmod.filter~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/filter~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[2]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 326.0, 313.0, 300.0, 70.0 ],
					"id" : "obj-21",
					"numoutlets" : 3,
					"name" : "jmod.degrade~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/degrade.2" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[1]",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 326.0, 238.0, 300.0, 70.0 ],
					"id" : "obj-22",
					"numoutlets" : 3,
					"name" : "jmod.echo~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/echo~" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 326.0, 163.0, 300.0, 70.0 ],
					"id" : "obj-23",
					"numoutlets" : 3,
					"name" : "jmod.degrade~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/degrade.1" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 189.0, 29.0, 189.0, 29.0, 381.0, 30.5, 381.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 307.0, 30.5, 307.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 254.0, 30.5, 254.0 ]
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 2 ],
					"destination" : [ "obj-21", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-20", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
