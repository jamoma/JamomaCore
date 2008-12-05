{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 7.0, 44.0, 873.0, 525.0 ],
		"bglocked" : 0,
		"defrect" : [ 7.0, 44.0, 873.0, 525.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "multichannel output",
					"linecount" : 2,
					"patching_rect" : [ 547.0, 352.0, 93.0, 31.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"id" : "obj-33",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "jmod.sur.meters~.maxpat",
					"patching_rect" : [ 240.0, 184.0, 300.0, 140.0 ],
					"numoutlets" : 2,
					"args" : [ "meter" ],
					"outlettype" : [ "", "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"id" : "obj-31",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "outputs the current position in the soundfile as a normalized value between 0..1",
					"linecount" : 3,
					"patching_rect" : [ 38.0, 236.0, 179.0, 43.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 22.0, 219.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-21",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "info/position:/enable $1",
					"patching_rect" : [ 36.0, 219.0, 132.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-22",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.sur.multi.input~",
					"patching_rect" : [ 7.0, 7.0, 206.0, 28.0 ],
					"numoutlets" : 0,
					"fontsize" : 17.334082,
					"fontname" : "Verdana",
					"id" : "obj-26",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Playback of multichannel Audiofiles based on sfplay~",
					"patching_rect" : [ 7.0, 33.0, 345.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"id" : "obj-55",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 2.0, 3.0, 351.0, 53.0 ],
					"numoutlets" : 0,
					"rounded" : 15,
					"id" : "obj-56",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "SoundFileMerger 2",
					"patching_rect" : [ 109.0, 337.0, 102.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"patching_rect" : [ 108.0, 335.0, 94.0, 15.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : "",
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://www.e--j.com/",
					"linecount" : 3,
					"patching_rect" : [ 55.0, 357.0, 141.0, 41.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-11",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "playback level",
					"patching_rect" : [ 142.0, 98.0, 80.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"patching_rect" : [ 1.0, 97.0, 35.0, 19.0 ],
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 1,
					"triscale" : 0.9,
					"maximum" : 158
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio/gain $1",
					"patching_rect" : [ 35.0, 97.0, 84.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "loops the soundfile when finished",
					"linecount" : 2,
					"patching_rect" : [ 112.0, 128.0, 107.0, 31.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "change the time display in the module to countdown mode",
					"linecount" : 3,
					"patching_rect" : [ 112.0, 165.0, 120.0, 43.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 20.0, 133.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-17",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/loop $1",
					"patching_rect" : [ 34.0, 133.0, 50.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-18",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 18.0, 173.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-19",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/countdown $1",
					"patching_rect" : [ 32.0, 173.0, 84.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r cmd",
					"patching_rect" : [ 240.0, 69.0, 37.0, 19.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-23",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s cmd",
					"patching_rect" : [ 172.0, 219.0, 38.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"hidden" : 1,
					"id" : "obj-24",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/loop 1",
					"patching_rect" : [ 239.0, 164.0, 285.0, 17.0 ],
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"id" : "obj-25",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"name" : "jmod.control.maxpat",
					"patching_rect" : [ 560.0, 89.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"args" : [ "/jmod.control" ],
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"id" : "obj-32",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "metering",
					"patching_rect" : [ 547.0, 231.0, 93.0, 19.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"id" : "obj-41",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"name" : "jmod.sur.output~.maxpat",
					"patching_rect" : [ 240.0, 328.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"args" : [ "/output~" ],
					"outlettype" : [ "" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-42",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.sur.multi.input~",
					"name" : "jmod.sur.multi.input~.maxpat",
					"patching_rect" : [ 240.0, 89.0, 300.0, 70.0 ],
					"numoutlets" : 2,
					"args" : [ "/jmod.sur.multi.input~" ],
					"outlettype" : [ "", "" ],
					"lockeddragscroll" : 1,
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-52",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "to create multichannel audio files from mulitple monaural audio files, use e.g.",
					"linecount" : 3,
					"patching_rect" : [ 6.0, 311.0, 165.0, 43.0 ],
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"fontname" : "Verdana",
					"id" : "obj-54",
					"numinlets" : 1,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
