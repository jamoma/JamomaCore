{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 128.0, 191.0, 855.0, 461.0 ],
		"bglocked" : 0,
		"defrect" : [ 128.0, 191.0, 855.0, 461.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 196.0, 204.0, 45.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.message send @description \"An OpenSoundControl message to send out over the network.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 490.0, 213.0, 296.0, 30.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.return receive @description \"OpenSoundControl messages coming in from the network are reported here.\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 196.0, 300.0, 298.0, 30.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "multicast_button",
					"fontname" : "Verdana",
					"presentation_rect" : [ 199.0, 2.0, 76.0, 19.0 ],
					"numinlets" : 1,
					"items" : [ "single", ",", "multicast" ],
					"fontsize" : 10.0,
					"patching_rect" : [ 492.0, 124.0, 76.0, 19.0 ],
					"numoutlets" : 3,
					"labelclick" : 1,
					"presentation" : 1,
					"types" : [  ],
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mode",
					"text" : "jcom.parameter mode @type msg_toggle @range/clipmode none @description \"Choose between single IP or multicast usage\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 493.0, 150.0, 337.0, 30.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jalg.oscnet.ui.maxpat",
					"offset" : [ 0.0, -19.0 ],
					"presentation_rect" : [ 1.0, 18.0, 304.0, 49.0 ],
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 8.0, 19.0, 283.0, 51.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"id" : "obj-7",
					"args" : [ "#0_" ],
					"name" : "jalg.oscnet.ui.maxpat",
					"frozen_box_attributes" : [ "args" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "* activity monitor",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 44.0, 305.0, 100.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 196.0, 248.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 196.0, 226.0, 91.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 51.0, 107.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 188.0, 107.0, 37.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.oscnet.maxpat",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 9.873845,
					"patching_rect" : [ 196.0, 278.0, 106.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @description \"Send and receive OpenSoundControl over a network port.  You may receive directly or join up to 2 multicast addresses in addition to receiving directly.\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 140.0, 325.0, 42.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 99.0, 26.0, 26.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 197.0, 26.0, 26.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "* activity monitor",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 44.0, 283.0, 100.0, 18.0 ],
					"numoutlets" : 0,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 1.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 1.0, 0.0, 300.0, 70.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-12"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 197.5, 130.0, 25.5, 130.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 25.5, 126.0, 25.5, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 60.5, 130.0, 25.5, 130.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 277.5, 272.0, 205.5, 272.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 661.5, 192.0, 438.0, 192.0, 438.0, 75.0, 6.0, 75.0, 6.0, 18.0, 17.5, 18.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 502.5, 180.0, 477.0, 180.0, 477.0, 120.0, 501.5, 120.0 ]
				}

			}
 ]
	}

}
