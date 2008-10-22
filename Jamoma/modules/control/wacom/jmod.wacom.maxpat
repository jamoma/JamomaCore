{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 171.0, 95.0, 838.0, 597.0 ],
		"bglocked" : 0,
		"defrect" : [ 171.0, 95.0, 838.0, 597.0 ],
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
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 173.0, 76.0, 212.0, 16.0 ],
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 173.0, 76.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "nopointer[3]",
					"text" : "jcom.parameter flusheventqueue @type msg_toggle @description flusheventqueue \"1 message to have no delay at the output.\"",
					"linecount" : 3,
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 497.0, 513.0, 311.0, 42.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "nopointer[2]",
					"text" : "jcom.parameter bgrb @type msg_toggle @description \"Use the object when Max/MSP is in background\"",
					"linecount" : 2,
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 498.0, 444.0, 311.0, 30.0 ],
					"numoutlets" : 3,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "Use the object when Max/MSP is in background",
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 498.0, 424.0, 50.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"mode" : 1,
					"outlettype" : [ "", "", "int" ],
					"texton" : "bgrb on",
					"text" : "bgrb off",
					"presentation_rect" : [ 230.0, 25.0, 64.0, 17.0 ],
					"outputmode" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "\"flusheventqueue 1\" message to have no delay at the output.",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 497.0, 493.0, 124.0, 16.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"mode" : 1,
					"outlettype" : [ "", "", "int" ],
					"texton" : "flusheventqueue 1",
					"text" : "flusheventqueue 0",
					"presentation_rect" : [ 191.0, 46.0, 104.0, 17.0 ],
					"outputmode" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "xy range",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 424.0, 351.0, 65.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.0,
					"presentation_rect" : [ 34.0, 46.0, 62.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 498.0, 352.0, 113.0, 17.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"fontsize" : 9.0,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "Raw", ",", "0-1", ",", "0-1", "proportionnal" ],
					"labelclick" : 1,
					"presentation_rect" : [ 85.0, 47.0, 76.0, 17.0 ]
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
					"patching_rect" : [ 498.0, 372.0, 318.0, 31.0 ],
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
					"presentation_rect" : [ 179.0, 2.0, 64.0, 16.0 ],
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
					"presentation_rect" : [ 6.0, 26.0, 36.0, 16.0 ],
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
					"presentation_rect" : [ 250.0, 2.0, 36.0, 16.0 ],
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
					"items" : "All tablets and tools",
					"labelclick" : 1,
					"presentation_rect" : [ 84.0, 24.0, 131.0, 19.0 ]
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
					"presentation_rect" : [ 47.0, 24.0, 40.0, 19.0 ]
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
					"patching_rect" : [ 33.0, 76.0, 135.0, 16.0 ],
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
					"patching_rect" : [ 14.0, 101.0, 455.0, 18.0 ],
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
					"text" : "/preset/write 0",
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
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 182.5, 96.0, 23.5, 96.0 ]
				}

			}
, 			{
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 506.5, 559.0, 489.0, 559.0, 489.0, 486.0, 506.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 507.5, 478.0, 489.0, 478.0, 489.0, 418.0, 507.5, 418.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 504.5, 240.0, 489.0, 240.0, 489.0, 180.0, 504.5, 180.0 ]
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 42.5, 97.0, 23.5, 97.0 ]
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
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-23", 0 ],
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 507.5, 407.0, 493.0, 407.0, 493.0, 346.0, 507.5, 346.0 ]
				}

			}
 ]
	}

}
