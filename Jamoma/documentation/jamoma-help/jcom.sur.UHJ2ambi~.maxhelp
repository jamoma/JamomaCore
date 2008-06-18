{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 294.0, 145.0, 795.0, 607.0 ],
		"bglocked" : 0,
		"defrect" : [ 294.0, 145.0, 795.0, 607.0 ],
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
					"text" : "jcom.sur.UHJ2ambi~",
					"fontsize" : 17.334082,
					"id" : "obj-21",
					"patching_rect" : [ 7.0, 15.0, 298.0, 28.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "encodes two channel stereo UHJ into Ambisonics B-format",
					"fontsize" : 10.0,
					"id" : "obj-37",
					"patching_rect" : [ 7.0, 40.0, 330.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s jmod.decode.cmd",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"hidden" : 1,
					"patching_rect" : [ 265.0, 178.0, 107.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.decode.cmd",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-5",
					"hidden" : 1,
					"patching_rect" : [ 247.0, 372.0, 106.0, 19.0 ],
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loudspeaker positions are not stored as part of this module. They will be maintained by a separate module to be added in the future.",
					"linecount" : 2,
					"fontsize" : 10.0,
					"id" : "obj-6",
					"patching_rect" : [ 14.0, 200.0, 346.0, 31.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Loadspeaker Position",
					"fontsize" : 17.334082,
					"id" : "obj-7",
					"patching_rect" : [ 11.0, 101.0, 236.0, 28.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-8",
					"patching_rect" : [ 1.0, 99.0, 373.0, 27.0 ],
					"bgcolor" : [ 0.596078, 0.596078, 0.701961, 1.0 ],
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Distance",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"patching_rect" : [ 242.0, 134.0, 52.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Elevation",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"patching_rect" : [ 192.0, 134.0, 55.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Azimuth",
					"fontsize" : 10.0,
					"id" : "obj-11",
					"patching_rect" : [ 142.0, 134.0, 50.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.0,
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 10.0,
					"triscale" : 0.9,
					"id" : "obj-12",
					"patching_rect" : [ 245.0, 156.0, 45.0, 19.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"minimum" : -90.0,
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 90.0,
					"triscale" : 0.9,
					"id" : "obj-13",
					"patching_rect" : [ 194.0, 156.0, 45.0, 19.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"minimum" : -180.0,
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 180.0,
					"triscale" : 0.9,
					"id" : "obj-14",
					"patching_rect" : [ 143.0, 156.0, 45.0, 19.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"fontsize" : 10.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 16,
					"triscale" : 0.9,
					"id" : "obj-15",
					"patching_rect" : [ 92.0, 156.0, 35.0, 19.0 ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak /aed i f f f",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-16",
					"patching_rect" : [ 41.0, 177.0, 216.0, 19.0 ],
					"numinlets" : 5,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Index",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"patching_rect" : [ 92.0, 134.0, 37.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-18",
					"patching_rect" : [ 1.0, 130.0, 373.0, 100.0 ],
					"bgcolor" : [ 0.780392, 0.780392, 0.839216, 1.0 ],
					"numinlets" : 1,
					"rounded" : 0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "routes multicables to the DAC",
					"linecount" : 2,
					"fontsize" : 10.0,
					"id" : "obj-19",
					"patching_rect" : [ 685.0, 501.0, 107.0, 31.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"outlettype" : [ "" ],
					"args" : [ "/output~" ],
					"id" : "obj-20",
					"patching_rect" : [ 381.0, 487.0, 301.0, 73.0 ],
					"name" : "jmod.sur.output~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/decode~",
					"outlettype" : [ "", "" ],
					"args" : [ "/decode~" ],
					"id" : "obj-22",
					"patching_rect" : [ 381.0, 404.0, 301.0, 70.0 ],
					"name" : "jmod.sur.ambi.decode~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "at Wikipedia",
					"fontsize" : 9.630046,
					"id" : "obj-23",
					"patching_rect" : [ 195.0, 72.0, 79.0, 18.0 ],
					"frgb" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Encoder based on the equation posted",
					"fontsize" : 9.630046,
					"id" : "obj-24",
					"patching_rect" : [ 6.0, 72.0, 195.0, 18.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"id" : "obj-25",
					"patching_rect" : [ 196.0, 72.0, 67.0, 16.0 ],
					"numinlets" : 1,
					"handoff" : "",
					"numoutlets" : 4,
					"dragtrack" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://en.wikipedia.org/wiki/Ambisonic_UHJ_format",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-26",
					"hidden" : 1,
					"patching_rect" : [ 281.0, 67.0, 373.0, 29.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert to B-format",
					"fontsize" : 10.0,
					"id" : "obj-27",
					"patching_rect" : [ 683.0, 294.0, 139.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.sur.UHJ2ambi~",
					"outlettype" : [ "signal", "signal", "signal" ],
					"fontsize" : 10.0,
					"id" : "obj-28",
					"patching_rect" : [ 381.0, 293.0, 303.0, 19.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ambisonic decoding",
					"fontsize" : 10.0,
					"id" : "obj-29",
					"patching_rect" : [ 687.0, 430.0, 108.0, 19.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/multi.in~",
					"outlettype" : [ "", "" ],
					"args" : [ "/multi.in~" ],
					"id" : "obj-30",
					"patching_rect" : [ 381.0, 325.0, 301.0, 73.0 ],
					"name" : "jmod.sur.multi.in~.maxpat",
					"numinlets" : 33,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 4000",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-31",
					"hidden" : 1,
					"patching_rect" : [ 205.0, 321.0, 52.0, 19.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontsize" : 10.0,
					"id" : "obj-32",
					"hidden" : 1,
					"patching_rect" : [ 205.0, 302.0, 54.0, 19.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/voices 4, /order 1, /omni 0.7071",
					"outlettype" : [ "" ],
					"fontsize" : 10.0,
					"id" : "obj-33",
					"hidden" : 1,
					"patching_rect" : [ 205.0, 332.0, 178.0, 17.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"outlettype" : [ "" ],
					"args" : [ "/control" ],
					"id" : "obj-34",
					"patching_rect" : [ 19.0, 256.0, 152.0, 78.0 ],
					"name" : "jmod.control.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [ "/input~" ],
					"id" : "obj-35",
					"patching_rect" : [ 381.0, 118.0, 303.0, 142.0 ],
					"name" : "jmod.input~.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pack signal on multicable",
					"linecount" : 2,
					"fontsize" : 10.0,
					"id" : "obj-36",
					"patching_rect" : [ 693.0, 346.0, 100.0, 31.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-38",
					"patching_rect" : [ 2.0, 10.0, 366.0, 52.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-16", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"color" : [ 0.6, 0.4, 0.6, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 532.5, 288.0, 390.5, 288.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 0,
					"midpoints" : [ 390.5, 317.0, 399.3125, 317.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-30", 2 ],
					"hidden" : 0,
					"midpoints" : [ 532.5, 317.0, 408.125, 317.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 2 ],
					"destination" : [ "obj-30", 3 ],
					"hidden" : 0,
					"midpoints" : [ 674.5, 321.0, 416.9375, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 2 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
