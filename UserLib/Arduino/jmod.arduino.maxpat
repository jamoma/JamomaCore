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
					"maxclass" : "number",
					"fontsize" : 10.0,
					"presentation_rect" : [ 116.0, 39.0, 28.0, 18.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-32",
					"patching_rect" : [ 320.0, 251.0, 28.0, 18.0 ],
					"presentation" : 1,
					"fontname" : "Arial",
					"triangle" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[1]",
					"text" : "jcom.message update @type msg_none @description \"get data due to an external clock\"",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-1",
					"hidden" : 1,
					"patching_rect" : [ 378.0, 287.0, 403.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "port_menu2",
					"fontsize" : 9.0,
					"presentation_rect" : [ 28.0, 19.0, 120.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-2",
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"pattrmode" : 1,
					"patching_rect" : [ 28.0, 20.0, 120.0, 17.0 ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"types" : [  ],
					"presentation" : 1,
					"textcolor2" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"bgcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"fontname" : "Verdana",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"hltcolor" : [ 0.098039, 0.098039, 0.098039, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"numinlets" : 1,
					"items" : [ "NilsPeters-1", ",", "Bluetooth-Modem", ",", "17thstar-Bluetooth-PDA--1", ",", "Bluetooth-PDA-Sync", ",", "Hi-1", ",", "Hi-2" ],
					"bgcolor2" : [ 0.196078, 0.196078, 0.196078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "updaterate [Hz]:",
					"fontsize" : 9.0,
					"presentation_rect" : [ 45.0, 39.0, 79.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"patching_rect" : [ 40.0, 40.0, 79.0, 17.0 ],
					"frgb" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"presentation" : 1,
					"fontname" : "Arial",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "sr",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"triscale" : 0.9,
					"outlettype" : [ "int", "bang" ],
					"id" : "obj-4",
					"patching_rect" : [ 205.0, 49.0, 79.0, 17.0 ],
					"minimum" : 10,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 0.709804, 0.709804, 0.709804, 1.0 ],
					"maximum" : 66,
					"triangle" : 0,
					"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "updaterate",
					"text" : "jcom.parameter updaterate @type msg_int @range/bounds 10 66 @range/clipmode both @description \"set the frequency how often Arduino delivers data\"",
					"linecount" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-6",
					"hidden" : 1,
					"patching_rect" : [ 375.0, 244.0, 574.0, 27.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ard_initi",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-7",
					"hidden" : 1,
					"patching_rect" : [ 369.0, 177.0, 73.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message init @type msg_none @description \"Initialization of the serial port\"",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-8",
					"hidden" : 1,
					"patching_rect" : [ 370.0, 197.0, 379.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ard_on",
					"presentation_rect" : [ 2.0, 39.0, 25.0, 16.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"jsarguments" : [ "off", "on", 68, 68, 68, 225, 225, 225, 121, 255, 15 ],
					"id" : "obj-9",
					"patching_rect" : [ 119.0, 2.0, 25.0, 16.0 ],
					"presentation" : 1,
					"filename" : "jcom.jsui_texttoggle.js",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "ard_initi",
					"presentation_rect" : [ 2.0, 20.0, 25.0, 16.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"jsarguments" : [ "init", 225, 225, 225, 68, 68, 68 ],
					"id" : "obj-10",
					"patching_rect" : [ 2.0, 20.0, 25.0, 16.0 ],
					"presentation" : 1,
					"filename" : "jsui_textbutton.js",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "port_menu",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"labelclick" : 1,
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-11",
					"patching_rect" : [ 378.0, 50.0, 114.0, 17.0 ],
					"types" : [  ],
					"fontname" : "Arial",
					"numinlets" : 1,
					"items" : [ "Z710i-Dial-upNetworking-2", ",", "Bluetooth-PDA-Sync", ",", "Z710i-SerialPort-1", ",", "Bluetooth-Modem" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar ard_on",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-13",
					"hidden" : 1,
					"patching_rect" : [ 373.0, 109.0, 65.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "on",
					"text" : "jcom.parameter on @type msg_toggle @description \"Turn polling on\"",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-14",
					"hidden" : 1,
					"patching_rect" : [ 373.0, 131.0, 320.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar port_menu2",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-15",
					"hidden" : 1,
					"patching_rect" : [ 20.0, 359.0, 88.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "menu",
					"text" : "jcom.parameter menu @type msg_menu @description \"Define the Arduino port\"",
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"id" : "obj-16",
					"hidden" : 1,
					"patching_rect" : [ 20.0, 381.0, 330.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"patching_rect" : [ 53.0, 107.0, 191.0, 15.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-18",
					"patching_rect" : [ 20.0, 209.0, 43.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-19",
					"patching_rect" : [ 20.0, 257.0, 45.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-20",
					"patching_rect" : [ 20.0, 233.0, 78.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-22",
					"patching_rect" : [ 189.0, 124.0, 31.0, 15.0 ],
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.arduino",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "clear" ],
					"id" : "obj-23",
					"patching_rect" : [ 20.0, 314.0, 57.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.arduino @description \"An interface module for the I/O board Arduino\"",
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-24",
					"patching_rect" : [ 20.0, 149.0, 347.0, 17.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-25",
					"patching_rect" : [ 20.0, 125.0, 13.0, 13.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"id" : "obj-26",
					"patching_rect" : [ 20.0, 182.0, 13.0, 13.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-29",
					"patching_rect" : [ 60.0, 124.0, 125.0, 15.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-31",
					"patching_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"presentation" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [ 382.5, 164.0, 369.0, 164.0, 369.0, 104.0, 382.5, 104.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
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
 ]
	}

}
