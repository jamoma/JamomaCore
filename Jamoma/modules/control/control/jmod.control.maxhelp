{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 269.0, 83.0, 662.0, 566.0 ],
		"bglocked" : 0,
		"defrect" : [ 269.0, 83.0, 662.0, 566.0 ],
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
					"maxclass" : "message",
					"text" : "/dspStatus",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-1",
					"patching_rect" : [ 475.0, 65.0, 65.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 477.0, 73.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-34",
					"patching_rect" : [ 560.0, 40.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Return",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-33",
					"patching_rect" : [ 590.0, 40.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/cpu:/enable $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-4",
					"patching_rect" : [ 560.0, 65.0, 99.0, 18.0 ],
					"fontsize" : 10.970939,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Messages",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-2",
					"patching_rect" : [ 440.0, 40.0, 57.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/panic",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-3",
					"patching_rect" : [ 430.0, 65.0, 40.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"patching_rect" : [ 345.0, 40.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/audio $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-7",
					"patching_rect" : [ 345.0, 65.0, 57.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-8",
					"patching_rect" : [ 345.0, 230.0, 36.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Verdana",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /cpu",
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-9",
					"patching_rect" : [ 345.0, 180.0, 66.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-10",
					"patching_rect" : [ 460.0, 200.0, 74.0, 19.0 ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-11",
					"patching_rect" : [ 390.0, 230.0, 116.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"patching_rect" : [ 390.0, 200.0, 68.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"numinlets" : 3,
					"lockeddragscroll" : 1,
					"args" : [ "/output~" ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"patching_rect" : [ 345.0, 410.0, 300.0, 140.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.output~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"args" : [ "/input~" ],
					"numoutlets" : 3,
					"id" : "obj-14",
					"patching_rect" : [ 345.0, 265.0, 300.0, 140.0 ],
					"outlettype" : [ "", "signal", "signal" ],
					"name" : "jmod.input~.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- CPU monitoring. Also reported out left outlet as \"cpu (float).\"",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-15",
					"patching_rect" : [ 17.0, 337.0, 325.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- turn audio off imideately (panic)",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-16",
					"patching_rect" : [ 17.0, 304.0, 316.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Some jamoma modules (jmod.input~.mod and jmod.output~mod) will perform a soft fade in/fade out if audio instead is turned on and off using jmod.control.mod",
					"linecount" : 3,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-17",
					"patching_rect" : [ 24.0, 264.0, 315.0, 43.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Turning audio on and off using dac~, ezdac or similar will cause abrupt start and stop of audio signal.",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-18",
					"patching_rect" : [ 24.0, 240.0, 315.0, 31.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- turn audio on/off.",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-19",
					"patching_rect" : [ 17.0, 228.0, 314.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MSP:",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-20",
					"patching_rect" : [ 17.0, 214.0, 101.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- initialize all Jamoma modules, and set to their default state",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-21",
					"patching_rect" : [ 17.0, 193.0, 316.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"args" : [  ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"patching_rect" : [ 345.0, 105.0, 150.0, 70.0 ],
					"outlettype" : [ "" ],
					"name" : "jmod.control.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.control",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-23",
					"patching_rect" : [ 25.0, 20.0, 197.0, 28.0 ],
					"fontsize" : 18.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a control module for handling various global tasks",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-24",
					"patching_rect" : [ 25.0, 50.0, 260.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-25",
					"patching_rect" : [ 17.0, 15.0, 276.0, 65.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This module is meant to offer a simple way of handling a number of global tasks in the Jamoma environment.",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-26",
					"patching_rect" : [ 17.0, 91.0, 289.0, 31.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The module is still premature and will be enhanced in the future, but so far the following is implemented:",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-27",
					"patching_rect" : [ 17.0, 130.0, 286.0, 31.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "- refresh all Max windows",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-28",
					"patching_rect" : [ 17.0, 181.0, 137.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Max:",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-29",
					"patching_rect" : [ 17.0, 165.0, 101.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If you don't have time for a soft fade out",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-30",
					"patching_rect" : [ 24.0, 316.0, 301.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parameter",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-31",
					"patching_rect" : [ 370.0, 40.0, 61.0, 19.0 ],
					"fontsize" : 10.0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Verdana"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 484.5, 99.0, 414.0, 99.0, 414.0, 99.0, 354.5, 99.0 ]
				}

			}
, 			{
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
					"midpoints" : [ 354.5, 84.0, 354.5, 84.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 439.5, 99.0, 414.0, 99.0, 414.0, 99.0, 354.5, 99.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [ 569.5, 99.0, 354.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
