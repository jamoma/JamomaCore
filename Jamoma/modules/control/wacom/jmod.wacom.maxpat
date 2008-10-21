{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 157.0, 161.0, 835.0, 503.0 ],
		"bglocked" : 0,
		"defrect" : [ 157.0, 161.0, 835.0, 503.0 ],
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
					"maxclass" : "comment",
					"text" : "xy range :",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 423.0, 365.0, 65.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 96.0, 46.0, 62.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 497.0, 366.0, 113.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"items" : [ "Raw", ",", "0-1", ",", "0-1", "proportionnal" ],
					"presentation_rect" : [ 155.0, 47.0, 76.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.parameter xyrange @type msg_generic @range/clipmode none @description \"change range for X Y\"",
					"linecount" : 2,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 497.0, 386.0, 318.0, 31.0 ],
					"numoutlets" : 3,
					"fontsize" : 10.228301,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 495.0, 185.0, 64.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"mode" : 1,
					"outlettype" : [ "", "", "int" ],
					"texton" : "Nopointer",
					"text" : "Pointer",
					"presentation_rect" : [ 180.0, 0.0, 64.0, 19.0 ],
					"outputmode" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 495.0, 110.0, 36.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "int" ],
					"texton" : "On",
					"text" : "Init",
					"presentation_rect" : [ 20.0, 30.0, 36.0, 20.0 ],
					"outputmode" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 495.0, 40.0, 36.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"mode" : 1,
					"outlettype" : [ "", "", "int" ],
					"texton" : "On",
					"text" : "Off",
					"presentation_rect" : [ 260.0, 0.0, 36.0, 20.0 ],
					"outputmode" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 175.0, 129.0, 45.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "nopointer[1]",
					"text" : "jcom.parameter nopointer @type msg_toggle @range/clipmode none @description \"Move mouse pointer\"",
					"linecount" : 2,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 495.0, 210.0, 305.0, 30.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message init @type msg_generic @range/clipmode none @description \"Initialization of wacom object\"",
					"linecount" : 2,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 497.0, 136.0, 295.0, 30.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "on[1]",
					"text" : "jcom.parameter on @type msg_toggle @range/clipmode none @description \"Turn polling on\"",
					"linecount" : 2,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 495.0, 68.0, 278.0, 30.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "menu",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 496.0, 281.0, 100.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "" ],
					"labelclick" : 1,
					"items" : "All tablets and tools",
					"presentation_rect" : [ 153.0, 24.0, 100.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tablet",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 441.0, 282.0, 40.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 115.0, 24.0, 40.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "menu[1]",
					"text" : "jcom.parameter menu @type msg_generic @range/clipmode none @description \"Choose which wacom device to use\"",
					"linecount" : 2,
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 496.0, 305.0, 318.0, 30.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 175.0, 171.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 175.0, 150.0, 91.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 38.0, 69.0, 135.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 16.0, 229.0, 68.0, 28.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 16.0, 195.0, 80.0, 28.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.wacom",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 175.0, 247.0, 104.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "list" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Use Wacom graphic tablets\"",
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 94.0, 455.0, 18.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-22",
					"numinlets" : 0,
					"patching_rect" : [ 16.0, 70.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-23",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 132.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/menu 0",
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 281.0, 223.0, 153.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 281.0, 201.0, 68.0, 18.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-26",
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 1,
					"fontsize" : 12.068032,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 256.5, 192.0, 184.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 269.5, 276.0, 505.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 506.5, 421.0, 492.0, 421.0, 492.0, 360.0, 506.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 505.5, 336.0, 483.0, 336.0, 483.0, 276.0, 505.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 256.5, 192.0, 290.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 88.0, 25.5, 88.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 106.0, 489.0, 106.0, 489.0, 34.0, 504.5, 34.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 248.0, 486.0, 248.0, 486.0, 178.0 ]
				}

			}
 ]
	}

}
