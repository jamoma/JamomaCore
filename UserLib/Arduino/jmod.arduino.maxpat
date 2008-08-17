{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 180.0, 300.0, 1004.0, 410.0 ],
		"bglocked" : 0,
		"defrect" : [ 180.0, 300.0, 1004.0, 410.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "updaterate [Hz]:",
					"id" : "obj-21",
					"frgb" : [ 0.933333, 0.937255, 0.968627, 1.0 ],
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 344.0, 104.0, 150.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"presentation_rect" : [ 39.0, 46.0, 80.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "audio[1]",
					"id" : "obj-12",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 381.0, 190.0, 33.0, 20.0 ],
					"texton" : "Spacenavigator (On)",
					"presentation" : 1,
					"text" : "Init",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 2.0, 24.0, 34.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"varname" : "audio",
					"id" : "obj-5",
					"fontsize" : 10.0,
					"mode" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 426.0, 187.0, 33.0, 20.0 ],
					"texton" : "On",
					"presentation" : 1,
					"text" : "Off",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 2.0, 47.0, 34.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-32",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 320.0, 251.0, 30.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Verdana",
					"presentation_rect" : [ 118.0, 46.0, 30.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[1]",
					"text" : "jcom.message update @type msg_none @description \"get data due to an external clock\"",
					"hidden" : 1,
					"id" : "obj-1",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 378.0, 287.0, 403.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "updaterate",
					"text" : "jcom.parameter updaterate @type msg_int @range/bounds 10 66 @range/clipmode both @description \"set the frequency how often Arduino delivers data\"",
					"linecount" : 2,
					"hidden" : 1,
					"id" : "obj-6",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 375.0, 244.0, 574.0, 27.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message init_serial @type msg_none @description \"Initialization of the serial port\"",
					"hidden" : 1,
					"id" : "obj-8",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 382.0, 215.0, 360.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "port_menu",
					"id" : "obj-11",
					"fontsize" : 10.0,
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 378.0, 50.0, 114.0, 19.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Verdana",
					"items" : [ "Z710i-Dial-upNetworking-2", ",", "Bluetooth-PDA-Sync", ",", "Z710i-SerialPort-1", ",", "Bluetooth-Modem" ],
					"presentation_rect" : [ 38.0, 23.0, 110.0, 19.0 ],
					"arrow" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "on",
					"text" : "jcom.parameter on @type msg_toggle @description \"Turn polling on\"",
					"hidden" : 1,
					"id" : "obj-14",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 463.0, 190.0, 320.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar port_menu2",
					"hidden" : 1,
					"id" : "obj-15",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 359.0, 88.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "menu",
					"text" : "jcom.parameter menu @type msg_menu @description \"Define the Arduino port\"",
					"hidden" : 1,
					"id" : "obj-16",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 381.0, 330.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-17",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 53.0, 107.0, 191.0, 15.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-18",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 209.0, 43.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-19",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 257.0, 45.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"id" : "obj-20",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 233.0, 78.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-22",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 189.0, 124.0, 31.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.arduino",
					"id" : "obj-23",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 314.0, 57.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.arduino @description \"An interface module for the I/O board Arduino\"",
					"id" : "obj-24",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 149.0, 347.0, 17.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-25",
					"numinlets" : 0,
					"patching_rect" : [ 20.0, 125.0, 13.0, 13.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-26",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 182.0, 13.0, 13.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-29",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 60.0, 124.0, 125.0, 15.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-31",
					"numinlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 145.0, 29.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 145.0, 29.5, 145.0 ]
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 198.5, 145.0, 29.5, 145.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 29.5, 414.0, 13.0, 414.0, 13.0, 354.0, 29.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 88.5, 305.0, 29.5, 305.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
