{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 53.0, 150.0, 855.0, 461.0 ],
		"bglocked" : 0,
		"defrect" : [ 53.0, 150.0, 855.0, 461.0 ],
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
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 198.0, 183.0, 45.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message send @description \"An OpenSoundControl message to send out over the network.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-2",
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 490.0, 213.0, 292.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return receive @description \"OpenSoundControl messages coming in from the network are reported here.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-3",
					"hidden" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 198.0, 333.0, 298.0, 30.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "multicast_button",
					"items" : [ "single", ",", "multicast" ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-4",
					"numoutlets" : 3,
					"labelclick" : 1,
					"patching_rect" : [ 199.0, 2.0, 76.0, 18.0 ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar multicast_button",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 493.0, 128.0, 118.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @type msg_toggle @range/clipmode none @description \"Choose between single IP or multicast usage\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-6",
					"hidden" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 493.0, 150.0, 334.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jalg.oscnet.ui.maxpat",
					"offset" : [ 0.0, -19.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"id" : "obj-7",
					"numoutlets" : 0,
					"args" : [ "#0_" ],
					"patching_rect" : [ 20.0, 23.0, 256.0, 42.0 ],
					"name" : "jalg.oscnet.ui.maxpat",
					"frozen_box_attributes" : [ "args" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "* activity monitor",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 305.0, 100.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-9",
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 198.0, 227.0, 49.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-10",
					"hidden" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 198.0, 205.0, 91.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-11",
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 51.0, 107.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-13",
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 188.0, 107.0, 37.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.oscnet.maxpat",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 198.0, 311.0, 106.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.oscnet @size 1U-half @module_type control @description \"Send and receive OpenSoundControl over a network port.  You may receive directly or join up to 2 multicast addresses in addition to receiving directly.\"",
					"linecount" : 3,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"hidden" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 16.0, 138.0, 391.0, 42.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-16",
					"hidden" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 99.0, 26.0, 26.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-17",
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 190.0, 26.0, 26.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "* activity monitor",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-18",
					"hidden" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 283.0, 100.0, 18.0 ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/Jamoma",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-12",
					"numoutlets" : 1,
					"patching_rect" : [ 1.0, 0.0, 300.0, 70.0 ],
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 279.5, 251.0, 207.5, 251.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 502.5, 187.0, 486.0, 187.0, 486.0, 121.0, 502.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 197.5, 130.0, 25.5, 130.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 25.5, 126.0, 25.5, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 60.5, 130.0, 25.5, 130.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [ 660.0, 192.0, 438.0, 192.0, 438.0, 75.0, 6.0, 75.0, 6.0, 18.0, 29.5, 18.0 ]
				}

			}
 ]
	}

}
