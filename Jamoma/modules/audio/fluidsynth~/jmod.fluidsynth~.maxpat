{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 374.0, 227.0, 764.0, 449.0 ],
		"bglocked" : 0,
		"defrect" : [ 374.0, 227.0, 764.0, 449.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
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
					"text" : "jcom.meter_receive 2",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-51",
					"outlettype" : [ "" ],
					"fontsize" : 10.970939,
					"patching_rect" : [ 316.0, 410.0, 152.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.meter_receive 1",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"fontsize" : 10.970939,
					"patching_rect" : [ 316.0, 372.0, 152.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50",
					"presentation_rect" : [ 184.0, 10.0, 80.0, 4.0 ],
					"patching_rect" : [ 316.0, 440.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.meter~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-49",
					"presentation_rect" : [ 184.0, 5.0, 80.0, 4.0 ],
					"patching_rect" : [ 316.0, 402.0, 80.0, 4.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 52.0, 242.0, 49.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 52.0, 221.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in~",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 52.0, 199.0, 53.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midiin[1]",
					"text" : "jcom.message load @type msg_none @description \"Receive midi information\"",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 336.0, 337.0, 398.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "midiin",
					"text" : "jcom.message notein @type msg_int @description \"Receive midi information\"",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-7",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 336.0, 273.0, 396.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "reverb[1]",
					"text" : "jcom.parameter reverb @type msg_toggle @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 1 @range/clipmode both @description \"Turn on reverb.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 336.0, 129.0, 409.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "kslider",
					"varname" : "keyboard",
					"numinlets" : 2,
					"offset" : 60,
					"range" : 36,
					"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-10",
					"presentation_rect" : [ 102.0, 24.0, 189.0, 41.0 ],
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 336.0, 223.0, 189.0, 41.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "chorus[1]",
					"text" : "jcom.parameter chorus @type msg_toggle @ramp/drive scheduler @repetitions/allow 0 @range/bounds 0 1 @range/clipmode both @description \"Turn on chorus.\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-12",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 336.0, 63.0, 410.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "reverb",
					"jsarguments" : [ "reverb", "reverb" ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-13",
					"presentation_rect" : [ 52.0, 43.0, 33.0, 15.0 ],
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_texttoggle.js",
					"patching_rect" : [ 336.0, 109.0, 33.0, 15.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "chorus",
					"jsarguments" : [ "chorus", "chorus" ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-14",
					"presentation_rect" : [ 52.0, 27.0, 33.0, 15.0 ],
					"outlettype" : [ "", "" ],
					"filename" : "jcom.jsui_texttoggle.js",
					"patching_rect" : [ 336.0, 43.0, 33.0, 15.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"varname" : "load",
					"jsarguments" : [ "load" ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-15",
					"presentation_rect" : [ 10.0, 27.0, 25.0, 15.0 ],
					"outlettype" : [ "" ],
					"filename" : "jsui_textbutton.js",
					"patching_rect" : [ 336.0, 313.0, 25.0, 15.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 110.0, 94.0, 193.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.out~ 2",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"id" : "obj-17",
					"outlettype" : [ "signal", "signal", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 52.0, 302.0, 130.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 123.0, 111.0, 135.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.fluidsynth~ @module_type audio @description \"Synthesizer using soundfonts\"",
					"linecount" : 2,
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-19",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 16.0, 147.0, 270.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "command input",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontsize" : 9.873845,
					"patching_rect" : [ 30.0, 111.0, 86.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.0, 111.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"numinlets" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 250.0, 111.0, 37.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-23",
					"patching_rect" : [ 52.0, 332.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.fluidsynth~",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"id" : "obj-24",
					"outlettype" : [ "", "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 52.0, 276.0, 130.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-25",
					"patching_rect" : [ 16.0, 187.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-26",
					"patching_rect" : [ 112.0, 332.0, 13.0, 13.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "---signal outputs---",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"id" : "obj-27",
					"fontsize" : 9.873845,
					"patching_rect" : [ 52.0, 346.0, 105.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"numinlets" : 1,
					"prefix" : "audio",
					"numoutlets" : 1,
					"has_mute" : 1,
					"id" : "obj-28",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"outlettype" : [ "" ],
					"presentation" : 1,
					"has_gain" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 345.5, 159.0, 321.0, 159.0, 321.0, 105.0, 345.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 345.5, 93.0, 321.0, 93.0, 321.0, 39.0, 345.5, 39.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 119.5, 129.0, 25.5, 129.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 259.5, 134.0, 25.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 132.5, 132.0, 25.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 128.5, 268.0, 61.5, 268.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
