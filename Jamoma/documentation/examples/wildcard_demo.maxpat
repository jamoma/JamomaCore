{
	"patcher" : 	{
		"rect" : [ 309.0, 71.0, 651.0, 617.0 ],
		"bgcolor" : [ 0.137255, 0.137255, 0.137255, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 309.0, 71.0, 651.0, 617.0 ],
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
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[7]",
					"patching_rect" : [ 21.0, 493.0, 302.0, 71.0 ],
					"name" : "jmod.control.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [ "\/control" ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "NOTE: This does not work yet!",
					"patching_rect" : [ 48.0, 242.0, 197.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control the two degrade modules together",
					"patching_rect" : [ 74.0, 207.0, 197.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 37.0, 206.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/degrade.*\/sr_ratio $1",
					"patching_rect" : [ 37.0, 224.0, 120.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control the \/audio\/mute of all modules, the understand it",
					"linecount" : 2,
					"patching_rect" : [ 54.0, 145.0, 187.0, 28.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/*\/audio\/mute $1",
					"patching_rect" : [ 37.0, 173.0, 95.0, 15.0 ],
					"fontname" : "Verdana",
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 37.0, 150.0, 15.0, 15.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "control the \/gain of one module, as usual",
					"patching_rect" : [ 59.0, 100.0, 193.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 21.0, 98.0, 35.0, 17.0 ],
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\/filter~\/audio\/gain $1",
					"patching_rect" : [ 21.0, 116.0, 114.0, 15.0 ],
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
					"maxclass" : "newobj",
					"text" : "prepend \/remote",
					"patching_rect" : [ 21.0, 394.0, 86.0, 17.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[6]",
					"patching_rect" : [ 327.0, 460.0, 302.0, 131.0 ],
					"name" : "jmod.output~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-13",
					"numinlets" : 3,
					"numoutlets" : 1,
					"args" : [ "\/output~" ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[5]",
					"patching_rect" : [ 326.0, 27.0, 302.0, 131.0 ],
					"name" : "jmod.input~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 3,
					"args" : [ "\/input~" ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "addressing modules using wildcards",
					"patching_rect" : [ 36.0, 68.0, 226.0, 17.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 35 35 35",
					"patching_rect" : [ 0.0, 21.0, 88.0, 17.0 ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-16",
					"numinlets" : 4,
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "wildcard demo",
					"patching_rect" : [ 36.0, 41.0, 200.0, 28.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numoutlets" : 0,
					"fontsize" : 15.799999
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 21.0, 30.0, 255.0, 60.0 ],
					"rounded" : 7,
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.180392, 0.180392, 0.180392, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[4]",
					"patching_rect" : [ 21.0, 420.0, 302.0, 71.0 ],
					"name" : "jmod.cuelist.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 1,
					"args" : [ "\/cuelist" ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[3]",
					"patching_rect" : [ 326.0, 386.0, 302.0, 71.0 ],
					"name" : "jmod.filter~.mxt",
					"lockeddragscroll" : 1,
					"id" : "obj-20",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [ "\/filter~" ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[2]",
					"patching_rect" : [ 326.0, 313.0, 302.0, 71.0 ],
					"name" : "jmod.degrade~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-21",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [ "\/degrade.2" ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt[1]",
					"patching_rect" : [ 326.0, 238.0, 302.0, 71.0 ],
					"name" : "jmod.echo~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-22",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [ "\/echo~" ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.degrade~.mxt",
					"patching_rect" : [ 326.0, 163.0, 302.0, 71.0 ],
					"name" : "jmod.degrade~.maxpat",
					"lockeddragscroll" : 1,
					"id" : "obj-23",
					"numinlets" : 3,
					"numoutlets" : 3,
					"args" : [ "\/degrade.1" ],
					"outlettype" : [ "", "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 46.5, 247.0, 30.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 46.5, 194.0, 30.5, 194.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-22", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 2 ],
					"destination" : [ "obj-21", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-20", 2 ],
					"hidden" : 0
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 2 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0
				}

			}
 ]
	}

}
