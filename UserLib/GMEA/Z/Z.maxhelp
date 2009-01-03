{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ -1065.0, -3.0, 862.0, 780.0 ],
		"bglocked" : 0,
		"defrect" : [ -1065.0, -3.0, 862.0, 780.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "development supported by GMEA, Centre National de Création Musicale d'Albi-Tarn, France",
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Verdana",
					"patching_rect" : [ 365.0, 10.0, 467.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "sftest[1]",
					"outlettype" : [ "", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 337.0, 281.0, 300.0, 105.0 ],
					"args" : [ "Zspat2~" ],
					"numinlets" : 3,
					"id" : "obj-26",
					"patching_rect" : [ 335.0, 480.0, 300.0, 105.0 ],
					"name" : "jmod.Zspat2~.maxpat",
					"numoutlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "zeq",
					"outlettype" : [ "", "signal" ],
					"presentation_rect" : [ 18.0, 390.0, 300.0, 140.0 ],
					"args" : [ "Zeq~" ],
					"numinlets" : 2,
					"id" : "obj-24",
					"patching_rect" : [ 15.0, 335.0, 300.0, 140.0 ],
					"name" : "jmod.Zequalizer~.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "input",
					"outlettype" : [ "", "signal" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 340.0, 380.0, 150.0, 70.0 ],
					"args" : [ "input~" ],
					"numinlets" : 2,
					"id" : "obj-22",
					"patching_rect" : [ 335.0, 240.0, 150.0, 70.0 ],
					"name" : "jmod.Zin~.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "sftest",
					"outlettype" : [ "", "", "" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 341.0, 178.0, 300.0, 70.0 ],
					"args" : [ "ZDtD2~" ],
					"numinlets" : 1,
					"id" : "obj-21",
					"patching_rect" : [ 335.0, 400.0, 300.0, 70.0 ],
					"name" : "jmod.ZDtD2~.maxpat",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-4",
					"patching_rect" : [ 315.0, 595.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-20",
					"patching_rect" : [ 279.0, 595.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-19",
					"patching_rect" : [ 255.0, 595.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-18",
					"patching_rect" : [ 219.0, 595.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-16",
					"patching_rect" : [ 183.0, 595.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-14",
					"patching_rect" : [ 147.0, 595.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-13",
					"patching_rect" : [ 111.0, 595.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-11",
					"patching_rect" : [ 75.0, 595.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-10",
					"patching_rect" : [ 39.0, 645.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"numinlets" : 1,
					"id" : "obj-7",
					"patching_rect" : [ 3.0, 645.0, 12.0, 102.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"outlettype" : [ "", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"presentation_rect" : [ 22.0, 476.0, 300.0, 105.0 ],
					"args" : [ "Zspat~" ],
					"numinlets" : 2,
					"id" : "obj-2",
					"patching_rect" : [ 15.0, 480.0, 300.0, 105.0 ],
					"name" : "jmod.Zspat~.maxpat",
					"numoutlets" : 11
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "lptest",
					"outlettype" : [ "", "signal" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 15.0, 15.0, 300.0, 140.0 ],
					"args" : [ "/Zloop~" ],
					"numinlets" : 1,
					"id" : "obj-8",
					"patching_rect" : [ 15.0, 90.0, 300.0, 140.0 ],
					"name" : "jmod.Zlooper~.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "Zmod",
					"outlettype" : [ "", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"args" : [ "Zmod~" ],
					"numinlets" : 2,
					"id" : "obj-6",
					"patching_rect" : [ 15.0, 245.0, 300.0, 70.0 ],
					"name" : "jmod.Zmodulation~.maxpat",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Drag and drop soundfile folders on the bufferpool module\n\nSoundfiles are organized in folders \n\ndrop in the main folder containing the all subfolders.\nor Drop individual files",
					"linecount" : 6,
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 510.0, 145.0, 271.0, 75.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "toto",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 35.0 ],
					"args" : [ "/bufferpool" ],
					"numinlets" : 1,
					"id" : "obj-15",
					"patching_rect" : [ 335.0, 180.0, 150.0, 35.0 ],
					"name" : "jmod.bufferpool.maxpat",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Z",
					"fontsize" : 17.334082,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-38",
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 15.0, 23.0, 28.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A modular realtime composition system based on Jamoma",
					"fontsize" : 10.0,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-39",
					"fontname" : "Verdana",
					"patching_rect" : [ 15.0, 40.0, 345.0, 19.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"id" : "obj-40",
					"patching_rect" : [ 10.0, 11.0, 351.0, 53.0 ],
					"numoutlets" : 0,
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4 5 6 7 8",
					"fontsize" : 9.0,
					"hidden" : 1,
					"numinlets" : 8,
					"id" : "obj-1",
					"fontname" : "Arial",
					"patching_rect" : [ 360.0, 705.0, 220.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control.mxt",
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"args" : [ "control" ],
					"numinlets" : 1,
					"id" : "obj-5",
					"patching_rect" : [ 335.0, 95.0, 150.0, 70.0 ],
					"name" : "jmod.control.maxpat",
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 8 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 7 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 6 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 5 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 4 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 3 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 9 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 10 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 3 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 4 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 5 ],
					"destination" : [ "obj-1", 4 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 6 ],
					"destination" : [ "obj-1", 5 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 7 ],
					"destination" : [ "obj-1", 6 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 8 ],
					"destination" : [ "obj-1", 7 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-26", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-26", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 8 ],
					"destination" : [ "obj-1", 7 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 7 ],
					"destination" : [ "obj-1", 6 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 6 ],
					"destination" : [ "obj-1", 5 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 5 ],
					"destination" : [ "obj-1", 4 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 4 ],
					"destination" : [ "obj-1", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 3 ],
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
