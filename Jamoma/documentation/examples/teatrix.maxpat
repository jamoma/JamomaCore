{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 47.0, 44.0, 992.0, 755.0 ],
		"bglocked" : 0,
		"defrect" : [ 47.0, 44.0, 992.0, 755.0 ],
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
					"maxclass" : "bpatcher",
					"varname" : "/input%",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 135.0, 300.0, 70.0 ],
					"id" : "obj-1",
					"numoutlets" : 2,
					"name" : "jmod.input%.maxpat",
					"outlettype" : [ "", "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"patching_rect" : [ 648.0, 462.0, 320.0, 240.0 ],
					"depthbuffer" : 0,
					"id" : "obj-2",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"patching_rect" : [ 220.0, 445.0, 60.0, 34.092003 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/clear",
					"numinlets" : 2,
					"patching_rect" : [ 51.0, 538.0, 39.0, 16.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 242.0, 539.0, 47.0, 18.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 0.",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 310.0, 726.0, 48.0, 18.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 0.",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 604.0, 441.0, 48.0, 18.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 630.0, 463.0, 20.0, 240.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"id" : "obj-8",
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 310.0, 703.0, 320.0, 20.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"id" : "obj-9",
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"orientation" : 0,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 180.0, 538.0, 47.0, 18.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "quantity",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 122.0, 537.0, 49.0, 18.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 237.0, 513.0, 53.0, 18.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 177.0, 513.0, 53.0, 18.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.autoscale",
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 512.0, 83.0, 18.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 120.0, 513.0, 53.0, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /quantity /x /y",
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 480.0, 155.0, 18.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"setstyle" : 5,
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 570.0, 160.0, 87.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"id" : "obj-17",
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"outlettype" : [ "", "" ],
					"setminmax" : [ 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.oscroute /motion",
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 455.0, 121.0, 18.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"patching_rect" : [ 309.0, 462.0, 320.0, 240.0 ],
					"depthbuffer" : 0,
					"id" : "obj-19",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Currently only works for greyscale images.",
					"linecount" : 3,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 571.0, 98.0, 42.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/orsize%",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 40.0, 209.0, 300.0, 70.0 ],
					"id" : "obj-21",
					"numoutlets" : 2,
					"name" : "jmod.orsize%.maxpat",
					"outlettype" : [ "", "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 684.0, 94.0, 300.0, 140.0 ],
					"id" : "obj-22",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/echo",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 685.0, 237.0, 300.0, 70.0 ],
					"id" : "obj-23",
					"numoutlets" : 3,
					"name" : "jmod.echo~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/control",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 370.0, 210.0, 150.0, 70.0 ],
					"id" : "obj-24",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/output~",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"patching_rect" : [ 685.0, 310.0, 300.0, 140.0 ],
					"id" : "obj-25",
					"numoutlets" : 1,
					"name" : "jmod.output~.maxpat",
					"outlettype" : [ "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/cuescript",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 371.0, 137.0, 300.0, 70.0 ],
					"id" : "obj-26",
					"numoutlets" : 1,
					"name" : "jmod.cuelist.maxpat",
					"outlettype" : [ "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/clear",
					"numinlets" : 2,
					"patching_rect" : [ 555.0, 275.0, 39.0, 16.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/create link /motion/motion/quantity * 10000. -> /echo/right",
					"linecount" : 3,
					"numinlets" : 2,
					"patching_rect" : [ 535.0, 230.0, 132.0, 40.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/mapper",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 370.0, 310.0, 300.0, 140.0 ],
					"id" : "obj-29",
					"numoutlets" : 1,
					"name" : "jmod.mapper.maxpat",
					"outlettype" : [ "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/motion",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 40.0, 360.0, 300.0, 70.0 ],
					"id" : "obj-30",
					"numoutlets" : 2,
					"name" : "jmod.motion%.maxpat",
					"outlettype" : [ "", "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/brcosa",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 40.0, 285.0, 300.0, 70.0 ],
					"id" : "obj-31",
					"numoutlets" : 2,
					"name" : "jmod.brcosa%.maxpat",
					"outlettype" : [ "", "" ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This patch shows a basic example of how it is possible to do video analysis based on frame difference. It is important to calibrate the system well using the brightness and contrast functions, and adjusting the threshold in the motion module.  \r\rClicking on the create link message in the mapping module to the left will set up a mapping between the output of the motion module and the echo module to the right. ",
					"linecount" : 6,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 60.0, 25.0, 536.0, 78.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"fontsize" : 9.873845
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 2 ],
					"destination" : [ "obj-23", 2 ],
					"hidden" : 1,
					"midpoints" : [ 974.5, 240.0, 975.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 2 ],
					"destination" : [ "obj-25", 2 ],
					"hidden" : 1,
					"midpoints" : [ 975.5, 308.0, 975.5, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 1,
					"midpoints" : [ 834.0, 240.0, 835.0, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 1,
					"midpoints" : [ 835.0, 308.0, 835.0, 308.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 544.5, 297.0, 379.5, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 564.5, 297.0, 531.0, 297.0, 531.0, 297.0, 379.5, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-30", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 140.166672, 501.0, 246.5, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 330.5, 435.0, 229.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 94.833336, 504.0, 186.5, 504.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 507.0, 129.5, 507.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
