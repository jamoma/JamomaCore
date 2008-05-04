{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 279.0, 176.0, 943.0, 498.0 ],
		"bglocked" : 0,
		"defrect" : [ 279.0, 176.0, 943.0, 498.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"text" : "Normalize",
					"texton" : "Normalize",
					"presentation_rect" : [ 224.0, 30.0, 63.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-27",
					"numoutlets" : 3,
					"patching_rect" : [ 527.0, 257.0, 73.0, 20.0 ],
					"mode" : 1,
					"presentation" : 1,
					"outlettype" : [ "int", "", "int" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"text" : "Init",
					"presentation_rect" : [ 9.0, 30.0, 43.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-28",
					"numoutlets" : 3,
					"patching_rect" : [ 527.0, 323.0, 43.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "", "int" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numoutlets" : 1,
					"patching_rect" : [ 57.0, 80.0, 193.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numinlets" : 2,
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numoutlets" : 1,
					"patching_rect" : [ 66.0, 98.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 0,
					"patching_rect" : [ 137.0, 365.0, 31.0, 31.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out 1",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numoutlets" : 1,
					"patching_rect" : [ 137.0, 332.0, 62.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numoutlets" : 1,
					"patching_rect" : [ 137.0, 160.0, 45.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midi_normalize[1]",
					"text" : "jcom.parameter midi_normalize @type msg_generic @range/clipmode none @description \"Choose whether data should be normalized to a 0.-1. range.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-8",
					"numoutlets" : 3,
					"patching_rect" : [ 527.0, 283.0, 391.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message midi_init @type msg_generic @range/clipmode none @description \"Initialization of midi devices\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-11",
					"numoutlets" : 3,
					"patching_rect" : [ 527.0, 346.0, 323.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "Device",
					"varname" : "device_menu",
					"items" : [ "IAC Driver IAC Bus 1", ",", "IAC Driver IAC Bus 2", ",", "IAC Driver IAC Bus 3", ",", "IAC Driver IAC Bus 4", ",", "to MaxMSP 1", ",", "to MaxMSP 2" ],
					"presentation_rect" : [ 61.0, 31.0, 149.0, 18.0 ],
					"numinlets" : 1,
					"fontname" : "Verdana",
					"types" : [  ],
					"id" : "obj-12",
					"numoutlets" : 3,
					"labelclick" : 1,
					"patching_rect" : [ 104.0, 29.0, 126.0, 18.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar device_menu",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-14",
					"numoutlets" : 1,
					"patching_rect" : [ 222.0, 359.0, 100.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "device_menu[1]",
					"text" : "jcom.parameter device_menu @type msg_symbol @range/clipmode none @description \"Choose which HI device to use\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-15",
					"numoutlets" : 3,
					"patching_rect" : [ 222.0, 381.0, 353.0, 30.0 ],
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numoutlets" : 1,
					"patching_rect" : [ 137.0, 214.0, 49.0, 18.0 ],
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
					"id" : "obj-17",
					"numoutlets" : 2,
					"patching_rect" : [ 137.0, 188.0, 91.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.midiin.maxpat",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-20",
					"numoutlets" : 2,
					"patching_rect" : [ 137.0, 304.0, 103.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.midiin @size 1U-half @module_type control @description \"Use any MIDI device\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"id" : "obj-21",
					"numoutlets" : 2,
					"patching_rect" : [ 16.0, 123.0, 271.0, 30.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-22",
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 80.0, 29.0, 29.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 178.0, 29.0, 29.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/Jamoma",
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"numinlets" : 1,
					"id" : "obj-26",
					"numoutlets" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.970939
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 66.5, 116.0, 25.5, 116.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 118.0, 25.5, 118.0 ]
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 231.5, 414.0, 215.0, 414.0, 215.0, 354.0, 231.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 218.5, 260.0, 146.5, 260.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 536.5, 315.0, 513.0, 315.0, 513.0, 252.0, 536.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
