{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 643.0, 73.0, 662.0, 566.0 ],
		"bglocked" : 0,
		"defrect" : [ 643.0, 73.0, 662.0, 566.0 ],
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
					"text" : "Messages",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"patching_rect" : [ 455.0, 55.0, 57.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/panic",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"patching_rect" : [ 485.0, 75.0, 40.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"id" : "obj-5",
					"patching_rect" : [ 450.0, 75.0, 33.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-6",
					"patching_rect" : [ 345.0, 50.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio $1",
					"fontname" : "Verdana",
					"id" : "obj-7",
					"patching_rect" : [ 345.0, 75.0, 57.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"id" : "obj-8",
					"triscale" : 0.9,
					"patching_rect" : [ 345.0, 230.0, 36.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /cpu",
					"fontname" : "Verdana",
					"id" : "obj-9",
					"patching_rect" : [ 345.0, 180.0, 66.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"id" : "obj-10",
					"patching_rect" : [ 460.0, 200.0, 74.0, 19.0 ],
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio 1",
					"fontname" : "Verdana",
					"id" : "obj-11",
					"patching_rect" : [ 390.0, 230.0, 116.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"id" : "obj-12",
					"patching_rect" : [ 390.0, 200.0, 68.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"id" : "obj-13",
					"name" : "jmod.output~.maxpat",
					"patching_rect" : [ 345.0, 410.0, 300.0, 140.0 ],
					"numinlets" : 3,
					"args" : [ "/output~" ],
					"numoutlets" : 1,
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"id" : "obj-14",
					"name" : "jmod.input~.maxpat",
					"patching_rect" : [ 345.0, 265.0, 300.0, 140.0 ],
					"numinlets" : 1,
					"args" : [ "/input~" ],
					"numoutlets" : 3,
					"lockeddragscroll" : 1,
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- CPU monitoring. Also reported out left outlet as \"cpu (float).\"",
					"fontname" : "Verdana",
					"id" : "obj-15",
					"patching_rect" : [ 17.0, 337.0, 325.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- turn audio off imideately (panic)",
					"fontname" : "Verdana",
					"id" : "obj-16",
					"patching_rect" : [ 17.0, 304.0, 316.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Some jamoma modules (jmod.input~.mod and jmod.output~mod) will perform a soft fade in/fade out if audio instead is turned on and off using jmod.control.mod",
					"linecount" : 3,
					"fontname" : "Verdana",
					"id" : "obj-17",
					"patching_rect" : [ 24.0, 264.0, 315.0, 43.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Turning audio on and off using dac~, ezdac or similar will cause abrupt start and stop of audio signal.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"patching_rect" : [ 24.0, 240.0, 315.0, 31.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- turn audio on/off.",
					"fontname" : "Verdana",
					"id" : "obj-19",
					"patching_rect" : [ 17.0, 228.0, 314.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MSP:",
					"fontname" : "Verdana",
					"id" : "obj-20",
					"patching_rect" : [ 17.0, 214.0, 101.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- initialize all Jamoma modules, and set to their default state",
					"fontname" : "Verdana",
					"id" : "obj-21",
					"patching_rect" : [ 17.0, 193.0, 316.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"id" : "obj-22",
					"name" : "jmod.control.maxpat",
					"patching_rect" : [ 345.0, 105.0, 150.0, 70.0 ],
					"numinlets" : 1,
					"args" : [  ],
					"numoutlets" : 1,
					"lockeddragscroll" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.control",
					"fontname" : "Verdana",
					"id" : "obj-23",
					"patching_rect" : [ 25.0, 20.0, 197.0, 28.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a control module for handling various global tasks",
					"fontname" : "Verdana",
					"id" : "obj-24",
					"patching_rect" : [ 25.0, 50.0, 260.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-25",
					"patching_rect" : [ 17.0, 15.0, 276.0, 65.0 ],
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module is meant to offer a simple way of handling a number of global tasks in the Jamoma environment.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-26",
					"patching_rect" : [ 17.0, 91.0, 289.0, 31.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The module is still premature and will be enhanced in the future, but so far the following is implemented:",
					"linecount" : 2,
					"fontname" : "Verdana",
					"id" : "obj-27",
					"patching_rect" : [ 17.0, 130.0, 286.0, 31.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- refresh all Max windows",
					"fontname" : "Verdana",
					"id" : "obj-28",
					"patching_rect" : [ 17.0, 181.0, 137.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Max:",
					"fontname" : "Verdana",
					"id" : "obj-29",
					"patching_rect" : [ 17.0, 165.0, 101.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you don't have time for a soft fade out",
					"fontname" : "Verdana",
					"id" : "obj-30",
					"patching_rect" : [ 24.0, 316.0, 301.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"fontname" : "Verdana",
					"id" : "obj-31",
					"patching_rect" : [ 370.0, 50.0, 60.0, 19.0 ],
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 99.0, 354.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 99.0, 354.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [ 469.5, 222.0, 399.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
